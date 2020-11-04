import click
from libs.cmd.install import Install
from libs.cmd.update import Update
from libs.cmd.patch import Patch

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