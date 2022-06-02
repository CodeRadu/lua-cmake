function debug(str)
  print("\27[32m[Lua]: " .. str)
end

function error(str)
  print("\27[31m[Lua]: " .. str)
end

dofile("Data/main.lua")