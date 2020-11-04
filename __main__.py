import click
from libs.cmd.install import Install
from libs.cmd.update import Update
from libs.cmd.patch import Patch

@click.command()
@click.option("--count", default=1, help="Number of greetings.")
@click.option("--name", prompt="Your name", help="The person to greet.")
def hello(count, name):
    """Simple program that greets NAME for a total of COUNT times."""
    for _ in range(count):
        click.echo(f"Hello, {name}!")

@click.group()
def cli():
    pass

@click.command()
def install():
    install = Install()
    install.run()

@click.command()
def update():
    update = Update()
    update.run()

@click.command()
def patch():
    patch = Patch()
    patch.run()

cli.add_command(install)
cli.add_command(update)
cli.add_command(patch)

if __name__ == '__main__':
    cli()