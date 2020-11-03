from rich.console import Console
from rich.markdown import Markdown
import os
import subprocess
from libs.homebrew import Homebrew
from libs.pip import Pip
from libs.location import Location
from pathlib import Path

console = Console()
homebrew = Homebrew()
pip = Pip()
location = Location()

with open("README.md") as readme:
    markdown = Markdown(readme.read())
console.print(markdown)

console.rule("Install package from?")
console.print("0. [magenta]All[/]")
console.print("1. [magenta]Homebrew[/]")
console.print("2. [magenta]SDK Man[/]")
console.print("3. [magenta]Version Manager[/]")
console.print("4. [magenta]Kubernetes Plugins[/]")
console.print("5. [magenta]pip[/]")
console.print("6. [magenta]node[/]")

home = str(Path.home())
prefix_cmd = "cd $HOME/Config/scripts/install && "
install_location = home + "/" + location.INSTALL_LOCATION + "/"

def install_homebrew():
    console.print("Installing [bold red]CLI Tools[/] from [bold magenta]Homebrew[/]...")
    homebrew.exec_multiple(location.HOMEBREW_FORMULAE + location.CLI_FILE)
    homebrew.exec_multiple(location.HOMEBREW_CASK + location.CLI_FILE, True)

    console.print("Installing [bold red]DevOps Tools[/] from [bold magenta]Homebrew[/]...")
    homebrew.exec_multiple(location.HOMEBREW_FORMULAE + location.DEVOPS_TOOLS_FILE)
    homebrew.exec_multiple(location.HOMEBREW_CASK + location.DEVOPS_TOOLS_FILE, True)

    console.print("Installing [bold red]DevOps Tools[/] from [bold magenta]Homebrew[/]...")
    homebrew.exec_multiple(location.HOMEBREW_FORMULAE + location.DEVOPS_TOOLS_FILE)
    homebrew.exec_multiple(location.HOMEBREW_CASK + location.DEVOPS_TOOLS_FILE, True)

    console.print("Installing [bold red]Desktop Application[/] from [bold magenta]Homebrew[/]...")
    homebrew.exec_single(location.HOMEBREW_FORMULAE + location.DESKTOP_APPICATION_FILE)
    homebrew.exec_single(location.HOMEBREW_CASK + location.DESKTOP_APPICATION_FILE, True)

    console.print("Installing [bold red]Font[/] from [bold magenta]Homebrew[/]...")
    homebrew.tap("homebrew/cask-fonts")
    homebrew.exec_multiple(location.HOMEBREW_FORMULAE + location.FONT_FILE)
    homebrew.exec_multiple(location.HOMEBREW_CASK + location.FONT_FILE, True)

def install_sdkman():
    console.print()
    console.print("Installing [bold red]SDK Man[/]...")
    cmd = prefix_cmd + "sdkman.sh"
    os.system(cmd)
    # sdkman_thread = subprocess.Popen(["sh", "install/sdkman.sh"])
    # sdkman_thread.wait()

def install_version_manager():
    version_manager = "Version-Manager/"
    console.print("Installing [bold red]pyenv[/]...")
    os.system(install_location + version_manager + "pyenv.sh")
    console.print("Installing [bold red]rbenv[/]...")
    os.system(install_location + version_manager + "rbenv.sh")

def install_pip():
    console.print()
    console.print("Installing [bold red]pip[/] packages...")
    pip.exec_single(location.PIP + location.PIP_FILE)

def install_node():
    console.print()
    console.print("Installing [bold red]Node[/] packages...")
    cmd = prefix_cmd + "node.sh"
    os.system(cmd)

def install_kubernetes_plugins():
    console.print()
    console.print("Installing [bold red]Kubernetes Plugins[/]...")
    cmd = prefix_cmd + "kubernetes.sh"
    os.system(cmd)

choice = console.input("What is your [bold red]choice[/]? :smiley: ")
console.print(f'You entered {choice}')
choice = int(choice)

if choice == 0:
    install_homebrew()
    install_sdkman()
    install_version_manager()
    install_kubernetes_plugins()
    install_pip()
    install_node()
elif choice == 1:
    install_homebrew()
elif choice == 2:
    install_sdkman()
elif choice == 3:
    install_version_manager()
elif choice == 4:
    install_kubernetes_plugins()
elif choice == 5:
    install_pip()
elif choice == 6:
    install_node()