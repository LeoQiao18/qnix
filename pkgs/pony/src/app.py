import os
from pathlib import Path
import subprocess
import click
from . import cachix
from . import dconf
from . import flake

QNIX_HOST = os.getenv('QNIX_HOST')
QNIX_PATH = str(Path.home() / "qnix")
EDITOR = os.environ.get("EDITOR", "vim")

@click.group("pony")
def pony():
    pass

@pony.command("edit")
def pony_edit():
    subprocess.run([EDITOR, QNIX_PATH])

@pony.command("switch")
def pony_switch():
    subprocess.run(["git", "add", "-A"])
    subprocess.run(["sudo", "nixos-rebuild", "switch", "--flake", f".#{QNIX_HOST}"])

cachix.setup(pony)
dconf.setup(pony)
flake.setup(pony)

def main():
    if not QNIX_HOST:
        click.echo("Environment variable QNIX_HOST is not set")
    elif not os.path.isdir(QNIX_PATH):
        click.echo(f"Qnix directory '{QNIX_PATH}' does not exist")
    else:
        os.chdir(QNIX_PATH)
        pony()
