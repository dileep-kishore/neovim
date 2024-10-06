{
  # FIXME: Disable until nvim-nio is pushed to nixpkgs
  plugins.dap = {
    enable = false;
    extensions = {
      dap-python = {
        enable = false;
      };
      dap-ui = {
        enable = false;
      };
      dap-virtual-text = {
        enable = false;
      };
    };
  };
  extraConfigLua = builtins.readFile ./dap.lua;
}
