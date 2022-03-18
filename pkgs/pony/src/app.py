import click
import subprocess
import os
from pathlib import Path

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
    subprocess.run(["sudo", "nixos-rebuild", "switch", "--flake", f".#{QNIX_HOST}"])

@pony.group("update")
def pony_update():
    pass

@pony_update.command("flake")
def pony_update_flake():
    subprocess.run(["sudo", "nix", "flake", "update"])

@pony_update.command("dconf")
def pony_update_dconf():
    os.chdir("./home/profiles/desktop/gnome")
    subprocess.run(["./save-settings.sh"])

def main():
    if not QNIX_HOST:
        click.echo("Environment variable QNIX_HOST is not set")
    elif not os.path.isdir(QNIX_PATH):
        click.echo(f"Qnix directory '{QNIX_PATH}' does not exist")
    else:
        os.chdir(QNIX_PATH)
        pony()
