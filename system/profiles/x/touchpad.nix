{ ... }:
{
  services.xserver.libinput = {
    enable = true;
    touchpad = {
      # sendEventsMode = "disabled-on-external-mouse";
      scrollMethod = "twofinger";
      naturalScrolling = true;

      tapping = true;
      # tappingDragLock = false;
      # disableWhileTyping = true;
    };
  };
}
