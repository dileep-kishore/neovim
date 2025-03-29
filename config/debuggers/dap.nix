{
  plugins = {
    dap = {
      enable = true;
    };
    dap-python = {
      enable = true;
    };
    dap-ui = {
      enable = true;
    };
    dap-virtual-text = {
      enable = true;
    };
  };
  extraConfigLua = builtins.readFile ./dap.lua;
}
