{ suites, ... }: {
  imports = suites.core
    ++ suites.gnome
    ++ suites.guiApps
    ++ suites.dev;
}
