set shell := ["bash", "-c"]

rebuild:
  sudo nixos-rebuild switch --flake ./#default |& nom
