from rich.console import Console
import os
import yaml
from libs.command import Command

console = Console()
command = Command()

class Utils:

    def shell_command(self, prefix, package):
        cmd = prefix + " " + package
        os.system(cmd)

    def load_yaml(self, file):
        data = open(file, 'r', encoding="utf-8")
        return yaml.safe_load(data)

    def exec_single(self, cmd, file_name):
        stream = self.load_yaml(file_name)
        if stream is None:
            console.print("No packages found in " + "[bold red]" + file_name + "[/]" + "!")
            return
        for app in stream:
            print()
            console.print("Installing [bold red]" + app.get("name") + "[/]...")
            self.shell_command(cmd, app.get(command.CODE))

    def exec_multiple(self, cmd, file_name):
        oneline = ""
        stream = self.load_yaml(file_name)
        if stream is None:
            console.print("No packages found in " + "[bold red]" + file_name + "[/]" + "!")
            return
        for i in stream:
            oneline += " " + i.get(command.CODE)
        self.shell_command(cmd, oneline)
