{ ... }: { home.file.".config/aerospace/aerospace.toml".text = ''

  # General config
  # --------------

  # Start AeroSpace at login
  start-at-login = true

  # Normalization settings
  enable-normalization-flatten-containers = true
  enable-normalization-opposite-orientation-for-nested-containers = true


  [gaps]
  inner.horizontal = 16
  inner.vertical   = 16
  outer.left       = 16
  outer.bottom     = 16
  outer.top        = 16
  outer.right      = 16





  # Global Key Bindings
  # -------------------

  [key-mapping]
  preset = 'qwerty'


  [mode.main.binding]

  # Focus movement
  cmd-ctrl-h = 'focus left'
  cmd-ctrl-j = 'focus down'
  cmd-ctrl-k = 'focus up'
  cmd-ctrl-l = 'focus right'

  # Window movement
  cmd-ctrl-shift-h = 'move left'
  cmd-ctrl-shift-j = 'move down'
  cmd-ctrl-shift-k = 'move up'
  cmd-ctrl-shift-l = 'move right'

  # Workspace navigation
  alt-tab = 'workspace-back-and-forth'



  # Mode Bindings
  # -------------

  # Enter layout mode
  cmd-ctrl-period = 'mode layout'

  # Enter workspace mode
  cmd-ctrl-s = 'mode workspace'

  # Enter service mode
  cmd-ctrl-comma = 'mode service'

  # Enter Nightlight mode
  cmd-ctrl-n = 'mode nightlight'



  # Layout Mode
  # --------------
  [mode.layout.binding]

  # Close Mode
  esc = 'mode main'

  # Layouts / Window Handling
  t = 'layout tiles horizontal vertical'
  a = 'layout accordion horizontal vertical'

  # Resize Row/Column
  left = 'resize smart -50'
  right = 'resize smart +50'

  # Reset layout
  r = ['flatten-workspace-tree', 'mode main']

  # Toggle floating/tiling layout
  f = ['layout floating tiling', 'mode main']



  # Workspace Mode
  # --------------
  [mode.workspace.binding]

  # Workspace management
  1 = ['workspace 1', 'mode main']
  2 = ['workspace 2', 'mode main']
  3 = ['workspace 3', 'mode main']
  4 = ['workspace 4', 'mode main']
  5 = ['workspace 5', 'mode main']
  6 = ['workspace 6', 'mode main']
  7 = ['workspace 7', 'mode main']
  8 = ['workspace 8', 'mode main']
  9 = ['workspace 9', 'mode main']

  # Move windows to workspaces
  shift-1 = ['move-node-to-workspace 1', 'mode main']
  shift-2 = ['move-node-to-workspace 2', 'mode main']
  shift-3 = ['move-node-to-workspace 3', 'mode main']
  shift-4 = ['move-node-to-workspace 4', 'mode main']
  shift-5 = ['move-node-to-workspace 5', 'mode main']
  shift-6 = ['move-node-to-workspace 6', 'mode main']
  shift-7 = ['move-node-to-workspace 7', 'mode main']
  shift-8 = ['move-node-to-workspace 8', 'mode main']
  shift-9 = ['move-node-to-workspace 9', 'mode main']



  # Service Mode
  # ------------
  [mode.service.binding]

  # Reload config and exit service mode
  esc = ['reload-config', 'mode main']

  # Close all windows but current
  backspace = ['close-all-windows-but-current', 'mode main']



  # Nightlight Mode
  # ---------------
  [mode.nightlight.binding]

  esc = 'mode main'
  n = ['exec-and-forget nightlight toggle', 'mode main']
  1 = 'exec-and-forget nightlight temp 10'
  2 = 'exec-and-forget nightlight temp 20'
  3 = 'exec-and-forget nightlight temp 30'
  4 = 'exec-and-forget nightlight temp 40'
  5 = 'exec-and-forget nightlight temp 50'
  6 = 'exec-and-forget nightlight temp 60'
  7 = 'exec-and-forget nightlight temp 70'
  8 = 'exec-and-forget nightlight temp 80'
  9 = 'exec-and-forget nightlight temp 90'
  0 = 'exec-and-forget nightlight temp 100'





  # Window Rules
  # ------------

  # Telegram
  [[on-window-detected]]
  if.app-id = 'com.tdesktop.Telegram'
  run = 'move-node-to-workspace 9'

  # Vesktop (Discord)
  [[on-window-detected]]
  if.app-id = 'dev.vencord.vesktop'
  run = 'move-node-to-workspace 9'

'';}
