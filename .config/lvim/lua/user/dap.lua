lvim.builtin.dap.active = true

-- Debuggers Paths
local phpDebugPath =  '/.local/share/nvim/dapinstall/php/vscode-php-debug/out/phpDebug.js'

-- Configs
lvim.builtin.dap.on_config_done = function(dap)
  dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { os.getenv("HOME") .. phpDebugPath },
  }

  dap.configurations.php = {
    {
      name = "Listen for XDebug (docker)",
      type = "php",
      request = "launch",
      port = 9003,
      pathMappings = {
          ['/app'] = "${workspaceFolder}"
      }
    },
  }
end

