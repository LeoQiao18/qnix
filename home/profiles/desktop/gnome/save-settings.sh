#!/usr/bin/env bash

dconf dump / > dconf.settings
dconf2nix -i dconf.settings -o dconf.nix
