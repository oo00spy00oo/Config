from rich import print
from rich.console import Console
import os
import subprocess

console = Console()

console.rule("update package from?")
console.print("0. [magenta]All[/]")
console.print("1. [magenta]Homebrew[/]")
console.print("2. [magenta]SDK Man[/]")
console.print("3. [magenta]Yarn[/]")
console.print("4. [magenta]NeoVim[/]")
console.print("5. [magenta]zinit[/]")
console.print("6. [magenta]nvm[/]")
console.print("7. [magenta]oh-my-tmux[/]")
console.print("8. [magenta]Prezto[/]")

def update_homebrew():
    console.print()
    console.print("updateing [bold red]Homebrew[/]...")
    os.system("./homebrew.sh")

def update_sdkman():
    console.print()
    console.print("updateing [bold red]SDK Man[/]...")
    sdkman_thread = subprocess.Popen(["sh", "update/sdkman.sh"])
    sdkman_thread.wait()

def update_yarn():
    console.print()
    console.print("updateing [bold red]Yarn[/] packages...")
    os.system("update/yarn.sh")

def update_neovim():
    console.print()
    console.print("updateing [bold red]NeoVim[/] plugins...")
    os.system("update/neovim.sh")

def update_zinit():
    console.print()
    console.print("updateing [bold red]zinit[/]...")
    os.system("update/zinit.sh")

def update_nvm():
    console.print()
    console.print("updateing [bold red]nvm[/]...")
    os.system("update/nvm.sh")

def update_tmux():
    console.print()
    console.print("updateing [bold red]oh-my-tmux[/]...")
    os.system("update/oh-my-tmux.sh")

def update_prezto():
    console.print()
    console.print("updateing [bold red]prezto[/]...")
    os.system("update/prezto.sh")

# def update_pip():
#     console.print()
    # console.print("updateing [bold red]pip[/] packages...")
    # os.system("update/pip.sh")

choice = console.input("What is your [bold red]choice[/]? :smiley: ")
console.print(f'You entered {choice}')
choice = int(choice)

if choice == 0:
    update_homebrew()
    update_sdkman()
    update_yarn()
    update_neovim()
    update_zinit()
    update_nvm()
    update_tmux()
    update_prezto()
elif choice == 1:
    update_homebrew()
elif choice == 2:
    update_sdkman()
elif choice == 3:
    update_yarn()
elif choice == 4:
    update_neovim()
elif choice == 5:
    update_zinit()
elif choice == 6:
    update_nvm()
elif choice == 7:
    update_tmux()
elif choice == 8:
    update_prezto()