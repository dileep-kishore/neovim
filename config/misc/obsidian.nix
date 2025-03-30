{
  plugins.obsidian = {
    enable = true;
    settings = {
      disable_frontmatter = true;
      workspaces = [
        {
          name = "Ideaverse";
          path = "~/Documents/Ideaverse";
        }
      ];
      new_notes_location = "notes_subdir";
      notes_subdir = "+";
      preferred_link_style = "wiki";
      note_id_func = ''
        function(title)
          return title
        end
      '';
      daily_notes = {
        folder = "Calendar/Notes/Daily";
        date_format = "%Y-%m-%d";
        template = "Atlas/Utilities/Templates/Daily template.md";
      };
      templates = {
        folder = "Atlas/Utilities/Templates";
        date_format = "%Y-%m-%d";
        time_format = "%H:%M";
        substitutions = {};
      };
      completion = {
        min_chars = 2;
        nvim_cmp = false;
      };
      ui = {
        enable = false;
      };
      attachments = {
        img_folder = "Atlas/Utilities/Attachments";
      };
    };
  };
}
