﻿local addon, ns = ...
ns[1] = {} -- T, functions, constants, variables
ns[2] = {} -- C, config
ns[3] = {} -- L, localization
ns[4] = {} -- G, globals (Optionnal)

local T, C, L, G = unpack(select(2, ...))

--[[ Global ]]--

C.numberstyle = true -- Infinity plates's number style

--[[ Textures ]]--

G.iconcastbar = "Interface\\AddOns\\EKplates\\media\\dM3"
G.raidicon = "Interface\\AddOns\\EKplates\\media\\raidicons"
G.redarrow1 = "Interface\\AddOns\\EKplates\\media\\NeonRedArrow"
G.redarrow2 = "Interface\\AddOns\\EKplates\\media\\NeonRedArrowH"
G.ufbar = "Interface\\AddOns\\EKplates\\media\\ufbar"
G.blank = "Interface\\Buttons\\WHITE8x8"
G.glow = "Interface\\AddOns\\EKplates\\media\\glow"
G.myClass = select(2, UnitClass("player"))

--[[ Fonts ]]--

G.numberstylefont = "Interface\\AddOns\\EKplates\\media\\Infinity Gears.ttf"  -- Number style's number font
G.numFont = "Interface\\AddOns\\EKplates\\media\\number.ttf" -- Number font
G.norFont = STANDARD_TEXT_FONT  -- Name font(or use"GameFontHighlight:GetFont()")
G.fontsize = 10  -- Name font size
G.aurafontsize = 12  -- Aura font size
G.fontflag = "OUTLINE"  -- "OUTLINE" or none

--[[ Config ]]--

C.CVAR = false  -- Let Nameplates go off screen
C.MaxDistance = 45  -- Max distance for nameplate show on
C.MinAlpha = 0.8 -- Set fadeout for out range and non-target
C.SelectedScale = 1 -- Scale select target nameplate
C.FriendlyClickThrough = true -- Friendly nameplate click through
C.EnemyClickThrough = false  -- Enemy nameplate click through
C.name_mod = true -- Show only name on friendy player nameplates
C.friendlyCR = true -- Friendly class color
C.enemyCR = true -- Enemy class color
C.threatcolor = true -- Change name color by threat
C.cbshield = false  -- Show castbar un-interrupt shield icon
C.level = false -- Show level
C.HorizontalArrow = false -- Horizontal red arrow at right
C.HideArrow = false  -- Hide arrow

--number style additional config
C.cbtext = true -- Show castbar text
C.castbar = false  -- Show castbar as a "bar"

--[[ the Player Plate ]]--

C.playerplate = false  -- Player self nameplate
C.classresource_show = false  -- Resource
C.classresource = "player" -- "player", "target"
C.plateaura = false  -- Aura

--[[ Aura Icons on Plates ]]--

C.auranum = 5
C.auraiconsize = 22
C.myfiltertype = "whitelist" -- Show aura cast by player
C.otherfiltertype = "none"  -- Show aura cast by other
C.CC = True -- Show CC debuffs on targets.

-- "whitelist": show only list
-- "blacklist": show only unlisted
-- "none": do not show anything

C.WhiteList = {
	--[166646] = true, -- 御風而行(test)
	--BUFF
	[209859] = true, -- Bolstering(mythic+)
	[226510] = true, -- Sanguine Ichor(mythic+)

	-- DEBUFF
	[146739] = true, -- Corruption
	[980] = true, -- Agony
	[63106] = true, -- Siphon Life
	[27243] = true, -- Seed of Corruption
}

C.CCList = {
	-- CC
	[25046]  = true, -- Arcane Torrent

	[118]    = true, -- Polymorph
	[51514]  = true, -- Hex
	[217832] = true, -- Imprison
	[605]    = true, -- Mind Control
	[710]    = true, -- Banish
	[2094]   = true, -- Blind
	[6770]   = true, -- Sap
	[9484]   = true, -- Shackle Undead
	[20066]  = true, -- Repentance
	[115078] = true, -- Paralysis

	[339]    = true, -- Entangling Roots
	[102359] = true, -- Mass Entanglement
	[3355]   = true, -- Freezing Trap
	[64695]  = true, -- Earthgrab

	[5211]   = true, -- Mighty Bash
	[853]    = true, -- Hammer of Justice
	[221562] = true, -- Asphyxiate

	[118905] = true, -- Static Charge
	[132168] = true, -- Shockwave
	[179057] = true, -- Chaos Nova
	[30283]  = true, -- Shadowfury
 	[207171] = true, -- Winter is Coming
	[117405] = true, -- Binding Shot
	[119381] = true, -- Leg Sweep
	[127797] = true, -- Ursol's Vortex
	[205369] = true, -- Mind Bomb
	[81261]  = true, -- Solar Beam
}

C.BlackList = {
	[166646] = true, -- Windwalking
	[227723] = true, -- Mana Divining Stone
}

--[[ Custom colored plates ]]--

C.Customcoloredplates = {
	[1] = {
		name = "Fel Explosives",
		color = {r = 0, g = 1, b = 1},
	},
}

--[[ Show Power ]]--

C.show_power = true  --show special power
C.ShowPower = {
	["Automated Sweeper"] = true,
	["Scrubber"] = true,
}