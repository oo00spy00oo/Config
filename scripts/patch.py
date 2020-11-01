from rich import print
from rich.console import Console
import os
import subprocess

console = Console()

console.rule("patch package from?")
console.print("0. [magenta]All[/]")
console.print("1. [magenta]YouCompleteMe[/]")
console.print("2. [magenta]Nerd Font[/]")

prefix_cmd = "cd $HOME/Config/scripts/patch && "

def patch_youcompleteme():
    console.print()
    console.print("Patching [bold red]YouCompleteMe[/]...")
    cmd = prefix_cmd + "./YouCompleteMe.sh"
    os.system(cmd)

def patch_nerdfont():
    console.print()
    console.print("Patching [bold red]Nerd Font[/]...")
    cmd = prefix_cmd + "./nerd-font.sh"
    os.system(cmd)
    # sdkman_thread = subprocess.Popen(["sh", "patch/sdkman.sh"])
    # sdkman_thread.wait()

choice = console.input("What is your [bold red]choice[/]? :smiley: ")
console.print(f'You entered {choice}')
choice = int(choice)

if choice == 0:
    patch_youcompleteme()
    patch_nerdfont()
elif choice == 1:
    patch_youcompleteme()
elif choice == 2:
    patch_nerdfont()