#
#  Specific system configuration settings for desktop
#
#  flake.nix
#   ├─ ./hosts
#   │   └─ ./vm
#   │       ├─ default.nix *
#   │       └─ hardware-configuration.nix
#   └─ ./modules
#       └─ ./desktop
#           └─ ./bspwm
#               └─ bspwm.nix
#

{ config, pkgs, ... }:

{
  imports =  [                                  # For now, if applying to other system, swap files
    ./hardware-configuration.nix                # Current system hardware config @ /etc/nixos/hardware-configuration.nix
    # ../../modules/desktop/bspwm/default.nix     # Window Manager
  ];

  boot = {                                      # Boot options
    kernelPackages = pkgs.linuxPackages_latest;

    loader = {                                  # For legacy boot
      efi.canTouchEfiVariables = true;
      systemd-boot.enable = true;
    };
  };

  services = {
    # xserver = {                                 
    #   resolutions = [
    #     { x = 1920; y = 1080; }
    #     { x = 1600; y = 900; }
    #     { x = 3840; y = 2160; }
    #   ];
    # };
  };
}
