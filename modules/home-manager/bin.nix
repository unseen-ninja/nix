{ ... }: {

  home.file.".local/bin/init" = {
    source = ../../bin/init;
    executable = true;
  };

}
