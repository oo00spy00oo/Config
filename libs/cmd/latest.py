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

            self.console.print("[green]URL[/]: [bold magenta]" + response["html_url"] + "[/]")
            self.console.print("[green]Tag[/]: [bold magenta]" + response["tag_name"] + "[/]")
            self.console.print("[green]Publish date[/]: [bold magenta]" + response["published_at"] + "[/]")
            self.console.print("[green]Release name[/]: [bold magenta]" + response["name"] + "[/]")