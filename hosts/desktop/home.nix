#
#  Home-manager configuration for desktop
#
#  flake.nix
#   ├─ ./hosts
#   │   └─ ./desktop
#   │       └─ ./home.nix
#   └─ ./modules
#       └─ ./desktop
#           └─ ./hyprland
#               └─ home.nix
#
{pkgs, ...}: {
  imports = [
    ../../modules/desktop/gnome/home.nix # Window Manager
  ];

  home = {
    # Specific packages for desktop
    packages = with pkgs; [
      # Applications

      # Dependencies

      # Imported in default or from modules
      #discord          # Comms           # See overlay default.nix
      #ffmpeg           # Video Support
      #gphoto2          # Digital Photography
      #steam            # Game Launcher

      # Packages I used in the past
      #darktable        # Raw Image Processing
      #gimp             # Graphical Editor
      #inkscape         # Vector Graphical Editor
      #kdenlive         # Video Editor
      #libreoffice      # Office Packages
      #shotcut          # Video Editor
    ];
  };

  services = {
    # Applets
    blueman-applet.enable = true; # Bluetooth
  };
}
