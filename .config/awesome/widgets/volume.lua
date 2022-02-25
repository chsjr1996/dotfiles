local awful  = require("awful")
local spawn  = require("awful.spawn")
local faicon = require("themes.default.faicon")
local notify = require("utils.notify")

local getCurrentVolume = os.getenv("HOME") .. '/.scripts/get_current_volume.sh'
local getIsMuted       = "pactl get-sink-mute @DEFAULT_SINK@ | awk '/yes/ {print $2; exit}'"
local setCurrentVolume = 'pactl set-sink-volume @DEFAULT_SINK@ '
local toggleMute       = 'pactl set-sink-mute @DEFAULT_SINK@ toggle'
local mixerApp         = 'pavucontrol'
local current_volume   = tonumber(spawn.with_shell(getCurrentVolume))
local max_volume       = 150
local step             = '5'

local function volume_change(action)
  if current_volume <= max_volume or action == '-' then
    spawn.with_shell(setCurrentVolume .. action .. step .. '%')
  end

  spawn.easy_async(getCurrentVolume,
    function(stdout)
      current_volume = tonumber(stdout)
      notify("Volume", stdout)
    end
  )
end

local function toggle_mute()
  spawn.with_shell(toggleMute)
end

local function open_mixer()
  spawn.with_shell(mixerApp)
end

local function volume()
    return awful.widget.watch(getIsMuted, 3, function (widget, stdout)
        if string.find(stdout, 'yes') then
          widget:set_markup_silently(faicon.fa_markup('\u{f6a9}', '#FFFFFF'))
        else
          widget:set_markup_silently(faicon.fa_markup('\u{f028}', '#FFFFFF'))
        end

        widget:buttons(
          awful.util.table.join(
            awful.button({}, 1, function () toggle_mute() end),
            awful.button({}, 3, function () open_mixer() end),
            awful.button({}, 4, function() volume_change("+") end),
            awful.button({}, 5, function() volume_change("-") end)
          )
        )
    end, faicon.fa_widget())
end

return volume

