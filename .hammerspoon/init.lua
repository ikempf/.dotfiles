hs.hotkey.bind({"ctrl", "cmd"}, "pad1", function()
  focusScreen(1)
end)

hs.hotkey.bind({"ctrl", "cmd"}, '1', function()
  focusScreen(1)
end)

hs.hotkey.bind({"ctrl", "cmd"}, "pad2", function()
  focusScreen(3)
end)

hs.hotkey.bind({"ctrl", "cmd"}, '2', function()
  focusScreen(3)
end)

hs.hotkey.bind({"ctrl", "cmd"}, "pad3", function()
  focusScreen(2)
end)

hs.hotkey.bind({"ctrl", "cmd"}, '3', function()
  focusScreen(2)
end)

hs.hotkey.bind({"ctrl", "cmd"}, "h", function()
  circleTowards(1)
end)

hs.hotkey.bind({"ctrl", "cmd"}, "l", function()
  circleTowards(-1)
end)

function circleTowards(increment)
  local screen = hs.window.focusedWindow():screen()
  local index  = find(screen)
  circleIndex(index + increment)
end

function circleIndex(index)
  local size = length(hs.screen.allScreens())
  local next = index
  if next < 1 then
    next = size
  elseif next > size then
    next = 1
  end
  focusScreen(next)end

function find(screen)
  local index=-1
  for k,v in pairs(hs.screen.allScreens()) do
    if v == screen then
      index = k
    end
  end
  return index
end

function length(table)
  local counter = 0
  for index in pairs(table) do
    counter = counter + 1
  end
  return counter
end

function focusScreen(index)
  local screens = hs.screen.allScreens()
  local screen = screens[index]
  --hs.notify.new({title="Hammerspoon", informativeText="Focus " .. index}):send()
  centerClick(screen)
end

function centerClick(screen)
  local rect = screen:fullFrame()
  local center = hs.geometry.rectMidPoint(rect)
  --hs.mouse.setAbsolutePosition(center)
  hs.eventtap.leftClick(center)
end