RuneboundHub
=================

Lightweight modular addon hub (Ace3-friendly) for organizing "runes" (modules).

Structure
- RuneboundHub.toc — addon manifest
- RuneboundHub.lua — core loader and minimal API
- HubAPI.lua — helpers and module template

Getting started
1. Drop the `RuneboundHub` folder into your WoW `Interface/AddOns/` directory.
2. Ensure Ace3 (and AceDB-3.0) are installed as dependencies, or install a library pack (e.g., with CurseForge/Twitch).
3. Create module files that call `RuneboundHub.API.RegisterRune("Name", moduleTable)`.

Example Git usage (already performed here if you chose initialization):
```
git status
git add .
git commit -m "Initial scaffold: core hub and README"
git remote add origin <your-repo-url>
git push -u origin main
```

Next steps
- Implement the module manifest (schema) and loader behavior for optional modules.
- Add an options UI (AceConfig/AceConfigDialog) and profile support.
- Create example runes: accessibility, quest tracker, nameplate bridge.
