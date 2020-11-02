from rich.console import Console
from rich.markdown import Markdown
import os
import subprocess
from libs.homebrew import Homebrew
from libs.location import Location

console = Console()
homebrew = Homebrew()
location = Location()

with open("README.md") as readme:
    markdown = Markdown(readme.read())
console.print(markdown)

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

def install_others():
    # Git toolbelt
    console.print("Installing [bold red]Git toolbelt[/]...")
    os.system("brew tap nvie/tap")
    os.system("brew install nvie/tap/git-toolbelt")
    # Telepresence
    console.print("Installing [bold red]Telepresence[/]...")
    os.system("brew cask install osxfuse")
    os.system("brew install datawire/blackbird/telepresence")