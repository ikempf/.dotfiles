-- Spaces and Desktop shortcuts
-- Screen indexes might not correspond to "physical" order
screenMapping = { [1] = 1, [2] = 3, [3] = 2 }
function screen(index) 
    return screenMapping[index]
end

hs.hotkey.bind({"ctrl", "cmd"}, "pad1", function()
  focusScreen(screen(1))
end)

hs.hotkey.bind({"ctrl", "cmd"}, '1', function()
  focusScreen(screen(1))
end)

hs.hotkey.bind({"ctrl", "cmd"}, "pad2", function()
  focusScreen(screen(3))
end)

hs.hotkey.bind({"ctrl", "cmd"}, '2', function()
  focusScreen(screen(3))
end)

hs.hotkey.bind({"ctrl", "cmd"}, "pad3", function()
  focusScreen(screen(2))
end)

hs.hotkey.bind({"ctrl", "cmd"}, '3', function()
  focusScreen(screen(2))
end)

hs.hotkey.bind({"ctrl", "cmd"}, "h", function()
  moveScreen(-1)
end)

hs.hotkey.bind({"ctrl", "cmd"}, "l", function()
  moveScreen(1)
end)

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "n", function()
  centerClick(hs.screen.mainScreen())
end)

function moveScreen(increment)
  local screen = hs.window.focusedWindow():screen()
  local index  = find(screen)
  local next   = boundedIndex(index + increment)
  focusScreen(next)
end

function boundedIndex(index)
  local size = length(hs.screen.allScreens())
  local next = math.max(1, math.min(size, index))
  return next
end

function circleIndex(index)
  local size = length(hs.screen.allScreens())
  local next = index
  if next < 1 then
    next = size
  elseif next > size then
    next = 1
  end
  return next
end

function find(screen)
  local index=-1
  for k,v in pairs(hs.screen.allScreens()) do
    if v == screen then
      index = k
    end
  end
  return screenMapping[index]
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
  local screen = screens[screenMapping[index]]
  centerClick(screen)
end

function centerClick(screen)
  local rect = screen:fullFrame()
  local center = hs.geometry.rectMidPoint(rect)
  hs.eventtap.leftClick(center)
end


