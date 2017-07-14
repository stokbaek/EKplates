local addon, ns = ...
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

C.Insert = false  -- Let Nameplates go off screen
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
C.castbar = true  -- Show castbar as a "bar"

--[[ the Player Plate ]]--

C.playerplate = false  -- Player self nameplate
C.classresource_show = false  -- Resource
C.classresource = "player" -- "player", "target"
C.plateaura = false  -- Aura
C.PlayerClickThrough = false -- Player resource click through

--[[ Aura Icons on Plates ]]--

C.auranum = 5
C.auraiconsize = 22
C.myfiltertype = "whitelist" -- Show aura cast by player
C.otherfiltertype = "none"  -- Show aura cast by other
C.BUFF = True -- Show important buffs on mobs.
C.CC = True -- Show CC debuffs on targets.
C.OTHERSTAUNT = True -- Shows other players taunt on the nameplates

-- "whitelist": show only list
-- "blacklist": show only unlisted
-- "none": do not show anything

C.Taunts = {
    [355]       = true, -- Warrior taunt
    [204181]    = true, -- Monk taunt
    [62124]     = true, -- Paladin taunt
    [6795]      = true, -- Druid taunt
    [56222]     = true, -- Death Knight taunt
    [185245]    = true, -- Demon Hunter taunt
}

C.WhiteList = {
    -- Death Knight:
    [55078]     = true, -- Blood Plague
    [43265]     = true, -- Death and Decay
    [206930]    = true, -- Heart Strike
    [55095]     = true, -- Frost Fever
    [196771]    = true, -- Remorseless Winter
    [191587]    = true, -- Virulent Plague
    [77575]     = true, -- Outbreak
    [195757]    = true, --  Festering Wound

    -- Demon Hunter:
    [206473]    = true, -- Bloodlet
    [206491]    = true, -- Nemesis
    [204021]    = true, -- Fiery Brand
    [204598]    = true, -- Sigil of Flame
    [202137]    = true, -- Sigil of Silence
    [207684]    = true, -- Sigil of Misery

    -- Druid:
    [8921]      = true, -- Moonfire
    [164815]    = true, -- Sunfire
    [202347]    = true, -- Stellar Flare

    -- Hunter:

    -- Mage:

    -- Monk:
    [196608]    = true, -- Eye of Tiger
    [115181]    = true, -- Breath of Fire
    [121253]    = true, -- Keg Smash
    [213062]    = true, -- Dark Side of the Moon
    [115080]    = true, -- Touch of Death
    [122470]    = true, -- Touch of Karma
    [116706]    = true, -- Disable
    [228287]    = true, -- Mark of the Crane

    -- Paladin:
    [20271]     = true, -- Judgment
    [183778]    = true, -- Judgment of Light
    [205273]    = true, -- Wake of Ashes
    [213757]    = true, -- Execution Sentence

    -- Priest:
    [204197]    = true, -- Purge the Wicked
    [214621]    = true, -- Schism 
    [589]       = true, -- Shadow Word: Pain
    [14914]     = true, -- Holy Fire
    [88625]     = true, -- Holy Word: Chastise
    [34914]     = true, -- Vampiric Touch
    -- Rogue:
    [37066]     = true, -- Garrote
    [1329]      = true, -- Mutilate
    [192424]    = true, -- Surge of Toxins
    [192759]    = true, -- Kingsbane
    [79140]     = true, -- Vendetta

    -- Shaman:

    -- Warlock:
    [146739]    = true, -- Corruption
    [980]       = true, -- Agony
    [63106]     = true, -- Siphon Life
    [27243]     = true, -- Seed of Corruption
    [233496]    = true, -- Unstable Affliction
    [233490]    = true, -- Unstable Affliction
    [233497]    = true, -- Unstable Affliction
    [233498]    = true, -- Unstable Affliction
    [233499]    = true, -- Unstable Affliction
    [157736]    = true, -- Immolate
    [80240]     = true, -- Havocable Affliction
    [233490]    = true,
    [196414]    = true, -- Eradication
    [603]       = true, -- Doom
    [205179]    = true, -- Phantom Singularity

    -- Warrior:
    [27579]     = true, -- Demoralizing Shout
    [13532]     = true, -- Thunder Clap
    [238149]    = true, -- Neltharion's Thunder
    [772]       = true, -- Rend
    [215537]    = true, -- Trauma
    [208086]    = true, -- Colossus Smash
    [209541]    = true, -- Touch of Zakajz
    [238147]    = true, -- Executioner's Precision
    [1715]      = true, -- Hamstring
    [5246]      = true, -- Intimidating Shout
    [115804]    = true, -- Mortal Wounds
}

C.BUFFList = {
    --BUFF
    [209859]    = true, -- Bolstering(mythic+)
    [226510]    = true, -- Sanguine Ichor(mythic+)
    [236513]    = true, -- Bonecage Armor (ToS)
}

C.CCList = {
    -- CC
    [25046]     = true, -- Arcane Torrent

    [118]       = true, -- Polymorph
    [51514]     = true, -- Hex
    [217832]    = true, -- Imprison
    [605]       = true, -- Mind Control
    [710]       = true, -- Banish
    [2094]      = true, -- Blind
    [6770]      = true, -- Sap
    [9484]      = true, -- Shackle Undead
    [20066]     = true, -- Repentance
    [115078]    = true, -- Paralysis
    [207167]    = true, -- Blinding Sheet

    [339]       = true, -- Entangling Roots
    [102359]    = true, -- Mass Entanglement
    [3355]      = true, -- Freezing Trap
    [64695]     = true, -- Earthgrab

    [5211]      = true, -- Mighty Bash
    [853]       = true, -- Hammer of Justice
    [221562]    = true, -- Asphyxiate
    [205290]    = true, -- Wake of Ashes (Stun)
    [29511]     = true, -- Repentance
    [115750]    = true, -- Blinding Light
    [183218]    = true, -- Hand of Hindrance
    [246806]    = true, -- Lawbringer

    [118905]    = true, -- Static Charge
    [132168]    = true, -- Shockwave
    [93814]     = true, -- Stormbolt
    [179057]    = true, -- Chaos Nova
    [30283]     = true, -- Shadowfury
    [207171]    = true, -- Winter is Coming
    [117405]    = true, -- Binding Shot
    [119381]    = true, -- Leg Sweep
    [127797]    = true, -- Ursol's Vortex
    [205369]    = true, -- Mind Bomb
    [81261]     = true, -- Solar Beam
}

C.BlackList = {
    [166646]    = true, -- Windwalking
    [227723]    = true, -- Mana Divining Stone
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
