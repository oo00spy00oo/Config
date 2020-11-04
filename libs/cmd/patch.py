from rich import print
from rich.console import Console
from libs.location import Location
from libs.utils import Utils
import os

class Patch:
    def __init__(self):
        self.console = Console()
        self.location = Location()
        self.utils = Utils()

        self.prefix_cmd = "sh $HOME/" + self.location.PATCH_LOCATION

    def youcompleteme(self):
        self.console.print()
        self.console.print("Patching [bold red]YouCompleteMe[/]...")
        cmd = self.prefix_cmd + "YouCompleteMe.sh"
        os.system(cmd)

    def nerdfont(self):
        self.console.print()
        self.console.print("Patching [bold red]Nerd Font[/]...")
        cmd = self.prefix_cmd + "nerd-font.sh"
        os.system(cmd)

    def run(self):
        tasks = {
            0: "All",
            1: "YouCompleteMe",
            2: "Nerd Font"
        }

        self.console.rule("Patch package from?")
        self.utils.tasks_print(tasks)

        choice = self.console.input("What is your [bold red]choice[/]? :smiley: ")
        self.console.print(f'You entered {choice}')
        choice = int(choice)

        if choice == 0:
            self.youcompleteme()
            self.nerdfont()
        elif choice == 1:
            self.youcompleteme()
        elif choice == 2:
            self.nerdfont()