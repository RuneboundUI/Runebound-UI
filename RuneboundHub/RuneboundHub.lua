local AddonName = "RuneboundHub"
local AceAddon = LibStub and LibStub("AceAddon-3.0")
local RuneboundHub

if AceAddon then
    RuneboundHub = AceAddon:NewAddon(AddonName, "AceConsole-3.0", "AceEvent-3.0")
else
    RuneboundHub = {}
end

_G[AddonName] = RuneboundHub

function RuneboundHub:OnInitialize()
    self.modules = self.modules or {}
    self.db = LibStub and LibStub("AceDB-3.0") and LibStub("AceDB-3.0"):New("RuneboundDB", {profile = {}}, true)
    if self.Print then self:Print("RuneboundHub initialized") else print("RuneboundHub initialized") end
end

function RuneboundHub:RegisterRune(name, mod)
    if not name or type(mod) ~= "table" then return end
    self.modules[name] = mod
    if mod.OnRegister then pcall(mod.OnRegister, mod, self) end
end

function RuneboundHub:EnableRune(name)
    local mod = self.modules[name]
    if mod and mod.OnEnable then pcall(mod.OnEnable, mod) end
end

function RuneboundHub:DisableRune(name)
    local mod = self.modules[name]
    if mod and mod.OnDisable then pcall(mod.OnDisable, mod) end
end

-- Expose a minimal API table for runes to call
RuneboundHub.API = RuneboundHub.API or {}
function RuneboundHub.API.RegisterRune(name, mod)
    RuneboundHub:RegisterRune(name, mod)
end
