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

prefix_cmd = "cd $HOME/Config/scripts/update && "

def update_homebrew():
    console.print()
    console.print("updateing [bold red]Homebrew[/]...")
    cmd = prefix_cmd + "homebrew.sh"
    os.system(cmd)

def update_sdkman():
    console.print()
    console.print("updateing [bold red]SDK Man[/]...")
    cmd = prefix_cmd + "sdkman.sh"
    os.system(cmd)

def update_yarn():
    console.print()
    console.print("updateing [bold red]Yarn[/] packages...")
    cmd = prefix_cmd + "yarn.sh"
    os.system(cmd)

def update_neovim():
    console.print()
    console.print("updateing [bold red]NeoVim[/] plugins...")
    cmd = prefix_cmd + "neovim.sh"
    os.system(cmd)

def update_zinit():
    console.print()
    console.print("updateing [bold red]zinit[/]...")
    cmd = prefix_cmd + "zinit.sh"
    os.system(cmd)

def update_nvm():
    console.print()
    console.print("updateing [bold red]nvm[/]...")
    cmd = prefix_cmd + "nvm.sh"
    os.system(cmd)

def update_tmux():
    console.print()
    console.print("updateing [bold red]oh-my-tmux[/]...")
    cmd = prefix_cmd + "oh-my-tmux.sh"
    os.system(cmd)

def update_prezto():
    console.print()
    console.print("updateing [bold red]prezto[/]...")
    cmd = prefix_cmd + "prezto.sh"
    os.system(cmd)

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