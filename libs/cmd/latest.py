from rich.console import Console
from libs.utils import Utils
from libs.command import Command
from libs.location import Location
from pathlib import Path
import requests

class Latest:
    def __init__(self):
        self.utils = Utils()
        self.command = Command()
        self.console = Console()
        self.location = Location()

    def run(self):
        home = str(Path.home())
        stream = self.utils.load_yaml(home + self.location.GITHUB + self.location.REPOSITORIES_FILE)
        for repo in stream:
            print()
            code = repo.get(self.command.CODE)
            self.console.print("Processing [bold red]" + code + "[/]...")
            r = requests.get('https://api.github.com/repos/' + code + "/releases/latest")
            response = r.json()

            self.console.print("[magenta]URL[/]: [bold red]" + response["html_url"] + "[/]")
            self.console.print("[magenta]Tag[/]: [bold red]" + response["tag_name"] + "[/]")
            self.console.print("[magenta]Publish date[/]: [bold red]" + response["published_at"] + "[/]")
            self.console.print("[magenta]Release name[/]: [bold red]" + response["name"] + "[/]")
            self.console.print("[magenta]Prerelease[/]: [bold red]" + str(response["prerelease"]) + "[/]")