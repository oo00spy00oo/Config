from rich.console import Console
import os
import yaml

class Utils:

    def __init__(self):
        self.console = Console()

    def shell_command(self, prefix, package):
        cmd = prefix + " " + package
        os.system(cmd)

    def load_yaml(self, file):
        data = open(file, 'r', encoding="utf-8")
        return yaml.safe_load(data)

    def exec_single(self, cmd, package):
        self.shell_command(cmd, package)

    def exec_multiple(self, cmd, packages):
        self.shell_command(cmd, packages)

    def tasks_print(self, tasks):
        for task in tasks:
            self.console.print(str(task) + ". [magenta]" + tasks[task] + "[/]")