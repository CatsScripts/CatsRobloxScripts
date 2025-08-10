-- abusable lol
local function NetworkFunc(Name)
    for _, v in pairs(game:GetService("ReplicatedStorage")._NETWORK:GetChildren()) do
        if v:IsA("RemoteEvent") then
            v:FireServer(Name)
        end
    end
end

local badgeGloves = {
    "Admin", "Alchemist", "Angler", "Avatar", "Badges", "Berserk", "Bind", "Blasphemy", "Bob", "Bomb",
    "Boogie", "Boxer", "Bubble", "Buddies", "Bus", "Car Keys", "Chain", "Charge", "Clock", "Confusion",
    "Counter", "CULT", "Dave", "Detonator", "Disarm", "Divebomb", "Dominance", "Draw4", "Druid", "Eggler",
    "Elude", "Fan", "Firework", "Fish", "Flamarang", "Frostbite", "Goofy", "Glitch", "Glovel", "Hallow Jack",
    "Hammer", "Hexa", "Hitman", "Hunter", "Hybrid", "Iceskate", "Jerry", "Jester", "Jet", "Joust", "Jupiter",
    "Kinetic", "Knockoff", "Kraken", "Lamp", "Leash", "Link", "Lure", "MEGAROCK", "Mitten", "Moon", "mortis",
    "Mouse", "Necromancer", "Null", "Obby", "Orbit", "Pan", "Phase", "Pillow", "Pilot", "Plague", "Plank",
    "Poltergeist", "Potato", "Psycho", "Quake", "Rage", "Rattlebones", "Recall", "REDACTED", "Reflect", "Relude",
    "Retro", "Rhythm", "RNG", "Rob", "Rojo", "Run", "Santa", "Scythe", "Shard", "Silly", "Siphon", "Slapple",
    "Slasher", "Slender", "Snowball", "Snowroller", "Sparky", "Spoonful", "Spy", "Suction", "Swashbuckler",
    "Swordfighter", "Tank", "The schlob", "Tinkerer", "Trap", "Tycoon", "Untitled Tag", "Voodoo", "Warp", "Water",
    "Witch", "Wrench"
}

for _, gloveName in ipairs(badgeGloves) do
    NetworkFunc(gloveName)
end
