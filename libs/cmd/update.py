from rich.console import Console
import os
from libs.location import Location
from libs.utils import Utils
from libs.pip import Pip

class Update:
    def __init__(self):
        self.console = Console()
        self.location = Location()
        self.utils = Utils()

        self.prefix_cmd = "sh $HOME/" + self.location.UPDATE_LOCATION

    def homebrew(self):
        self.console.print()
        self.console.print("Updating [bold red]Homebrew[/]...")
        cmd = self.prefix_cmd + "homebrew.sh"
        os.system(cmd)

    def sdkman(self):
        self.console.print()
        self.console.print("Updating [bold red]SDK Man[/]...")
        cmd = self.prefix_cmd + "sdkman.sh"
        os.system(cmd)

    def yarn(self):
        self.console.print()
        self.console.print("Updating [bold red]Yarn[/] packages...")
        cmd = self.prefix_cmd + "yarn.sh"
        os.system(cmd)

    def neovim(self):
        self.console.print()
        self.console.print("Updating [bold red]NeoVim[/] plugins...")
        cmd = self.prefix_cmd + "neovim.sh"
        os.system(cmd)

    def zinit(self):
        self.console.print()
        self.console.print("Updating [bold red]zinit[/]...")
        cmd = self.prefix_cmd + "zinit.sh"
        os.system(cmd)

    def nvm(self):
        self.console.print()
        self.console.print("Updating [bold red]nvm[/]...")
        cmd = self.prefix_cmd + "nvm.sh"
        os.system(cmd)

    def tmux(self):
        self.console.print()
        self.console.print("Updating [bold red]oh-my-tmux[/]...")
        cmd = self.prefix_cmd + "oh-my-tmux.sh"
        os.system(cmd)

    def krew(self):
        self.console.print()
        self.console.print("Updating [bold red]krew[/]...")
        cmd = self.prefix_cmd + "krew.sh"
        os.system(cmd)

    def prezto(self):
        self.console.print()
        self.console.print("Updating [bold red]prezto[/]...")
        cmd = self.prefix_cmd + "prezto.sh"
        os.system(cmd)

    def flutter(self):
        self.console.print()
        self.console.print("Updating [bold red]Flutter[/]...")
        cmd = self.prefix_cmd + "flutter.sh"
        os.system(cmd)

    def pip(self):
        pip = Pip()

        self.console.print()
        self.console.print("Updating [bold red]pip[/] packages...")
        pip.exec_single(self.utils.absolute_location(self.location.PIP + self.location.PIP_FILE), True)

    def go(self):
        self.console.print()
        self.console.print("Updating [bold red]go[/] packages...")
        cmd = self.prefix_cmd + "go.sh"
        os.system(cmd)

    def run(self):
        tasks = {
            0: "All",
            1: "Homebrew",
            2: "SDK Man",
            3: "Yarn",
            4: "NeoVim",
            5: "zinit",
            6: "krew",
            7: "nvm",
            8: "oh-my-tmux",
            9: "Prezto",
            10: "Flutter",
            11: "pip",
        }

        self.console.rule("Update package from?")
        self.utils.tasks_print(tasks)

        choice = self.console.input("What is your [bold red]choice[/]? :smiley: ")
        self.console.print(f'You entered {choice}')
        choice = int(choice)

        if choice == 0:
            self.homebrew()
            self.sdkman()
            self.yarn()
            self.neovim()
            self.zinit()
            self.krew()
            self.nvm()
            self.tmux()
            self.prezto()
            self.flutter()
            self.pip()
            self.go()
        elif choice == 1:
            self.homebrew()
        elif choice == 2:
            self.sdkman()
        elif choice == 3:
            self.yarn()
        elif choice == 4:
            self.neovim()
        elif choice == 5:
            self.zinit()
        elif choice == 6:
            self.krew()
        elif choice == 7:
            self.nvm()
        elif choice == 8:
            self.tmux()
        elif choice == 9:
            self.prezto()
        elif choice == 10:
            self.flutter()
        elif choice == 11:
            self.pip()
        elif choice == 12:
            self.go()