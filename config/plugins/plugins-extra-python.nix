{
  extraPython3Packages = pp:
    with pp; [
      jupyter-client
      pynvim
      pyperclip
      nbformat
    ];
}
