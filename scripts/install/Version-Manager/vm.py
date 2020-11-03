from rich.console import Console
import os
import subprocess
from pathlib import Path
from install.libs.location import Location

console = Console()
location = Location()

console.rule("Install package from?")
console.print("0. [magenta]All[/]")
console.print("1. [magenta]pyenv[/]")
console.print("2. [magenta]rbenv[/]")
console.print("3. [magenta]sdkman[/]")
console.print("4. [magenta]Kubernetes Plugins[/]")
console.print("5. [magenta]pip[/]")
console.print("6. [magenta]node[/]")

home = str(Path.home())
install_location = home + "/" + location.INSTALL_LOCATION + "/"
version_manager = "Version-Manager/"

def pyenv():
    console.print()
    console.print("Installing [bold red]pyenv[/]...")
    os.system(install_location + version_manager + "pyenv.sh")


def rbenv():
    console.print()
    console.print("Installing [bold red]rbenv[/]...")
    os.system(install_location + version_manager + "rbenv.sh")

def sdkman():
    console.print()
    console.print("Installing [bold red]SDK Man[/]...")
    os.system(install_location + version_manager + "sdkman.sh")

choice = console.input("What is your [bold red]choice[/]? :smiley: ")
console.print(f'You entered {choice}')
choice = int(choice)

if choice == 0:
    pyenv()
    rbenv()
    sdkman()
elif choice == 1:
    pyenv()
elif choice == 2:
    rbenv()
elif choice == 3:
    sdkman()
