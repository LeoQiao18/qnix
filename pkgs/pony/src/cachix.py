import subprocess
import click

def setup(pony):
    @pony.group("cachix")
    def cachix():
        pass

    @cachix.command("use")
    @click.argument("cache")
    def cachix_use(cache):
        subprocess.run(["cachix", "use", cache, "-m" "nixos", "-d", "./system/profile/cachix"])

