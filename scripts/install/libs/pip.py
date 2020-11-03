from rich.console import Console
from libs.utils import Utils
from libs.command import Command

utils = Utils()
command = Command()
console = Console()

class Pip:

    def exec_single(self, file_name, is_upgrade=False):
        stream = utils.load_yaml(file_name)
        if stream is None:
            console.print("No packages found in [bold red]" + file_name + "[/]" + "!")
            return
        for app in stream:
            print()
            package = app.get(command.CODE)

            if is_upgrade:
                utils.exec_single(command.PIP_UPGRADE_CMD, package)
            else:
                utils.exec_single(command.PIP_CMD, package)
