local EKPlates, ns = ...
ns[1] = {}                                                                      -- C, config
ns[2] = {}                                                                      -- G, globals (Optionnal)

local C, G = unpack(select(2, ...))

-- [[ Global ]] --

C.numberstyle = false                                                           --number style, if you want a bar-style nameplates, change to false.

-- [[ Textures ]] --

G.iconcastbar = "Interface\\AddOns\\EKplates\\media\\dM3"
G.raidicon = "Interface\\AddOns\\EKplates\\media\\raidicons"
G.redarrow1 = "Interface\\AddOns\\EKplates\\media\\NeonRedArrow"
G.redarrow2 = "Interface\\AddOns\\EKplates\\media\\NeonRedArrowH"
G.ufbar = "Interface\\AddOns\\EKplates\\media\\ufbar"
G.blank = "Interface\\Buttons\\WHITE8x8"
G.glow = "Interface\\AddOns\\EKplates\\media\\glow"
G.myClass = select(2, UnitClass("player"))                                      --dont touch this

-- [[ Fonts ]] --

G.numberstylefont = "Interface\\AddOns\\EKplates\\media\\Infinity Gears.ttf"    --number style's number font
G.numFont = "Interface\\AddOns\\EKplates\\media\\number.ttf"                    --number font
G.norFont = STANDARD_TEXT_FONT
G.fontsize = 14                                                                 --name font size
G.aurafontsize = 12                                                             --Aura font size
G.fontflag = "OUTLINE"                                                          -- "OUTLINE" or none

-- [[ Config ]] --

C.Inset = Textures                                                              -- Let Nameplates don't go off screen
C.MaxDistance = 45                                                              -- max distance for nameplate show on
C.SelectedScale = 1                                                             -- scale select target nameplate
C.MinAlpha = 0.8                                                                -- set fadeout for out of range and non-target

C.FriendlyClickThrough = true                                                   -- friendly nameplate click through
C.EnemyClickThrough = false                                                     -- enemy nameplate click through

C.name_mod = true                                                               -- show only name on friendy player nameplates
C.friendlyCR = Textures                                                         -- friendly class color

C.enemyCR = Textures                                                            -- enemy class color
C.threatcolor = true                                                            -- change name color by threat

C.cbshield = false                                                              -- show castbar un-interrupt shield icon
C.level = false                                                                 -- show level

C.HorizontalArrow = false                                                       -- horizontal red arrow at right
C.HideArrow = true                                                              -- hide arrow

C.cbtext = false                                                                -- show castbar text
C.castbar = false                                                               -- show castbar as a "bar"



C.playerplate = false                                                           -- player self nameplate
C.classresource_show = false                                                    -- player resource
C.classresource = "player"                                                      -- "player", "target"
C.plateaura = false                                                             -- aura
C.PlayerClickThrough = false                                                    -- player resource click through

-- [[ Aura Icons on Plates ]] --

C.auranum = 5                                                                   -- the number of auras
C.auraiconsize = 22                                                             -- aura icon size
C.myfiltertype = "blacklist"                                                    -- show aura cast by player
C.otherfiltertype = ""                                                          -- show aura cast by other
C.OTHERSTAUNT = True                                                            -- Shows all taunts on nameplates
C.BUFF = True                                                                   -- Show important buffs on mobs.
C.CC = True                                                                     -- Show CC debuffs on targets

                                                                                --[[
                                                                                    whitelist: show only list
                                                                                    blacklist: show only unlist
                                                                                    none: do not show anything
                                                                                --]]
C.Taunts = {
    [355]       = true,                                                         -- Warrior taunt
    [204181]    = true,                                                         -- Monk taunt
    [62124]     = true,                                                         -- Paladin taunt
    [6795]      = true,                                                         -- Druid taunt
    [56222]     = true,                                                         -- Death Knight taunt
    [185245]    = true,                                                         -- Demon Hunter taunt
}

C.WhiteList = {}

C.BUFFList = {
    [209859]    = true,                                                         -- Bolstering(mythic+)
    [226510]    = true,                                                         -- Sanguine Ichor(mythic+)
    [236513]    = true,                                                         -- Bonecage Armor (ToS)
}

C.CCList = {
    [25046]     = true,                                                         -- Arcane Torrent
    [118]       = true,                                                         -- Polymorph
    [51514]     = true,                                                         -- Hex
    [217832]    = true,                                                         -- Imprison
    [605]       = true,                                                         -- Mind Control
    [710]       = true,                                                         -- Banish
    [2094]      = true,                                                         -- Blind
    [6770]      = true,                                                         -- Sap
    [9484]      = true,                                                         -- Shackle Undead
    [20066]     = true,                                                         -- Repentance
    [115078]    = true,                                                         -- Paralysis
    [207167]    = true,                                                         -- Blinding Sheet
    [118699]    = true,                                                         -- Fear
    [339]       = true,                                                         -- Entangling Roots
    [102359]    = true,                                                         -- Mass Entanglement
    [3355]      = true,                                                         -- Freezing Trap
    [64695]     = true,                                                         -- Earthgrab
    [5211]      = true,                                                         -- Mighty Bash
    [853]       = true,                                                         -- Hammer of Justice
    [221562]    = true,                                                         -- Asphyxiate
    [205290]    = true,                                                         -- Wake of Ashes (Stun)
    [29511]     = true,                                                         -- Repentance
    [115750]    = true,                                                         -- Blinding Light
    [183218]    = true,                                                         -- Hand of Hindrance
    [246806]    = true,                                                         -- Lawbringer
    [118905]    = true,                                                         -- Static Charge
    [132168]    = true,                                                         -- Shockwave
    [93814]     = true,                                                         -- Stormbolt
    [179057]    = true,                                                         -- Chaos Nova
    [30283]     = true,                                                         -- Shadowfury
    [207171]    = true,                                                         -- Winter is Coming
    [117405]    = true,                                                         -- Binding Shot
    [119381]    = true,                                                         -- Leg Sweep
    [127797]    = true,                                                         -- Ursol's Vortex
    [205369]    = true,                                                         -- Mind Bomb
    [81261]     = true,                                                         -- Solar Beam
}

C.BlackList = {
    [166646]    = true,                                                         -- Windwalking
    [227723]    = true,                                                         -- Mana Divining Stone
    [198590]    = true,                                                         -- Drain soul
}

--[[ Custom colored plates ]]--

C.Customcoloredplates = {
    [1] = {
        name = "Fel Explosives",
        color = {r = 0, g = 1, b = 1},
    },
}

--[[ Show Power ]]--

C.show_power = true                                                             --show special power
C.ShowPower = {
    ["Automated Sweeper"] = true,
    ["Scrubber"] = true,
}
