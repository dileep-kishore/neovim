{
  plugins.image = {
    enable = true;
    settings = {
      backend = "kitty";
      editor_only_render_when_focused = true;
      max_width = 100;
      max_height = 25;
      max_height_window_percentage = 80;
      max_width_window_percentage = 80;
      window_overlap_clear_ft_ignore = ["cmp_menu" "cmp_docs"];
      integrations = {
        markdown = {
          enabled = true;
          clear_in_insert_mode = true;
          only_render_image_at_cursor = true;
        };
        neorg = {
          enabled = true;
          clear_in_insert_mode = true;
          only_render_image_at_cursor = true;
        };
        syslang = {
          enabled = true;
          clear_in_insert_mode = true;
          only_render_image_at_cursor = true;
        };
      };
    };
  };
}
