import os
import subprocess

def setup(pony):
    @pony.group("dconf")
    def dconf():
        pass

    @dconf.command("update")
    def dconf_update():
        os.chdir("./home/profiles/desktop/gnome")
        subprocess.run(["./save-settings.sh"])

