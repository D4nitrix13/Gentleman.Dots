{ lib, ... }:
{
  home.activation.copyNvim = lib.hm.dag.entryAfter ["writeBoundary"] ''
    echo "Copying nvim configuration..."
    rm -rf "$HOME/.config/nvim"
    cp -r ${toString ./nvim} "$HOME/.config/nvim"
    chmod -R u+w "$HOME/.config/nvim"
  '';
}
