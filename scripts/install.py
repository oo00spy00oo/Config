from rich import print
from rich.console import Console
import os
import subprocess

console = Console()

console.rule("Install package from?")
console.print("0. [magenta]All[/]")
console.print("1. [magenta]Homebrew[/]")
console.print("2. [magenta]SDK Man[/]")
console.print("3. [magenta]pip[/]")
console.print("4. [magenta]node[/]")
console.print("4. [magenta]Kubernetes Plugins[/]")

def install_homebrew():
    console.print()
    console.print("Installing [bold red]Homebrew[/]...")
    os.system("cd install && python homebrew.py")

def install_sdkman():
    console.print()
    console.print("Installing [bold red]SDK Man[/]...")
    sdkman_thread = subprocess.Popen(["sh", "install/sdkman.sh"])
    sdkman_thread.wait()

def install_pip():
    console.print()
    console.print("Installing [bold red]pip[/] packages...")
    os.system("install/pip.sh")

def install_node():
    console.print()
    console.print("Installing [bold red]Node[/] packages...")
    os.system("install/node.sh")

def install_kubernetes_plugins():
    console.print()
    console.print("Installing [bold red]Kubernetes Plugins[/]...")
    os.system("install/kubernetes.sh")

choice = console.input("What is your [bold red]choice[/]? :smiley: ")
console.print(f'You entered {choice}')
choice = int(choice)

if choice == 0:
    install_homebrew()
    install_sdkman()
    install_pip()
    install_node()
    install_kubernetes_plugins()
elif choice == 1:
    install_homebrew()
elif choice == 2:
    install_sdkman()
elif choice == 3:
    install_pip()
elif choice == 4:
    install_node()
elif choice == 5:
    install_kubernetes_plugins()