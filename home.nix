{ config, lib, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "jhilker";
  home.homeDirectory = "/home/jhilker";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.sessionVariables = {
    EDITOR="nvim";
  };

  home.packages = with pkgs; [
      rofi
      dunst
      alacritty
      firefox
      neovim
      emacs
      hugo
      pass
      gnupg
  ];

  programs.zsh.enable = true;

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    settings = {
      add_newline = false;
      line_break = {
	disabled = true;
      };
    };
  };


  xsession = {
    enable = true;
  };
  
  services.gpg-agent.enable = true;

  programs.git = {
    enable = true;
    userName = "Jacob Hilker";
    userEmail = "jacob.hilker2@gmail.com";
    signing = {
      key = "jacob.hilker2@gmail.com";
      signByDefault = true;
    };

  };

}
