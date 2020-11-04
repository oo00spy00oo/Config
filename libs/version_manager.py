from rich.console import Console
import os
from pathlib import Path
from libs.location import Location

class VersionManager:
    def __init__(self):
        self.console = Console()
        self.location = Location()

        self.home = str(Path.home())
        self.version_manager_loc = "sh $HOME/zsh-config/groups/Version-Manager/"

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

    def run(self):
        self.console.rule("Install package from?")
        self.console.print("0. [magenta]All[/]")
        self.console.print("1. [magenta]pyenv[/]")
        self.console.print("2. [magenta]rbenv[/]")
        self.console.print("3. [magenta]sdkman[/]")

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