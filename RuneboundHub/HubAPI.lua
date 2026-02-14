-- HubAPI: simple module registration helpers and examples
-- Modules ("runes") should call `RuneboundHub.API.RegisterRune(name, moduleTable)`

-- Example module skeleton:
-- local MyRune = {}
-- function MyRune:OnRegister(hub) end
-- function MyRune:OnEnable() end
-- function MyRune:OnDisable() end
-- RuneboundHub.API.RegisterRune("MyRune", MyRune)

-- This file is primarily documentation and a convenient place for shared helper functions
local HubAPI = {}

function HubAPI.MakeSimpleRune(name, handlers)
    local t = handlers or {}
    t.name = name
    RuneboundHub.API.RegisterRune(name, t)
    return t
end

return HubAPI
