from rich.console import Console
from libs.utils import Utils
from libs.command import Command

utils = Utils()
command = Command()
console = Console()

class Node:

    def yarn(self, file_name):
        stream = utils.load_yaml(file_name)
        if stream is None:
            console.print("No packages found in [bold red]" + file_name + "[/]" + "!")
            return
        for app in stream:
            print()
            package = app.get(command.CODE)

            utils.exec_single(command.YARN_CMD, package)
