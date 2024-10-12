{
  extraPython3Packages = pp:
    with pp; [
      # NOTE: Error with molten could be avoided using pks.python312Packages?
      jupyter-client
      pynvim
      pyperclip
      nbformat
    ];
}
