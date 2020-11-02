from rich.console import Console
from libs.utils import Utils
from libs.command import Command

utils = Utils()
command = Command()
console = Console()

class Homebrew:

    def exec_single(self, file_name, is_cask=False):
        stream = utils.load_yaml(file_name)
        if stream is None:
            console.print("No packages found in [bold red]" + file_name + "[/]" + "!")
            return
        for app in stream:
            print()
            console.print("Installing [bold red]" + app.get("name") + "[/]...")
            package = app.get(command.CODE)
            tap = app.get(command.TAP)
            depends = app.get(command.DEPENDS)

            if tap is not None:
                self.tap(tap)
            if depends is not None:
                self.handle_depends(depends)

            if is_cask:
                utils.exec_single(command.BREW_CASK_CMD, package)
            else:
                utils.exec_single(command.BREW_CMD, package)

    def exec_multiple(self, file_name, is_cask=False):
        oneline = ""
        stream = utils.load_yaml(file_name)
        if stream is None:
            console.print("No packages found in [bold red]" + file_name + "[/]" + "!")
            return
        for app in stream:
            package = app.get(command.CODE)
            tap = app.get(command.TAP)
            depends = app.get(command.DEPENDS)

            if tap is not None:
                self.tap(tap)
            if depends is not None:
                self.handle_depends(depends)

            oneline += " " + package

        if is_cask:
            utils.exec_multiple(command.BREW_CASK_CMD, oneline)
        else:
            utils.exec_multiple(command.BREW_CMD, oneline)

    def handle_depends(self, depends):
        for depend in depends:
            if depend.get(command.FOMULAE) is not None:
                self.formulae(depend.get(command.FOMULAE))
            if depend.get(command.CASK) is not None:
                self.cask(depend.get(command.CASK))

    def tap(self, package):
        utils.exec_single(command.BREW_TAP_CMD, package)

    def formulae(self, package):
        utils.exec_single(command.BREW_CMD, package)

    def cask(self, package):
        utils.exec_single(command.BREW_CASK_CMD, package)