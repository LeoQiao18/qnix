import subprocess

def setup(pony):
    @pony.group("flake")
    def flake():
        pass

    @flake.command("update")
    def flake_update():
        subprocess.run(["sudo", "nix", "flake", "update"])

