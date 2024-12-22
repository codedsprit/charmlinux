{ pkgs, ... }: {
    programs.tmux = {
        enable = true;
        terminal = "tmux-256color";
        historyLimit = 500;
        baseIndex = 1;
        resizeAmount = 15;
        keyMode = "vi";
        shortcut = "Space";
        plugins = [
            {
                plugin = pkgs.tmuxPlugins.dracula;
                extraConfig = "set -g @catppuccin_flavor 'mocha'";

            }
            {
                plugin = pkgs.tmuxPlugins.sidebar;
                extraConfig = "set -g @sidebar-tree-command 'tree -C'";
            }
        ];
        extraConfig = ''
            set -g mouse on
            set -g renumber-windows on
            
            bind-key "|" split-window -h -c "#{pane_current_path}"
            bind-key "\\" split-window -fh -c "#{pane_current_path}"

            bind-key "-" split-window -v -c "#{pane_current_path}"
            bind-key "_" split-window -fv -c "#{pane_current_path}"

            bind-key "X" kill-session
        '';
    };
}
