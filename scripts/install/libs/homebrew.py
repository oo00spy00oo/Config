from rich.console import Console
from libs.utils import Utils
from libs.command import Command

utils = Utils()
command = Command()
console = Console()

class Homebrew:

    def exec_single(self, file_name, is_cask=False):
        if is_cask:
            utils.exec_single(command.BREW_CASK_CMD, file_name)
        else:
            utils.exec_single(command.BREW_CMD, file_name)

    def exec_multiple(self, file_name, is_cask=False):
        if is_cask:
            utils.exec_multiple(command.BREW_CASK_CMD, file_name)
        else:
            utils.exec_multiple(command.BREW_CMD, file_name)

    def tap(self, tap):
        utils.shell_command(command.BREW_TAP_CMD, tap)