from rich.console import Console
import os
from pathlib import Path
from libs.location import Location
from libs.utils import Utils

class VersionManager:
    def __init__(self):
        self.console = Console()
        self.location = Location()
        self.utils = Utils()

        self.home = str(Path.home())
        self.version_manager_loc = "sh $HOME/.config/zsh-config/groups/Version-Manager/"

    def pyenv(self):
        self.console.print()
        self.console.print("Installing [bold red]pyenv[/]...")
        os.system(self.version_manager_loc + "pyenv.sh")


    def rbenv(self):
        self.console.print()
        self.console.print("Installing [bold red]rbenv[/]...")
        os.system(self.version_manager_loc + "rbenv.sh")

    def sdkman(self):
        self.console.print()
        self.console.print("Installing [bold red]SDK Man[/]...")
        os.system(self.version_manager_loc + "sdkman.sh")

    def gvm(self):
        self.console.print()
        self.console.print("Installing [bold red]gvm[/]...")
        os.system(self.version_manager_loc + "gvm.sh")

    def run(self):
        tasks = {
            0: "All",
            1: "pyenv",
            2: "rbenv",
            3: "sdkman",
            4: "gvm",
        }

        self.console.rule("Install package from?")
        self.utils.tasks_print(tasks)

        choice = self.console.input("What is your [bold red]choice[/]? :smiley: ")
        self.console.print(f'You entered {choice}')
        choice = int(choice)

        if choice == 0:
            self.pyenv()
            self.rbenv()
            self.sdkman()
        elif choice == 1:
            self.pyenv()
        elif choice == 2:
            self.rbenv()
        elif choice == 3:
            self.sdkman()
        elif choice == 4:
            self.gvm()