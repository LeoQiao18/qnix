# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/shell/extensions/";
      saved-view = "/org/gnome/shell/extensions/";
      show-warning = false;
      window-height = 1024;
      window-is-maximized = true;
      window-width = 1912;
    };

    "org/gnome/Music" = {
      window-maximized = true;
      window-position = [ 0 44 ];
      window-size = [ 1920 1156 ];
    };

    "org/gnome/calendar" = {
      active-view = "month";
      window-maximized = true;
      window-position = mkTuple [ 0 44 ];
      window-size = mkTuple [ 1920 1156 ];
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/lqiao/.background-image";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/calendar" = {
      show-weekdate = false;
    };

    "org/gnome/desktop/input-sources" = {
      per-window = false;
      sources = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "xkb" "cn" ]) ];
      xkb-options = [ "ctrl:nocaps" ];
    };

    "org/gnome/desktop/interface" = {
      clock-show-seconds = true;
      clock-show-weekday = true;
      enable-hot-corners = false;
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      gtk-im-module = "gtk-im-context-simple";
      gtk-theme = "Orchis-pink-light";
      icon-theme = "Tela-pink";
      show-battery-percentage = true;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "gnome-power-panel" "slack" "zoom" "spotify" ];
    };

    "org/gnome/desktop/notifications/application/alacritty" = {
      application-id = "Alacritty.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-epiphany" = {
      application-id = "org.gnome.Epiphany.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-extensions" = {
      application-id = "org.gnome.Extensions.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-gedit" = {
      application-id = "org.gnome.gedit.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-shell-extensions" = {
      application-id = "org.gnome.Shell.Extensions.desktop";
    };

    "org/gnome/desktop/notifications/application/slack" = {
      application-id = "slack.desktop";
    };

    "org/gnome/desktop/notifications/application/spotify" = {
      application-id = "spotify.desktop";
    };

    "org/gnome/desktop/notifications/application/zoom" = {
      application-id = "Zoom.desktop";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      disable-microphone = false;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/lqiao/.background-image";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 300;
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Alt>F4" "<Super>BackSpace" ];
      minimize = [];
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,close";
    };

    "org/gnome/epiphany/state" = {
      is-maximized = false;
      window-position = mkTuple [ (-1) (-1) ];
      window-size = mkTuple [ 1024 768 ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
      network-monitor-gio-name = "";
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 250;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 600;
    };

    "org/gnome/gedit/plugins" = {
      active-plugins = [ "sort" "openlinks" "filebrowser" "docinfo" "modelines" "spell" ];
    };

    "org/gnome/gedit/plugins/filebrowser" = {
      root = "file:///";
      tree-view = true;
      virtual-root = "file:///home/lqiao/qnix/home/profiles/editors/neovim";
    };

    "org/gnome/gedit/preferences/ui" = {
      show-tabs-mode = "auto";
    };

    "org/gnome/gedit/state/window" = {
      bottom-panel-size = 140;
      side-panel-active-page = "GeditWindowDocumentsPanel";
      side-panel-size = 200;
      size = mkTuple [ 900 700 ];
      state = 87168;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "disks";
      maximized = false;
      network-total-in-bits = false;
      show-dependencies = false;
      show-whose-processes = "user";
      window-state = mkTuple [ 700 500 ];
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-0-visible = true;
      col-0-width = 449;
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/mutter" = {
      dynamic-workspaces = true;
      edge-tiling = true;
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 890 550 ];
      maximized = false;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      screensaver = [];
    };

    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-type = "suspend";
      sleep-inactive-battery-type = "suspend";
    };

    "org/gnome/shell" = {
      app-picker-layout = "[{'org.gnome.Contacts.desktop': <{'position': <0>}>, 'org.gnome.Weather.desktop': <{'position': <1>}>, 'org.gnome.clocks.desktop': <{'position': <2>}>, 'org.gnome.Maps.desktop': <{'position': <3>}>, 'org.gnome.Totem.desktop': <{'position': <4>}>, 'org.gnome.Calculator.desktop': <{'position': <5>}>, 'org.gnome.gedit.desktop': <{'position': <6>}>, 'simple-scan.desktop': <{'position': <7>}>, 'gnome-control-center.desktop': <{'position': <8>}>, 'gnome-system-monitor.desktop': <{'position': <9>}>, 'org.gnome.Terminal.desktop': <{'position': <10>}>, 'org.gnome.Characters.desktop': <{'position': <11>}>, 'org.gnome.FileRoller.desktop': <{'position': <12>}>, 'yelp.desktop': <{'position': <13>}>, 'org.gnome.Screenshot.desktop': <{'position': <14>}>, 'org.gnome.Connections.desktop': <{'position': <15>}>, 'org.gnome.Cheese.desktop': <{'position': <16>}>, 'ca.desrt.dconf-editor.desktop': <{'position': <17>}>, 'org.gnome.font-viewer.desktop': <{'position': <18>}>, 'discord.desktop': <{'position': <19>}>, 'org.gnome.baobab.desktop': <{'position': <20>}>, 'Alacritty.desktop': <{'position': <21>}>, 'org.gnome.DiskUtility.desktop': <{'position': <22>}>}, {'org.gnome.Evince.desktop': <{'position': <0>}>, 'org.gnome.Extensions.desktop': <{'position': <1>}>, 'firefox.desktop': <{'position': <2>}>, 'htop.desktop': <{'position': <3>}>, 'org.gnome.eog.desktop': <{'position': <4>}>, 'org.gnome.Logs.desktop': <{'position': <5>}>, 'cups.desktop': <{'position': <6>}>, 'nixos-manual.desktop': <{'position': <7>}>, 'org.gnome.seahorse.Application.desktop': <{'position': <8>}>, 'pavucontrol.desktop': <{'position': <9>}>, 'org.gnome.Tour.desktop': <{'position': <10>}>, 'org.gnome.tweaks.desktop': <{'position': <11>}>, 'vlc.desktop': <{'position': <12>}>, 'nvim.desktop': <{'position': <13>}>, 'xterm.desktop': <{'position': <14>}>, 'Zoom.desktop': <{'position': <15>}>}]";
      disable-user-extensions = false;
      disabled-extensions = [ "apps-menu@gnome-shell-extensions.gcampax.github.com" "places-menu@gnome-shell-extensions.gcampax.github.com" "screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com" "window-list@gnome-shell-extensions.gcampax.github.com" "windowsNavigator@gnome-shell-extensions.gcampax.github.com" "drive-menu@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "dash-to-dock@micxgx.gmail.com" "appindicatorsupport@rgcjonas.gmail.com" "Vitals@CoreCoding.com" "clipboard-history@alexsaveau.dev" "caffeine@patapon.info" "gTile@vibou" "focus-changer@heartmire" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "org.gnome.Calendar.desktop" "chromium-browser.desktop" "spotify.desktop" "slack.desktop" "Alacritty.desktop" ];
      had-bluetooth-devices-setup = true;
      welcome-dialog-last-shown-version = "41.4";
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      background-opacity = 0.8;
      dash-max-icon-size = 48;
      dock-fixed = false;
      dock-position = "BOTTOM";
      height-fraction = 0.9;
      intellihide = false;
      intellihide-mode = "FOCUS_APPLICATION_WINDOWS";
      multi-monitor = true;
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "Orchis-pink-light";
    };

    "org/gnome/shell/extensions/vitals" = {
      hide-icons = true;
      hot-sensors = [ "_memory_usage_" "_system_load_1m_" ];
      show-storage = true;
      storage-path = "/";
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 1.0 0.964706 ]) (mkTuple [ 0.705882 0.654902 ]) (mkTuple [ 0.968627 0.635294 ]) (mkTuple [ 6.6667e-2 0.780392 ]) (mkTuple [ 0.92549 0.368627 ]) ];
      selected-color = mkTuple [ true 1.0 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 157;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 276 138 ];
      window-size = mkTuple [ 1369 902 ];
    };

  };
}
