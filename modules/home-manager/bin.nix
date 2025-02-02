{ ... }: {

  home.file.".local/bin/init" = {
    source = ../../bin/init.sh;
    executable = true;
  };

  home.file.".local/bin/rainfall" = {
    source = ../../bin/rainfall.py;
    executable = true;
  };

}
