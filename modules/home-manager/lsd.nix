{ ... }: {

  home.file = {

    ".config/lsd/config.yaml".text = ''
      blocks:
        - permission
        - size
        - name
      color:
        theme: custom
    '';


    ".config/lsd/colors.yaml".text = ''
      user: "#ca9ee6"
      group: "#babbf1"
      permission:
        read: "#a6d189"
        write: "#e5c890"
        exec: "#ea999c"
        exec-sticky: "#ca9ee6"
        no-access: "#a5adce"
        octal: "#81c8be"
        acl: "#81c8be"
        context: "#99d1db"
      date:
        hour-old: "#81c8be"
        day-old: "#99d1db"
        older: "#85c1dc"
      size:
        none: "#a5adce"
        small: "#a6d189"
        medium: "#e5c890"
        large: "#ef9f76"
      inode:
        valid: "#f4b8e4"
        invalid: "#a5adce"
      links:
        valid: "#f4b8e4"
        invalid: "#a5adce"
      tree-edge: "#b5bfe2"
      git-status:
        default: "#c6d0f5"
        unmodified: "#a5adce"
        ignored: "#a5adce"
        new-in-index: "#a6d189"
        new-in-workdir: "#a6d189"
        typechange: "#e5c890"
        deleted: "#e78284"
        renamed: "#a6d189"
        modified: "#e5c890"
        conflicted: "#e78284"
    '';

  };

}
