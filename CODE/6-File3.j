
function sj takes location Sj, real tj, real sG returns nothing
    call MoveLocation(Sj, GetLocationX(Sj) + tj * Cos(sG * bj_DEGTORAD), GetLocationY(Sj) + tj * Sin(sG * bj_DEGTORAD))
endfunction
function Tj takes real uj, unit Uj, player wj returns nothing
    if(GetUnitStateSwap(UNIT_STATE_LIFE, Uj) < uj)then
        call SetWidgetLife(Uj, 1.)
        call KillUnit(CreateUnitAtLoc(wj, 'eC54', GetUnitLoc(Uj), bj_UNIT_FACING))
    else
        call SetWidgetLife(Uj, (GetUnitStateSwap(UNIT_STATE_LIFE, Uj) - uj))
    endif
endfunction
function Wj takes unit yj, integer n returns nothing
    if n > 0 then
        loop
            exitwhen n < 10
            call UnitAddAbility(yj, oo[10])
            set n = n - 10
            call TriggerSleepAction(.0)
        endloop
        call UnitAddAbility(yj, oo[n])
    endif
endfunction
function Yj takes nothing returns nothing
    // call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,10.,"|CFFDCDCDCD|CFFDDDDDDD|CFFDFDFDFa|CFFE1E1E1y|CFFE3E3E3: |CFFE6E6E6J|CFFE8E8E8u|CFFEAEAEAd|CFFEBEBEBg|CFFEDEDEDe|CFFEFEFEFm|CFFF1F1F1e|CFFF2F2F2n|CFFF4F4F4t |CFFF8F8F81|CFFF9F9F99|CFFFBFBFB.|CFFFDFDFD9|CFFFFFFFFb|r")
    // call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,10.,"by Dh-Neo

    // DDay Team:
    // Dh-Neo, Dh-Marshall, Jncool, Freddd, Viper, S43nti, Markone")
    // call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,10.,"http://www.ddayworld.com/")
    call TriggerSleepAction(5.)
    // call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,10.," ")
    // call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,10.,"Special thx goes to Darky29 and http://www.wc3sear.ch")
    call TriggerSleepAction(5.)
    // call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,10.," ")
    // call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,10.,"Continued development by |cff8000ffArtwork_DT|r")
    // call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,10.,"From Group Facebook: |cff0080ffNghien DDay|r")
    // call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,10.,"|cff80ffffhttps://www.facebook.com/groups/Pro.ClanLord/|r")
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., " ")
    call TriggerSleepAction(10.)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "Press |cffffcc00-tips|r to show new commands!")
endfunction
function zj takes nothing returns nothing
  
endfunction
function Zj takes nothing returns nothing
    call TriggerSleepAction(.01)
    call StartTimerBJ(xr, false, 15.)
    call CreateTimerDialogBJ(bj_lastStartedTimer, "All Modes")
    set rr = bj_lastCreatedTimerDialog
    call TriggerSleepAction(15.)
    call DestroyTimerDialog(rr)
endfunction
function vJ takes nothing returns nothing
    call TriggerSleepAction(.01)
    call StartTimerBJ(Nr, false, 20.)
    call CreateTimerDialogBJ(bj_lastStartedTimer, "TR (Tournament)")
    set br = bj_lastCreatedTimerDialog
    call TriggerSleepAction(20.)
    call DestroyTimerDialog(br)
endfunction
function eJ takes nothing returns nothing
    call SetMapFlag(MAP_LOCK_RESOURCE_TRADING, true)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00Resource Ban mode activated. Resource Trading is now disabled.|r")
    call DisableTrigger(wi)
    call DisableTrigger(GetTriggeringTrigger())
endfunction
function xJ takes nothing returns nothing
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00RS Mode Has Been Disabled")
    call DisableTrigger(Ui)
endfunction
function oJ takes nothing returns nothing
    call ReplaceUnitBJ(Gb, 'n02W', 1)
    call ReplaceUnitBJ(Sb, 'n02X', 1)
    call ReplaceUnitBJ(ub, 'n02Y', 1)
    call ReplaceUnitBJ(tb, 'n02Z', 1)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00No Repair mode activated. Repair abilities have been removed from necessary repair workers.|r")
    call DisableTrigger(yi)
    call DisableTrigger(GetTriggeringTrigger())
endfunction
function rJ takes nothing returns nothing
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00NR Mode Has Been Disabled")
    call DisableTrigger(Wi)
endfunction
function iJ takes nothing returns nothing
    call DisableTrigger(LE)
    call DisableTrigger(mE)
    call DisableTrigger(ME)
    call DisableTrigger(pE)
    call EnableTrigger(KE)
    call EnableTrigger(lE)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00No Flag mode activated. Dark/Light Forces Flags dont have any effect now (Troops hp doesnt increase).|r")
    call DisableTrigger(zi)
    call DisableTrigger(GetTriggeringTrigger())
endfunction
function aJ takes nothing returns nothing
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00NF Mode Has Been Disabled")
    call DisableTrigger(Yi)
endfunction
function nJ takes nothing returns nothing
    call ReplaceUnitBJ(Gb, 'n02W', 1)
    call ReplaceUnitBJ(Sb, 'n02X', 1)
    call ReplaceUnitBJ(ub, 'n02Y', 1)
    call ReplaceUnitBJ(tb, 'n02Z', 1)
    call DisableTrigger(Wi)
    call DisableTrigger(yi)
    call DisableTrigger(LE)
    call DisableTrigger(mE)
    call DisableTrigger(ME)
    call DisableTrigger(pE)
    call EnableTrigger(KE)
    call EnableTrigger(lE)
    call DisableTrigger(Yi)
    call DisableTrigger(zi)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00Tournament Mode has been enabled, all tournament rules  now apply.")
    call DisableTrigger(va)
    call TriggerSleepAction(.01)
    call DisableTrigger(GetTriggeringTrigger())
endfunction
function VJ takes nothing returns nothing
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00TR (Tournament) Mode Has Been Disabled")
    call DisableTrigger(Zi)
endfunction
function EJ takes nothing returns boolean
    if IsPlayerInForce(GetTriggerPlayer(), eB) == false then
        return true
    else
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 5., "|cffffcc00You already an OBS!")
        return false
    endif
endfunction
function XJ takes nothing returns nothing
    call VG(GetEnumUnit())
endfunction
function OJ takes nothing returns nothing
    call ForGroupBJ(GetUnitsOfPlayerAll(GetTriggerPlayer()), function XJ)
    call SetPlayerStateBJ(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_GOLD, 0)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, (("|cffffcc00" + BB[GetConvertedPlayerId(GetTriggerPlayer())]) + " Has Become an OB!|r"))
    set bB[GetConvertedPlayerId(GetTriggerPlayer())] = "ReplaceableTextures\\WorldEditUI\\Doodad-Cinematic.blp"
    set LB[GetConvertedPlayerId(GetTriggerPlayer())] = ("[OB]" + GetPlayerName(GetTriggerPlayer()))
    call ForceAddPlayer(oC, GetTriggerPlayer())
endfunction
function RJ takes nothing returns nothing
    call DisableTrigger(ea)
endfunction
function IJ takes nothing returns nothing
    call DisableTrigger(Wi)
    call DisableTrigger(Zi)
    call VG(Gb)
    call VG(Sb)
    call VG(Mb)
    call ReplaceUnitBJ(Db, 'n032', 1)
    call ReplaceUnitBJ(Tb, 'n034', 1)
    call VG(ub)
    call VG(tb)
    call VG(kb)
    call ReplaceUnitBJ(pb, 'n033', 1)
    call ReplaceUnitBJ(fb, 'n035', 1)
    call AddSpecialEffectLocBJ(GetRectCenter(AC), "Abilities\\Spells\\Human\\DivineShield\\DivineShieldTarget.mdl")
    call AddSpecialEffectLocBJ(GetRectCenter(bC), "Abilities\\Spells\\Human\\DivineShield\\DivineShieldTarget.mdl")
    call AddSpecialEffectLocBJ(GetRectCenter(XC), "Abilities\\Spells\\Human\\DivineShield\\DivineShieldTarget.mdl")
    call AddSpecialEffectLocBJ(GetRectCenter(BC), "Abilities\\Spells\\Undead\\UnholyAura\\UnholyAura.mdl")
    call AddSpecialEffectLocBJ(GetRectCenter(NC), "Abilities\\Spells\\Undead\\UnholyAura\\UnholyAura.mdl")
    call AddSpecialEffectLocBJ(GetRectCenter(OC), "Abilities\\Spells\\Undead\\UnholyAura\\UnholyAura.mdl")
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00No All mode has been Enabled, all Mecenaries, helping Units and items have been removed from the Game.")
    call DisableTrigger(ra)
    call TriggerSleepAction(.01)
    call DisableTrigger(GetTriggeringTrigger())
endfunction
function AJ takes nothing returns nothing
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00NA (No All) Mode Has Been Disabled")
    call DisableTrigger(oa)
endfunction
function NJ takes nothing returns boolean
    return(GetPlayerName(GetTriggerPlayer()) == "Dh-Neo")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Marshall")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Freddd")or(GetPlayerName(GetTriggerPlayer()) == "Freddd")
endfunction
function bJ takes nothing returns nothing
    call VG(GetEnumUnit())
endfunction
function BJ takes nothing returns boolean
    return(NJ())
endfunction
function cJ takes nothing returns nothing
    if(BJ())then
        call SetForceAllianceStateBJ(bj_FORCE_ALL_PLAYERS, GetForceOfPlayer(GetTriggerPlayer()), 0)
        set gr = true
        call ForGroupBJ(GetUnitsOfPlayerAll(GetTriggerPlayer()), function bJ)
        call SetPlayerStateBJ(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_GOLD, 0)
        call CreateFogModifierRectBJ(true, GetTriggerPlayer(), FOG_OF_WAR_VISIBLE, bj_mapInitialPlayableArea)
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, (("|cffffcc00" + GetPlayerName(GetTriggerPlayer())) + " is now Moderating this Game|r"))
        call DisableTrigger(GetTriggeringTrigger())
    endif
endfunction
function CJ takes nothing returns boolean
    return(gr)
endfunction
function dJ takes nothing returns boolean
    return(GetPlayerName(GetTriggerPlayer()) == "Dh-Neo")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Marshall")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Freddd")or(GetPlayerName(GetTriggerPlayer()) == "Freddd")
endfunction
function DJ takes nothing returns boolean
    return(dJ())
endfunction
function fJ takes nothing returns nothing
    if(DJ())then
        call DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), (("|cFFF00000" + (GetPlayerName(Player(0)) + "|r ")) + (I2S(GetPlayerState(Player(0), PLAYER_STATE_RESOURCE_GOLD)) + ("/" + I2S(GetPlayerState(Player(0), PLAYER_STATE_RESOURCE_LUMBER))))))
    endif
endfunction
function FJ takes nothing returns boolean
    return(gr)
endfunction
function gJ takes nothing returns boolean
    return(GetPlayerName(GetTriggerPlayer()) == "Dh-Neo")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Marshall")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Freddd")or(GetPlayerName(GetTriggerPlayer()) == "Freddd")
endfunction
function GJ takes nothing returns boolean
    return(gJ())
endfunction
function hJ takes nothing returns nothing
    if(GJ())then
        call DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), (("|c000000FF" + (GetPlayerName(Player(1)) + "|r ")) + (I2S(GetPlayerState(Player(1), PLAYER_STATE_RESOURCE_GOLD)) + ("/" + I2S(GetPlayerState(Player(1), PLAYER_STATE_RESOURCE_LUMBER))))))
    endif
endfunction
function HJ takes nothing returns boolean
    return(gr)
endfunction
function jJ takes nothing returns boolean
    return(GetPlayerName(GetTriggerPlayer()) == "Dh-Neo")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Marshall")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Freddd")or(GetPlayerName(GetTriggerPlayer()) == "Freddd")
endfunction
function JJ takes nothing returns boolean
    return(jJ())
endfunction
function kJ takes nothing returns nothing
    if(JJ())then
        call DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), (("|c000EEEEE" + (GetPlayerName(Player(2)) + "|r ")) + (I2S(GetPlayerState(Player(2), PLAYER_STATE_RESOURCE_GOLD)) + ("/" + I2S(GetPlayerState(Player(2), PLAYER_STATE_RESOURCE_LUMBER))))))
    endif
endfunction
function KJ takes nothing returns boolean
    return(gr)
endfunction
function lJ takes nothing returns boolean
    return(GetPlayerName(GetTriggerPlayer()) == "Dh-Neo")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Marshall")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Freddd")or(GetPlayerName(GetTriggerPlayer()) == "Freddd")
endfunction
function LJ takes nothing returns boolean
    return(lJ())
endfunction
function mJ takes nothing returns nothing
    if(LJ())then
        call DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), (("|c77700077" + (GetPlayerName(Player(3)) + "|r ")) + (I2S(GetPlayerState(Player(3), PLAYER_STATE_RESOURCE_GOLD)) + ("/" + I2S(GetPlayerState(Player(3), PLAYER_STATE_RESOURCE_LUMBER))))))
    endif
endfunction
function MJ takes nothing returns boolean
    return(gr)
endfunction
function pJ takes nothing returns boolean
    return(GetPlayerName(GetTriggerPlayer()) == "Dh-Neo")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Marshall")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Freddd")or(GetPlayerName(GetTriggerPlayer()) == "Freddd")
endfunction
function PJ takes nothing returns boolean
    return(pJ())
endfunction
function qJ takes nothing returns nothing
    if(PJ())then
        call DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), (("|cFFFFFF00" + (GetPlayerName(Player(4)) + "|r ")) + (I2S(GetPlayerState(Player(4), PLAYER_STATE_RESOURCE_GOLD)) + ("/" + I2S(GetPlayerState(Player(4), PLAYER_STATE_RESOURCE_LUMBER))))))
    endif
endfunction
function QJ takes nothing returns boolean
    return(gr)
endfunction
function sJ takes nothing returns boolean
    return(GetPlayerName(GetTriggerPlayer()) == "Dh-Neo")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Marshall")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Freddd")or(GetPlayerName(GetTriggerPlayer()) == "Freddd")
endfunction
function SJ takes nothing returns boolean
    return(sJ())
endfunction
function tJ takes nothing returns nothing
    if(SJ())then
        call DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), (("|c000EEE00" + (GetPlayerName(Player(6)) + "|r ")) + (I2S(GetPlayerState(Player(6), PLAYER_STATE_RESOURCE_GOLD)) + ("/" + I2S(GetPlayerState(Player(6), PLAYER_STATE_RESOURCE_LUMBER))))))
    endif
endfunction
function TJ takes nothing returns boolean
    return(gr)
endfunction
function uJ takes nothing returns boolean
    return(GetPlayerName(GetTriggerPlayer()) == "Dh-Neo")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Marshall")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Freddd")or(GetPlayerName(GetTriggerPlayer()) == "Freddd")
endfunction
function UJ takes nothing returns boolean
    return(uJ())
endfunction
function wJ takes nothing returns nothing
    if(UJ())then
        call DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), (("|cFFF222FF" + (GetPlayerName(Player(7)) + "|r ")) + (I2S(GetPlayerState(Player(7), PLAYER_STATE_RESOURCE_GOLD)) + ("/" + I2S(GetPlayerState(Player(7), PLAYER_STATE_RESOURCE_LUMBER))))))
    endif
endfunction
function WJ takes nothing returns boolean
    return(gr)
endfunction
function yJ takes nothing returns boolean
    return(GetPlayerName(GetTriggerPlayer()) == "Dh-Neo")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Marshall")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Freddd")or(GetPlayerName(GetTriggerPlayer()) == "Freddd")
endfunction
function YJ takes nothing returns boolean
    return(yJ())
endfunction
function zJ takes nothing returns nothing
    if(YJ())then
        call DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), (("|c88888888" + (GetPlayerName(Player(8)) + "|r ")) + (I2S(GetPlayerState(Player(8), PLAYER_STATE_RESOURCE_GOLD)) + ("/" + I2S(GetPlayerState(Player(8), PLAYER_STATE_RESOURCE_LUMBER))))))
    endif
endfunction
function ZJ takes nothing returns boolean
    return(gr)
endfunction
function vk takes nothing returns boolean
    return(GetPlayerName(GetTriggerPlayer()) == "Dh-Neo")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Marshall")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Freddd")or(GetPlayerName(GetTriggerPlayer()) == "Freddd")
endfunction
function ek takes nothing returns boolean
    return(vk())
endfunction
function xk takes nothing returns nothing
    if(ek())then
        call DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), (("|c777DDDFF" + (GetPlayerName(Player(9)) + "|r ")) + (I2S(GetPlayerState(Player(9), PLAYER_STATE_RESOURCE_GOLD)) + ("/" + I2S(GetPlayerState(Player(9), PLAYER_STATE_RESOURCE_LUMBER))))))
    endif
endfunction
function ok takes nothing returns boolean
    return(gr)
endfunction
function rk takes nothing returns boolean
    return(GetPlayerName(GetTriggerPlayer()) == "Dh-Neo")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Marshall")or(GetPlayerName(GetTriggerPlayer()) == "Dh-Freddd")or(GetPlayerName(GetTriggerPlayer()) == "Freddd")
endfunction
function ik takes nothing returns boolean
    return(rk())
endfunction
function ak takes nothing returns nothing
    if(ik())then
        call DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), (("|c00077766" + (GetPlayerName(Player(10)) + "|r ")) + (I2S(GetPlayerState(Player(10), PLAYER_STATE_RESOURCE_GOLD)) + ("/" + I2S(GetPlayerState(Player(10), PLAYER_STATE_RESOURCE_LUMBER))))))
    endif
endfunction
function nk takes nothing returns nothing
    call DisableTrigger(ia)
endfunction
function Vk takes nothing returns nothing
    call SetUnitPositionLoc(GetEnteringUnit(), GetRectCenter(AD))
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), GetRectCenter(AD), 1.)
endfunction
function Ek takes nothing returns nothing
    call KillUnit(Fb)
endfunction
function Xk takes nothing returns nothing
    call SetDoodadAnimationRectBJ("morph", 'D021', GC)
    call TriggerSleepAction(1.3)
    call SetDoodadAnimationRectBJ("stand alternate", 'D021', GC)
endfunction
function Ok takes nothing returns nothing
    call SetPlayerAllianceStateBJ(Player(0), Player(5), 3)
    call SetPlayerAllianceStateBJ(Player(1), Player(5), 3)
    call SetPlayerAllianceStateBJ(Player(2), Player(5), 3)
    call SetPlayerAllianceStateBJ(Player(3), Player(5), 3)
    call SetPlayerAllianceStateBJ(Player(4), Player(5), 3)
    call SetPlayerAllianceStateBJ(Player(6), Player(11), 3)
    call SetPlayerAllianceStateBJ(Player(7), Player(11), 3)
    call SetPlayerAllianceStateBJ(Player(8), Player(11), 3)
    call SetPlayerAllianceStateBJ(Player(9), Player(11), 3)
    call SetPlayerAllianceStateBJ(Player(10), Player(11), 3)
endfunction
function Rk takes nothing returns nothing
    set Hx = (Hx + 1)
endfunction
function Ik takes nothing returns nothing
    // call PanCameraToTimedLocForPlayer(Player(0), GetRectCenter(RD), 1.)
    // call PanCameraToTimedLocForPlayer(Player(1), GetRectCenter(RD), 1.)
    // call PanCameraToTimedLocForPlayer(Player(2), GetRectCenter(RD), 1.)
    // call PanCameraToTimedLocForPlayer(Player(3), GetRectCenter(RD), 1.)
    // call PanCameraToTimedLocForPlayer(Player(4), GetRectCenter(RD), 1.)
    // call PanCameraToTimedLocForPlayer(Player(6), GetRectCenter(ID), 1.)
    // call PanCameraToTimedLocForPlayer(Player(7), GetRectCenter(ID), 1.)
    // call PanCameraToTimedLocForPlayer(Player(8), GetRectCenter(ID), 1.)
    // call PanCameraToTimedLocForPlayer(Player(9), GetRectCenter(ID), 1.)
    // call PanCameraToTimedLocForPlayer(Player(10), GetRectCenter(ID), 1.)
endfunction
function Ak takes nothing returns nothing
    set ze = true
endfunction
function Nk takes nothing returns boolean
    return(GetPlayerSlotState(GetEnumPlayer()) == PLAYER_SLOT_STATE_PLAYING)
endfunction
function bk takes nothing returns nothing
    if(Nk())then
        set Se = (Se + 1)
    endif
endfunction
function Bk takes nothing returns boolean
    return(GetPlayerSlotState(GetEnumPlayer()) == PLAYER_SLOT_STATE_PLAYING)
endfunction
function ck takes nothing returns nothing
    if(Bk())then
        set te = (te + 1)
    endif
endfunction
function Ck takes nothing returns nothing
    set Se = 0
    set te = 0
    call ForForce(GetPlayersAllies(Player(5)), function bk)
    call ForForce(GetPlayersAllies(Player(11)), function ck)
endfunction
function dk takes nothing returns nothing
    call SetTimeOfDay(10.)
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = rC
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set He[bj_forLoopAIndex] = bj_forLoopAIndex
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = rC
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set he[bj_forLoopAIndex] = true
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = rC
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set ge[bj_forLoopAIndex] = bj_forLoopAIndex
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = rC
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set De[bj_forLoopAIndex] = true
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 10
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set Be[bj_forLoopAIndex] = 0
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 12
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set ex[bj_forLoopAIndex] = 0
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 12
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set Re[bj_forLoopAIndex] = false
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 0
    set bj_forLoopAIndexEnd = 9
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set Ae[bj_forLoopAIndex] = I2S(bj_forLoopAIndex)
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set Ae[(bj_forLoopAIndex + 9)] = SubStringBJ("abcdef", bj_forLoopAIndex, bj_forLoopAIndex)
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set gr = false
    set Er = 0
    set Gr = 0
    set hr = .0
    set jr = 0
    set kr = 0
    set Kr = .0
    set lr = 0
    set Lr = .0
    set mr = 0
    set Mr = .0
    set Zv = 1
    set Ne[Zv] = "|cffff0303"
    set Zv = (Zv + 1)
    set Ne[Zv] = "|cff0042ff"
    set Zv = (Zv + 1)
    set Ne[Zv] = "|cff1ce6b9"
    set Zv = (Zv + 1)
    set Ne[Zv] = "|cff540081"
    set Zv = (Zv + 1)
    set Ne[Zv] = "|cfffffc01"
    set Zv = (Zv + 1)
    set Ne[Zv] = "|cfffe8a0e"
    set Zv = (Zv + 1)
    set Ne[Zv] = "|cff20c000"
    set Zv = (Zv + 1)
    set Ne[Zv] = "|cffe55bb0"
    set Zv = (Zv + 1)
    set Ne[Zv] = "|cff959697"
    set Zv = (Zv + 1)
    set Ne[Zv] = "|cff7ebff1"
    set Zv = (Zv + 1)
    set Ne[Zv] = "|cff106246"
    set Zv = (Zv + 1)
    set Ne[Zv] = "|cff4e2a04"
endfunction
function Dk takes nothing returns nothing
    call SetPlayerFlagBJ(PLAYER_STATE_GIVES_BOUNTY, true, GetEnumPlayer())
endfunction
function fk takes nothing returns nothing
    call ForForce(bj_FORCE_ALL_PLAYERS, function Dk)
endfunction
function Fk takes nothing returns boolean
    return(GetPlayerController(GetEnumPlayer()) == MAP_CONTROL_COMPUTER)
endfunction
function gk takes nothing returns boolean
    return(GetEnumPlayer() != Player(5))
endfunction
function Gk takes nothing returns boolean
    return(GetEnumPlayer() != Player(11))
endfunction
function hk takes nothing returns nothing
    if(Fk())then
        if(gk())then
            if(Gk())then
                if IsPlayerAlly(GetEnumPlayer(), Player(5))then
                    call SetPlayerAllianceBJ(GetEnumPlayer(), ALLIANCE_SHARED_CONTROL, true, Player(0))
                    call SetPlayerAllianceBJ(GetEnumPlayer(), ALLIANCE_SHARED_CONTROL, true, Player(1))
                    call SetPlayerAllianceBJ(GetEnumPlayer(), ALLIANCE_SHARED_CONTROL, true, Player(2))
                    call SetPlayerAllianceBJ(GetEnumPlayer(), ALLIANCE_SHARED_CONTROL, true, Player(3))
                    call SetPlayerAllianceBJ(GetEnumPlayer(), ALLIANCE_SHARED_CONTROL, true, Player(4))
                elseif IsPlayerAlly(GetEnumPlayer(), Player(11))then
                    call SetPlayerAllianceBJ(GetEnumPlayer(), ALLIANCE_SHARED_CONTROL, true, Player(6))
                    call SetPlayerAllianceBJ(GetEnumPlayer(), ALLIANCE_SHARED_CONTROL, true, Player(7))
                    call SetPlayerAllianceBJ(GetEnumPlayer(), ALLIANCE_SHARED_CONTROL, true, Player(8))
                    call SetPlayerAllianceBJ(GetEnumPlayer(), ALLIANCE_SHARED_CONTROL, true, Player(9))
                    call SetPlayerAllianceBJ(GetEnumPlayer(), ALLIANCE_SHARED_CONTROL, true, Player(10))
                endif
            endif
        endif
    endif
endfunction
function Hk takes nothing returns nothing
    call ForForce(bj_FORCE_ALL_PLAYERS, function hk)
endfunction
function jk takes nothing returns nothing
    call CreateFogModifierRectBJ(true, GetEnumPlayer(), FOG_OF_WAR_VISIBLE, gC)
endfunction
function Jk takes nothing returns nothing
    call CreateFogModifierRectBJ(true, GetEnumPlayer(), FOG_OF_WAR_VISIBLE, GC)
endfunction
function kk takes nothing returns nothing
    call ForForce(GetPlayersAllies(Player(5)), function jk)
    call ForForce(GetPlayersAllies(Player(11)), function Jk)
endfunction
function Kk takes nothing returns nothing
    call SetPlayerHandicapXPBJ(GetEnumPlayer(), 60.)
endfunction
function lk takes nothing returns nothing
    call AdjustPlayerStateBJ(800, GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD)
endfunction
function Lk takes nothing returns nothing
    call ForForce(bj_FORCE_ALL_PLAYERS, function Kk)
    call ForForce(bj_FORCE_ALL_PLAYERS, function lk)
    call SetUnitInvulnerable(mb, true)
    call SetUnitInvulnerable(Lb, true)
    call SetUnitInvulnerable(Hb, true)
    call SetUnitInvulnerable(jb, true)
endfunction
function mk takes nothing returns nothing
    call SetPlayerStateBJ(GetEnumPlayer(), PLAYER_STATE_RESOURCE_FOOD_CAP, 25)
endfunction
function Mk takes nothing returns nothing
    call ForForce(bj_FORCE_ALL_PLAYERS, function mk)
endfunction
function Pk takes nothing returns boolean
    return(GetPlayerSlotState(Player(- 1 + (bj_forLoopAIndex))) != PLAYER_SLOT_STATE_PLAYING)
endfunction
function qk takes nothing returns nothing
    call VG(GetEnumUnit())
endfunction
function Qk takes nothing returns nothing
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 12
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Pk())then
            call ForGroupBJ(GetUnitsOfPlayerAll(Player(- 1 + (bj_forLoopAIndex))), function qk)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction
function sk takes nothing returns boolean
    return(GetSpellAbilityId() == 'A000')
endfunction
function Sk takes nothing returns nothing
    call SetUnitPositionLoc(sb, GetUnitLoc(Nx))
    call PlaySoundOnUnitBJ(ni, 100, Nx)
    call PauseUnit(Nx, true)
    call AddSpecialEffectLocBJ(GetUnitLoc(Nx), "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
    set ho[1] = bj_lastCreatedEffect
    call AddSpecialEffectTargetUnitBJ("overhead", Nx, "Abilities\\Spells\\Orc\\FeralSpirit\\feralspirittarget.mdl")
    set ho[2] = bj_lastCreatedEffect
    call AddSpecialEffectLocBJ(GetUnitLoc(Nx), "Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl")
    set ho[3] = bj_lastCreatedEffect
    call TerrainDeformationRippleBJ(2., false, OffsetLocation(GetUnitLoc(Nx), 0, 0), 512., 512., 64, 1, 512)
    call UnitAddAbility(sb, 'A001')
    call IssueImmediateOrderById(sb, 852100)
    call UnitRemoveAbility(sb, 'A001')
    call IssueTargetOrderById(sb, 851983, Nx)
    call PolledWait(5.)
    call DestroyEffect(ho[1])
    call DestroyEffect(ho[2])
    call DestroyEffect(ho[3])
    call PauseUnit(Nx, false)
endfunction
function tk takes nothing returns boolean
    return(GetSpellAbilityId() == 'A000')
endfunction
function Tk takes nothing returns nothing
    call SetUnitPositionLoc(sb, GetUnitLoc(Nx))
    call PlaySoundOnUnitBJ(ni, 100, Nx)
    call PauseUnit(Nx, true)
    call AddSpecialEffectLocBJ(GetUnitLoc(Nx), "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
    call AddSpecialEffectTargetUnitBJ("overhead", Nx, "Abilities\\Spells\\Orc\\FeralSpirit\\feralspirittarget.mdl")
    call AddSpecialEffectLocBJ(GetUnitLoc(Nx), "Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl")
    call TerrainDeformationRippleBJ(2., false, OffsetLocation(GetUnitLoc(Nx), 0, 0), 512., 512., 64, 1, 512)
    call UnitAddAbility(sb, 'A001')
    call IssueImmediateOrderById(sb, 852100)
    call UnitRemoveAbility(sb, 'A001')
    call IssueTargetOrderById(sb, 851983, Nx)
    call PolledWait(5.)
    call DestroyEffect(bj_lastCreatedEffect)
    call DestroyEffect(bj_lastCreatedEffect)
    call DestroyEffect(bj_lastCreatedEffect)
    call PauseUnit(Nx, false)
endfunction
function uk takes nothing returns boolean
    return(GetIssuedOrderId() == 852230)
endfunction
function Uk takes nothing returns nothing
    set Nx = GetOrderTargetUnit()
endfunction
function wk takes nothing returns boolean
    return(GetSpellAbilityId() == 'A00I')
endfunction
function Wk takes nothing returns nothing
    call AddSpecialEffectLocBJ(GetUnitLoc(wb), "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
    call AddSpecialEffectTargetUnitBJ("overhead", wb, "Abilities\\Spells\\Orc\\FeralSpirit\\feralspirittarget.mdl")
    call AddSpecialEffectLocBJ(GetUnitLoc(wb), "Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl")
    call TerrainDeformationRippleBJ(2., false, OffsetLocation(GetUnitLoc(wb), 0, 0), 512., 512., 64, 1, 512)
    call UnitAddAbility(wb, 'A00H')
    call IssueImmediateOrderById(wb, 852100)
    call UnitRemoveAbility(wb, 'A00H')
endfunction
function yk takes nothing returns nothing
    call PanCameraToTimedLocForPlayer(GetEnumPlayer(), GetRectCenter(IC), 1.)
endfunction
function Yk takes nothing returns nothing
    call CameraSetEQNoiseForPlayer(GetEnumPlayer(), 8.)
endfunction
function zk takes nothing returns nothing
    call ExplodeUnitBJ(GetEnumUnit())
endfunction
function Zk takes nothing returns nothing
    call CameraClearNoiseForPlayer(GetEnumPlayer())
endfunction
function vK takes nothing returns nothing
    call ForForce(GetPlayersAllies(Player(11)), function yk)
    call PolledWait(2)
    call PlaySoundAtPointBJ(vi, 100, GetRectCenter(IC), 0)
    call AddSpecialEffectLocBJ(GetRectCenter(IC), "Abilities\\Spells\\Human\\ReviveHuman\\ReviveHuman.mdl")
    call AddSpecialEffectLocBJ(GetRectCenter(IC), "Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl")
    call AddSpecialEffectLocBJ(GetRectCenter(IC), "Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl")
    call AddSpecialEffectLocBJ(GetRectCenter(IC), "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl")
    call ForForce(bj_FORCE_PLAYER[11], function Yk)
    call ForGroupBJ(GetUnitsInRectAll(IC), function zk)
    call TerrainDeformationRippleBJ(8., false, GetRectCenter(IC), 1024, 1024, 64, 1, 512)
    call TerrainDeformationCraterBJ(1.5, true, GetRectCenter(IC), 512, 320.)
    call CreateNUnitsAtLoc(1, 'Utic', Player(11), GetRectCenter(IC), bj_UNIT_FACING)
    call UnitRemoveAbility(bj_lastCreatedUnit, 'AInv')
    call SetUnitScalePercent(bj_lastCreatedUnit, 300., 300., 300.)
    call PolledWait(5.)
    call ForForce(GetPlayersAllies(Player(11)), function Zk)
endfunction
function eK takes nothing returns nothing
    call PanCameraToTimedLocForPlayer(GetEnumPlayer(), GetRectCenter(RC), 1.)
endfunction
function xK takes nothing returns nothing
    call CameraSetEQNoiseForPlayer(GetEnumPlayer(), 8.)
endfunction
function oK takes nothing returns nothing
    call ExplodeUnitBJ(GetEnumUnit())
endfunction
function rK takes nothing returns nothing
    call CameraClearNoiseForPlayer(GetEnumPlayer())
endfunction
function iK takes nothing returns nothing
    call TimerDialogDisplay(Lx, false)
    call DestroyTimerDialog(Lx)
    call ForForce(GetPlayersAllies(Player(5)), function eK)
    call PolledWait(2)
    call PlaySoundAtPointBJ(vi, 100, GetRectCenter(RC), 0)
    call AddSpecialEffectLocBJ(GetRectCenter(RC), "Abilities\\Spells\\Human\\ReviveHuman\\ReviveHuman.mdl")
    call AddSpecialEffectLocBJ(GetRectCenter(RC), "Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl")
    call AddSpecialEffectLocBJ(GetRectCenter(RC), "Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl")
    call AddSpecialEffectLocBJ(GetRectCenter(RC), "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl")
    call ForForce(GetPlayersAllies(Player(5)), function xK)
    call ForGroupBJ(GetUnitsInRectAll(RC), function oK)
    call TerrainDeformationRippleBJ(8., false, GetRectCenter(RC), 1024, 1024, 64, 1, 512)
    call TerrainDeformationCraterBJ(1.5, true, GetRectCenter(RC), 512, 320.)
    call CreateNUnitsAtLoc(1, 'Huth', Player(5), GetRectCenter(RC), bj_UNIT_FACING)
    call UnitRemoveAbility(bj_lastCreatedUnit, 'AInv')
    call SetUnitScalePercent(bj_lastCreatedUnit, 300., 300., 300.)
    call PolledWait(5.)
    call ForForce(GetPlayersAllies(Player(5)), function rK)
endfunction
function aK takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'ankh')
endfunction
function nK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'ankh')
endfunction
function VK takes nothing returns boolean
    return(Ix > 1)
endfunction
function EK takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(nK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(VK())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function XK takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'stwp')
endfunction
function OK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'stwp')
endfunction
function RK takes nothing returns boolean
    return(Ix > 1)
endfunction
function IK takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(OK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(RK())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function AK takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I002')
endfunction
function NK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I002')
endfunction
function bK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01R')
endfunction
function BK takes nothing returns boolean
    return(Ix > 1)
endfunction
function cK takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(NK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(bK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(BK())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function CK takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I000')
endfunction
function dK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I000')
endfunction
function DK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02E')
endfunction
function fK takes nothing returns boolean
    return(Ix > 1)
endfunction
function FK takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(dK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(DK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(fK())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function gK takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'IC13')
endfunction
function GK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC13')
endfunction
function hK takes nothing returns boolean
    return(Ix > 1)
endfunction
function HK takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(GK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(hK())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function jK takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I00I')
endfunction
function JK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00M')
endfunction
function kK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00L')
endfunction
function KK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00J')
endfunction
function lK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00K')
endfunction
function LK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00I')
endfunction
function mK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00N')
endfunction
function MK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01H')
endfunction
function pK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01P')
endfunction
function PK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I026')
endfunction
function qK takes nothing returns boolean
    return(Ix > 1)
endfunction
function QK takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(JK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
       set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'evtl')then
             set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(kK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(KK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(lK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(LK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(mK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(MK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(pK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(PK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(qK())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function sK takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I00J')
endfunction
function SK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00M')
endfunction
function tK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00L')
endfunction
function TK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00J')
endfunction
function uK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00K')
endfunction
function UK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00I')
endfunction
function wK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00N')
endfunction
function WK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01H')
endfunction
function yK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01P')
endfunction
function YK takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I026')
endfunction
function zK takes nothing returns boolean
    return(Ix > 1)
endfunction
function ZK takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(SK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(tK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(TK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(uK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(UK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(wK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(WK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(yK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(YK())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(zK())then
        // call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function vl takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I00K')
endfunction
function el takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00M')
endfunction
function xl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00L')
endfunction
function ol takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00J')
endfunction
function rl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00K')
endfunction
function il takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00I')
endfunction
function al takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00N')
endfunction
function nl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01H')
endfunction
function Vl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01P')
endfunction
function El takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I026')
endfunction
function Xl takes nothing returns boolean
    return(Ix > 1)
endfunction
function Ol takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(el())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(xl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(ol())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(rl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(il())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(al())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(nl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Vl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(El())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(Xl())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function Rl takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I00L')
endfunction
function Il takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00M')
endfunction
function Al takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00L')
endfunction
function Nl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00J')
endfunction
function bl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00K')
endfunction
function Bl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00I')
endfunction
function cl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00N')
endfunction
function Cl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01H')
endfunction
function dl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01P')
endfunction
function Dl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I026')
endfunction
function fl takes nothing returns boolean
    return(Ix > 1)
endfunction
function Fl takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Il())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Al())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Nl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(bl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Bl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(cl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Cl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(dl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Dl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(fl())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function gl takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I00N')
endfunction
function Gl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00M')
endfunction
function hl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00L')
endfunction
function Hl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00J')
endfunction
function jl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00K')
endfunction
function Jl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00I')
endfunction
function kl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00N')
endfunction
function Kl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01H')
endfunction
function ll takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01P')
endfunction
function Ll takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I026')
endfunction
function ml takes nothing returns boolean
    return(Ix > 1)
endfunction
function Ml takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Gl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(hl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Hl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(jl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Jl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(kl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Kl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(ll())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Ll())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(ml())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function Pl takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I01H')
endfunction
function ql takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00M')
endfunction
function Ql takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00L')
endfunction
function sl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00J')
endfunction
function Sl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00K')
endfunction
function tl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00I')
endfunction
function Tl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00N')
endfunction
function ul takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01H')
endfunction
function Ul takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01P')
endfunction
function wl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I026')
endfunction
function Wl takes nothing returns boolean
    return(Ix > 1)
endfunction
function yl takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(ql())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Ql())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(sl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Sl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(tl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Tl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(ul())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Ul())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(wl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(Wl())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function Yl takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I01P')
endfunction
function zl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00M')
endfunction
function Zl takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00L')
endfunction
function vL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00J')
endfunction
function eL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00K')
endfunction
function xL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00I')
endfunction
function oL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00N')
endfunction
function rL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01H')
endfunction
function iL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01P')
endfunction
function aL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I026')
endfunction
function nL takes nothing returns boolean
    return(Ix > 1)
endfunction
function VL takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(zl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Zl())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(vL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(eL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(xL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(oL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(rL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(iL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(aL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(nL())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function EL takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I026')
endfunction
function XL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00M')
endfunction
function OL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00L')
endfunction
function RL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00J')
endfunction
function IL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00K')
endfunction
function AL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00I')
endfunction
function NL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00N')
endfunction
function bL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01H')
endfunction
function BL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01P')
endfunction
function cL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I026')
endfunction
function CL takes nothing returns boolean
    return(Ix > 1)
endfunction
function dL takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(XL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(OL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(RL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(IL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(AL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(NL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(bL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(BL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(cL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(CL())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function DL takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I01R')
endfunction
function fL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00S')
endfunction
function FL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00O')
endfunction
function gL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00Q')
endfunction
function GL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00R')
endfunction
function hL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00P')
endfunction
function HL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01R')
endfunction
function jL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I002')
endfunction
function JL takes nothing returns boolean
    return(Ix > 1)
endfunction
function kL takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(fL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(FL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(gL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(GL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(hL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(HL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(jL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(JL())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function KL takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I00M')
endfunction
function lL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00M')
endfunction
function LL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00L')
endfunction
function mL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00J')
endfunction
function ML takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00K')
endfunction
function pL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00I')
endfunction
function PL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00N')
endfunction
function qL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01H')
endfunction
function QL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01P')
endfunction
function sL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I026')
endfunction
function SL takes nothing returns boolean
    return(Ix > 1)
endfunction
function tL takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(lL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(LL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(mL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(ML())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(pL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(PL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(qL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(QL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(sL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(SL())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function TL takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I00O')
endfunction
function uL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00R')
endfunction
function UL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00O')
endfunction
function wL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00Q')
endfunction
function WL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00S')
endfunction
function yL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00P')
endfunction
function YL takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01R')
endfunction
function zL takes nothing returns boolean
    return(Ix > 1)
endfunction
function ZL takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(uL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(UL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(wL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(WL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(yL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(YL())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(zL())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function vm takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I00P')
endfunction
function em takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00R')
endfunction
function xm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00O')
endfunction
function om takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00Q')
endfunction
function rm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00S')
endfunction
function im takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00P')
endfunction
function am takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01R')
endfunction
function nm takes nothing returns boolean
    return(Ix > 1)
endfunction
function Vm takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(em())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(xm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(om())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(rm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(im())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(am())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(nm())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function Em takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I00Q')
endfunction
function Xm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00R')
endfunction
function Om takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00O')
endfunction
function Rm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00Q')
endfunction
function Im takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00S')
endfunction
function Am takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00P')
endfunction
function Nm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01R')
endfunction
function bm takes nothing returns boolean
    return(Ix > 1)
endfunction
function Bm takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Xm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Om())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Rm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Im())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Am())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Nm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(bm())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function cm takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I00R')
endfunction
function Cm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00R')
endfunction
function dm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00O')
endfunction
function Dm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00Q')
endfunction
function fm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00S')
endfunction
function Fm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00P')
endfunction
function gm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01R')
endfunction
function Gm takes nothing returns boolean
    return(Ix > 1)
endfunction
function hm takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Cm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(dm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Dm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(fm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Fm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(gm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(Gm())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function Hm takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I00S')
endfunction
function jm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00S')
endfunction
function Jm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00O')
endfunction
function km takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00Q')
endfunction
function Km takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00R')
endfunction
function lm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00P')
endfunction
function Lm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01R')
endfunction
function mm takes nothing returns boolean
    return(Ix > 1)
endfunction
function Mm takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(jm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Jm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(km())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Km())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(lm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Lm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(mm())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function pm takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I01B')
endfunction
function Pm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01B')
endfunction
function qm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I018')
endfunction
function Qm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I015')
endfunction
function sm takes nothing returns boolean
    return(Ix > 1)
endfunction
function Sm takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Pm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(qm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Qm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(sm())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function tm takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I018')
endfunction
function Tm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01B')
endfunction
function um takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I018')
endfunction
function Um takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I015')
endfunction
function wm takes nothing returns boolean
    return(Ix > 1)
endfunction
function Wm takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Tm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(um())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Um())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(wm())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function ym takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I015')
endfunction
function Ym takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01B')
endfunction
function zm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I018')
endfunction
function Zm takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I015')
endfunction
function vM takes nothing returns boolean
    return(Ix > 1)
endfunction
function eM takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Ym())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(zm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Zm())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(vM())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function xM takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'IC03')
endfunction
function oM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC03')
endfunction
function rM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC15')
endfunction
function iM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC16')
endfunction
function aM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02C')
endfunction
function nM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02N')
endfunction
function VM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02A')
endfunction
function EM takes nothing returns boolean
    return(Ix > 1)
endfunction
function XM takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(oM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(rM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(iM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(aM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(nM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(VM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(EM())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function OM takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'IC15')
endfunction
function RM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC03')
endfunction
function IM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC15')
endfunction
function AM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC16')
endfunction
function NM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02C')
endfunction
function bM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02N')
endfunction
function BM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02A')
endfunction
function cM takes nothing returns boolean
    return(Ix > 1)
endfunction
function CM takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(RM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(IM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(AM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(NM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(bM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(BM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(cM())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function dM takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'IC16')
endfunction
function DM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC03')
endfunction
function fM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC15')
endfunction
function FM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC16')
endfunction
function gM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02C')
endfunction
function GM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02N')
endfunction
function hM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02A')
endfunction
function HM takes nothing returns boolean
    return(Ix > 1)
endfunction
function jM takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(DM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(fM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(FM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(gM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(GM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(hM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(HM())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function JM takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I02C')
endfunction
function kM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC03')
endfunction
function KM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC15')
endfunction
function lM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC16')
endfunction
function LM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02C')
endfunction
function mM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02N')
endfunction
function MM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02A')
endfunction
function pM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00R')
endfunction
function PM takes nothing returns boolean
    return(Ix > 1)
endfunction
function qM takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(kM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(KM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(lM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(LM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(mM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(MM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(pM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(PM())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function QM takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I02N')
endfunction
function sM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC03')
endfunction
function SM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC15')
endfunction
function tM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC16')
endfunction
function TM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02C')
endfunction
function uM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02N')
endfunction
function UM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02A')
endfunction
function wM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00R')
endfunction
function WM takes nothing returns boolean
    return(Ix > 1)
endfunction
function yM takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(sM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(SM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(tM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(TM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(uM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(UM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(wM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(WM())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function YM takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I02A')
endfunction
function zM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC03')
endfunction
function ZM takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC15')
endfunction
function vp takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC16')
endfunction
function ep takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02C')
endfunction
function xp takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02N')
endfunction
function op takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02A')
endfunction
function rp takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00R')
endfunction
function ip takes nothing returns boolean
    return(Ix > 1)
endfunction
function ap takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(zM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(ZM())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(vp())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(ep())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(xp())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(op())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(rp())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(ip())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function np takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I01S' or GetItemTypeId(GetManipulatedItem()) == 'brac' )
endfunction
function Vp takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01S')
endfunction
function Ep takes nothing returns boolean
    return(Ix > 1)
endfunction
function Xp takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Vp()) then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(Ep())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function Op takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetItemTypeId(GetManipulatedItem()) == 'I028')
endfunction
function Rp takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I028')
endfunction
function Ip takes nothing returns boolean
    return(Ix > 1)
endfunction
function Ap takes nothing returns nothing
    set Ix = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Rp())then
            set Ix = (Ix + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(Ip())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    endif
endfunction
function Np takes nothing returns boolean
    return(GetUnitTypeId(GetSummonedUnit()) == 'nech')
endfunction
function bp takes nothing returns nothing
    local effect Bp
    local unit fG
    local group cp = GetUnitsInRectAll(bj_mapInitialPlayableArea)
    local unit array Cp
    local integer dp = 1
    local integer i = 1
    local real r
    set r = 10 + (2 * GetUnitAbilityLevel(Zb[GetPlayerId(GetOwningPlayer(GetSummonedUnit())) + 1], 'A078'))
    call VG(GetSummonedUnit())
    call SetTimeOfDayScalePercentBJ(.0)
    call GroupRemoveUnit(cp, GetSummoningUnit())
    call AddSpecialEffectTargetUnitBJ("overhead", GetSummoningUnit(), "Abilities\\Spells\\Items\\AIta\\CrystalBallCaster.mdl")
    set Bp = bj_lastCreatedEffect
    loop
        set Cp[dp] = GroupPickRandomUnit(cp)
        exitwhen Cp[dp] == null
        call PauseUnit(Cp[dp], true)
        call SetUnitTimeScalePercent(Cp[dp], .0)
        call GroupRemoveUnit(cp, Cp[dp])
        set dp = dp + 1
    endloop
    call TriggerSleepAction(r)
    loop
        exitwhen i > (dp - 1)
        call SetUnitTimeScalePercent(Cp[i], 100.)
        call PauseUnit(Cp[i], false)
        set i = i + 1
    endloop
    call DestroyEffect(Bp)
    call SetTimeOfDayScalePercentBJ(100.)
endfunction
function Dp takes nothing returns boolean
    return(GetSpellAbilityId() == 'A078')
endfunction
function fp takes nothing returns nothing
    call TriggerSleepAction(.5)
    call AddSpecialEffectTargetUnitBJ("overhead", GetSpellAbilityUnit(), "Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl")
    call TriggerSleepAction(3.)
    call DestroyEffect(bj_lastCreatedEffect)
endfunction
function Fp takes nothing returns boolean
    return(GetIssuedOrderId() == 852094)
endfunction
function gp takes nothing returns nothing
    call SetUnitLifePercentBJ(GetOrderedUnit(), 100)
endfunction
function Gp takes nothing returns boolean
    return((GetUnitTypeId(GetOrderedUnit()) == 'Otcc')and(GetIssuedOrderId() == 852127))
endfunction
function hp takes nothing returns boolean
    return(GetFilterUnit() != GetOrderedUnit())
endfunction
function Hp takes nothing returns nothing
    call AddSpecialEffectLocBJ(GetUnitLoc(GetEnumUnit()), "Abilities\\Weapons\\Mortar\\MortarMissile.mdl")
    call DestroyEffect(bj_lastCreatedEffect)
    call SetWidgetLife(GetEnumUnit(), GetUnitStateSwap(UNIT_STATE_LIFE, GetEnumUnit()) - 50)
endfunction
function jp takes nothing returns nothing
    local real mana = GetUnitStateSwap(UNIT_STATE_MANA, GetOrderedUnit())
    local real life = GetUnitStateSwap(UNIT_STATE_LIFE, GetOrderedUnit())
    local unit Jp = GetOrderedUnit()
    local player kp = GetOwningPlayer(Jp)
    call CreateFogModifierRadiusLocBJ(true, kp, FOG_OF_WAR_VISIBLE, GetUnitLoc(GetOrderedUnit()), 500.)
    call CreateNUnitsAtLoc(1, 'ewsp', kp, GetUnitLoc(GetOrderedUnit()), bj_UNIT_FACING)
    call KillUnit(bj_lastCreatedUnit)
    call ForGroup(GetUnitsInRangeOfLocMatching(400., GetUnitLoc(GetOrderedUnit()), Condition(function hp)), function Hp)
    call DestroyFogModifier(bj_lastCreatedFogModifier)
endfunction
function Kp takes nothing returns boolean
    return((GetUnitTypeId(GetOrderedUnit()) == 'H002')and(GetIssuedOrderId() == 852127))
endfunction
function lp takes nothing returns boolean
    return(GetFilterUnit() != GetOrderedUnit())
endfunction
function Lp takes nothing returns nothing
    call AddSpecialEffectLocBJ(GetUnitLoc(GetEnumUnit()), "Abilities\\Weapons\\Mortar\\MortarMissile.mdl")
    call DestroyEffect(bj_lastCreatedEffect)
    call SetWidgetLife(GetEnumUnit(), GetUnitStateSwap(UNIT_STATE_LIFE, GetEnumUnit()) - 50)
endfunction
function mp takes nothing returns nothing
    local real mana = GetUnitStateSwap(UNIT_STATE_MANA, GetOrderedUnit())
    local real life = GetUnitStateSwap(UNIT_STATE_LIFE, GetOrderedUnit())
    local unit Jp = GetOrderedUnit()
    local player kp = GetOwningPlayer(Jp)
    call CreateFogModifierRadiusLocBJ(true, kp, FOG_OF_WAR_VISIBLE, GetUnitLoc(GetOrderedUnit()), 500.)
    call CreateNUnitsAtLoc(1, 'ewsp', kp, GetUnitLoc(GetOrderedUnit()), bj_UNIT_FACING)
    call KillUnit(bj_lastCreatedUnit)
    call ForGroup(GetUnitsInRangeOfLocMatching(400., GetUnitLoc(GetOrderedUnit()), Condition(function lp)), function Lp)
    call DestroyFogModifier(bj_lastCreatedFogModifier)
endfunction
function Mp takes nothing returns boolean
    if GetSpellAbilityId() == 'A0A3' or GetSpellAbilityId() == 'A00Y' then
        return true
    else
        return false
    endif
endfunction
function pp takes nothing returns nothing
    if GetSpellAbilityId() == 'A0A3' then
        set sx = GetSpellAbilityUnit()
        call PauseUnit(sx, true)
        call PolledWait(3.)
        call PauseUnit(sx, false)
    elseif GetSpellAbilityId() == 'A00Y' then
        set Qx = GetSpellAbilityUnit()
        call PauseUnit(Qx, true)
        call PolledWait(3.)
        call PauseUnit(Qx, false)
    endif
endfunction
function Pp takes nothing returns boolean
    return GetSpellAbilityId() == 'A06K'
endfunction
function qp takes nothing returns nothing
    local location l = GetUnitLoc(GetTriggerUnit())
    local integer i = 1
    local unit u
    local player p = GetOwningPlayer(GetTriggerUnit())
    loop
        exitwhen i > 16
        set u = CreateUnit(p, 'n02V', GetLocationX(l), GetLocationY(l), bj_UNIT_FACING)
        call SetUnitAbilityLevelSwapped('A06E', u, GetUnitAbilityLevelSwapped('A06K', GetTriggerUnit()))
        call IssuePointOrderByIdLoc(u, 852555, PolarProjectionBJ(l, 100., (22.5 * i)))
        call UnitApplyTimedLife(u, 'BTLF', 1.)
        set i = i + 1
    endloop
    call RemoveLocation(l)
    set l = null
    set p = null
    set u = null
endfunction
function Qp takes nothing returns boolean
    return GetSpellAbilityId() == 'A06G'
endfunction
function sp takes nothing returns boolean
    return(GetFilterUnit() != GetTriggerUnit())
endfunction
function Sp takes nothing returns nothing
    local integer i = GetUnitAbilityLevel(GetTriggerUnit(), 'A06G')
    local unit u
    local unit v
    local real r = 5 + (i * 2)
    local timer t = CreateTimer()
    local location l = GetSpellTargetLoc()
    local group g
    set u = CreateUnit(GetOwningPlayer(GetTriggerUnit()), 'u00K', GetLocationX(l), GetLocationY(l), bj_UNIT_FACING)
    call TriggerSleepAction(.3)
    call UnitApplyTimedLife(u, 'BTLF', r)
    call SetUnitTimeScalePercent(u, .0)
    set g = GetUnitsInRangeOfLocMatching(425., l, Condition(function sp))
    call StartTimerBJ(t, false, r)
    loop
        exitwhen TimerGetRemaining(t) <= .0
        loop
            set v = FirstOfGroup(g)
            exitwhen v == null
            call GroupRemoveUnit(g, v)
            call GroupAddUnit(OB, v)
            call PauseUnit(v, true)
            call SetUnitTimeScalePercent(v, .0)
        endloop
        if(TimerGetRemaining(t) < .8)then
            call TriggerSleepAction(.1)
        else
            call TriggerSleepAction(.3)
        endif
        call DestroyGroup(g)
        set g = GetUnitsInRangeOfLocMatching(425., l, Condition(function sp))
    endloop
    loop
        set v = FirstOfGroup(g)
        exitwhen v == null
        call GroupRemoveUnit(g, v)
        call PauseUnit(v, false)
        call SetUnitTimeScalePercent(v, 100.)
    endloop
    loop
        set v = FirstOfGroup(OB)
        exitwhen v == null
        call GroupRemoveUnit(OB, v)
        call PauseUnit(v, false)
        call SetUnitTimeScalePercent(v, 100.)
    endloop
    call DestroyTimer(t)
    set u = null
    call RemoveLocation(l)
    set l = null
    call DestroyGroup(g)
    set g = null
endfunction
function tp takes nothing returns boolean
    return(GetSpellAbilityId() == 'A094')
endfunction
function Tp takes nothing returns nothing
    call AddSpecialEffectTargetUnitBJ("overhead", GetSpellAbilityUnit(), "Abilities\\Weapons\\Bolt\\BoltImpact.mdl")
    call PlaySoundBJ(ii)
    call DestroyEffect(bj_lastCreatedEffect)
endfunction
function Up takes nothing returns boolean
    return(GetSpellAbilityId() == 'A094')
endfunction
function wp takes nothing returns boolean
    return GetBooleanAnd(IsUnitAliveBJ(GetFilterUnit()), IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetSpellAbilityUnit())))
endfunction
function Wp takes nothing returns nothing
    local unit yp = GetSpellAbilityUnit()
    local integer i = 0
    local group Yp
    local unit zp
    local unit Zp = GetSpellTargetUnit()
    local effect vP
    local effect eP
    local location R
    local real uj = GetRandomReal(250., 300.) + (I2R(GetHeroLevel(yp)) * 2.)
    local integer xP = 2 + (GetUnitAbilityLevelSwapped('A094', yp) * 5)
    call TriggerSleepAction(.2)
    call SelectUnitRemove(yp)
    call SetUnitVertexColorBJ(yp, 100, 100, 100, 40.)
    call SetUnitInvulnerable(yp, true)
    call AddSpecialEffectTargetUnitBJ("weapon", yp, "Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl")
    set vP = bj_lastCreatedEffect
    call AddSpecialEffectTargetUnitBJ("chest", yp, "Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl")
    set eP = bj_lastCreatedEffect
    call SetUnitPositionLocFacingBJ(yp, PolarProjectionBJ(GetUnitLoc(Zp), 50., GetRandomReal(0, 360)), AngleBetweenPoints(GetUnitLoc(yp), GetUnitLoc(Zp)))
    call UnitDamageTargetBJ(yp, Zp, (GetRandomReal(300., 350.) + (I2R(GetHeroLevel(yp)) * 2.)), ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL)
    call SetUnitAnimation(yp, "attack")
    call TriggerSleepAction(.2)
    call SelectUnitRemove(yp)
    call DestroyEffect(eP)
    loop
        set i = i + 1
        exitwhen i > xP
        set Yp = GetUnitsInRangeOfLocMatching(500., GetUnitLoc(yp), Condition(function wp))
        if(IsUnitGroupEmptyBJ(Yp) == false)then
            set zp = GroupPickRandomUnit(Yp)
            set R = GetUnitLoc(zp)
            call AddSpecialEffectTargetUnitBJ("chest", yp, "Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl")
            set eP = bj_lastCreatedEffect
            call SetUnitPositionLocFacingBJ(yp, PolarProjectionBJ(R, 50., GetRandomReal(0, 360)), AngleBetweenPoints(GetUnitLoc(yp), GetUnitLoc(zp)))
            call UnitDamageTargetBJ(yp, zp, (uj), ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL)
            call SetUnitAnimation(yp, "attack")
            call RemoveLocation(R)
            call TriggerSleepAction(.2)
            call SelectUnitRemove(yp)
            call DestroyEffect(eP)
        endif
    endloop
    call GroupClear(Yp)
    call SelectUnitForPlayerSingle(yp, GetTriggerPlayer())
    call SetUnitInvulnerable(yp, false)
    call SetUnitVertexColorBJ(yp, 100, 100, 100, .0)
    call DestroyEffect(vP)
    set vP = null
    set eP = null
    set yp = null
    call DestroyGroup(Yp)
    set Yp = null
    set zp = null
    set Zp = null
    set i = 0
    set xP = 0
    set R = null
    set uj = 0
endfunction
function oP takes nothing returns boolean
    return(GetIssuedOrderId() == 852127)and(GetUnitTypeId(GetOrderedUnit()) == 'Hamg')
endfunction
function rP takes nothing returns nothing
    call AddSpecialEffectTargetUnitBJ("overhead", GetOrderedUnit(), "Abilities\\Spells\\Undead\\FrostArmor\\FrostArmorTarget.mdl")
    call SetPlayerAbilityAvailableBJ(true, 'Afrz', GetOwningPlayer(GetOrderedUnit()))
    call SetPlayerAbilityAvailableBJ(true, 'Afrb', GetOwningPlayer(GetOrderedUnit()))
    set Ze = GetOrderedUnit()
    call TriggerExecute(ln)
endfunction
function iP takes nothing returns boolean
    return(IsUnitAliveBJ(Ze))
endfunction
function aP takes nothing returns boolean
    return(GetUnitStateSwap(UNIT_STATE_MANA, Ze) >= 100.)
endfunction
function nP takes nothing returns boolean
    return GetBooleanAnd(iP(), aP())
endfunction
function VP takes nothing returns nothing
    call SetUnitManaBJ(Ze, (GetUnitStateSwap(UNIT_STATE_MANA, Ze) - 25.))
    call TriggerSleepAction(1.)
    if(nP())then
        call TriggerExecute(ln)
    else
        call TriggerExecute(Ln)
    endif
endfunction
function EP takes nothing returns nothing
    call DestroyEffect(bj_lastCreatedEffect)
    call SetPlayerAbilityAvailableBJ(false, 'Afrz', GetOwningPlayer(Ze))
    call SetPlayerAbilityAvailableBJ(false, 'Afrb', GetOwningPlayer(Ze))
endfunction
function XP takes nothing returns boolean
    return(GetSpellAbilityId() == 'A07S')
endfunction
function OP takes nothing returns boolean
    return(IsUnitDeadBJ(GetTriggerUnit()) == false)
endfunction
function RP takes nothing returns boolean
    return(IsUnitDeadBJ(GetTriggerUnit()) == false)
endfunction
function IP takes nothing returns boolean
    return(IsUnitDeadBJ(GetTriggerUnit()) == false)
endfunction
function AP takes nothing returns boolean
    return(IsUnitDeadBJ(GetTriggerUnit()) == false)
endfunction
function NP takes nothing returns boolean
    return(IsUnitDeadBJ(GetTriggerUnit()) == false)
endfunction
function bP takes nothing returns nothing
    if(OP())then
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
    endif
    call TriggerSleepAction(.2)
    call AddSpecialEffectTargetUnitBJ("overhead", GetTriggerUnit(), "Objects\\Spawnmodels\\NightElf\\EntBirthTarget\\EntBirthTarget.mdl")
    if(RP())then
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
    endif
    call TriggerSleepAction(.2)
    call AddSpecialEffectTargetUnitBJ("overhead", GetTriggerUnit(), "Objects\\Spawnmodels\\NightElf\\EntBirthTarget\\EntBirthTarget.mdl")
    if(IP())then
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
    endif
    call TriggerSleepAction(.2)
    call AddSpecialEffectTargetUnitBJ("overhead", GetTriggerUnit(), "Objects\\Spawnmodels\\NightElf\\EntBirthTarget\\EntBirthTarget.mdl")
    if(AP())then
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
    endif
    call TriggerSleepAction(.2)
    call AddSpecialEffectTargetUnitBJ("overhead", GetTriggerUnit(), "Objects\\Spawnmodels\\NightElf\\EntBirthTarget\\EntBirthTarget.mdl")
    if(NP())then
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
        call CreateNUnitsAtLocFacingLocBJ(1, 'u00M', GetOwningPlayer(GetTriggerUnit()), GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), GetUnitLoc(GetTriggerUnit()))
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call SetUnitAbilityLevelSwapped('A07W', bj_lastCreatedUnit, GetUnitAbilityLevelSwapped('A07S', GetTriggerUnit()))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852226, bj_lastCreatedUnit)
        call TriggerSleepAction(.1)
    endif
    call TriggerSleepAction(.25)
    call DestroyEffect(bj_lastCreatedEffect)
endfunction
function BP takes nothing returns integer
    return 'A07E'
endfunction
function cP takes nothing returns integer
    return 'h01F'
endfunction
function CP takes nothing returns integer
    return 'A07F'
endfunction
function dP takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetSpellAbilityUnit())))
endfunction
function DP takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false)
endfunction
function fP takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false)
endfunction
function FP takes nothing returns boolean
    return GetBooleanAnd(DP(), fP())
endfunction
function gP takes nothing returns boolean
    return GetBooleanAnd(dP(), FP())
endfunction
function GP takes nothing returns boolean
    return(GetSpellAbilityId() == BP())
endfunction
function hP takes nothing returns nothing
    call CreateNUnitsAtLoc(1, cP(), GetOwningPlayer(GetSpellAbilityUnit()), GetSpellTargetLoc(), bj_UNIT_FACING)
    call RemoveLocation(GetUnitLoc(bj_lastCreatedUnit))
    call UnitAddAbility(bj_lastCreatedUnit, CP())
    call IssueTargetOrderById(bj_lastCreatedUnit, 852106, GetEnumUnit())
    call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
endfunction
function HP takes nothing returns nothing
    call RemoveLocation(GetUnitLoc(GetEnumUnit()))
    call ForGroupBJ(GetUnitsInRangeOfLocMatching((100. * I2R(GetUnitAbilityLevelSwapped('A07E', GetSpellAbilityUnit()))), GetSpellTargetLoc(), Condition(function gP)), function hP)
endfunction
function jP takes nothing returns integer
    return 'A07G'
endfunction
function TriumphCoil takes nothing returns integer
    return 'A07H'
endfunction
function TriumphDummy takes nothing returns integer
    return 'h01E'
endfunction
function JP takes nothing returns real
    return 1000.
endfunction
function kP takes nothing returns boolean
    return GetSpellAbilityId() == jP()
endfunction
function KP takes nothing returns boolean
    return(not(IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE)))and(not(IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL)))and(not(IsUnitType(GetFilterUnit(), UNIT_TYPE_MAGIC_IMMUNE)))and GetWidgetLife(GetFilterUnit()) > 0
endfunction
function lP takes nothing returns nothing
    local unit LP = GetTriggerUnit()
    local unit mP = LP
    local unit MP = LP
    local unit pP
    local unit u
    local unit PP
    local group g = CreateGroup()
    local integer i = 1
    local boolean qP = true
    local boolean QP
    local real X = GetUnitX(LP)
    local real Y = GetUnitY(LP)
    loop
        exitwhen qP == false or i > 3
        set qP = false
        call GroupEnumUnitsInRange(g, X, Y, JP(), Condition(function KP))
        set u = FirstOfGroup(g)
        set QP = true
        loop
            exitwhen u == null
            call GroupRemoveUnit(g, u)
            if IsUnitEnemy(u, GetOwningPlayer(LP))and u != mP and u != MP then
                if QP then
                    set PP = u
                endif
                set QP = false
                if GetWidgetLife(u) <= GetWidgetLife(PP)then
                    set PP = u
                    set qP = true
                endif
            endif
            set u = FirstOfGroup(g)
        endloop
        if qP then
            if i == 1 then
                set mP = PP
            elseif i == 2 then
                set MP = PP
            endif
            set pP = CreateUnit(GetOwningPlayer(LP), 'e00O', GetUnitX(LP), GetUnitY(LP), 0)
            call SetUnitFlyHeight(pP, GetUnitFlyHeight(LP), 0)
            call UnitApplyTimedLife(pP, 'BTLF', 2)
            call UnitAddAbility(pP, 'A09R')
            call SetUnitAbilityLevel(pP, 'A09R', GetUnitAbilityLevel(LP, jP()))
            call IssueTargetOrder(pP, "shadowstrike", PP)
            set Zb[GetPlayerId(GetOwningPlayer(LP)) + 1] = LP
        endif
        set i = i + 1
    endloop
    set mP = LP
    set MP = LP
    set qP = true
    set i = 1
    call GroupClear(g)
    loop
        exitwhen qP == false or i > 3
        set qP = false
        call GroupEnumUnitsInRange(g, X, Y, JP(), Condition(function KP))
        set u = FirstOfGroup(g)
        set QP = true
        loop
            exitwhen u == null
            call GroupRemoveUnit(g, u)
            if IsUnitAlly(u, GetOwningPlayer(LP))and u != mP and u != MP then
                if QP then
                    set PP = u
                endif
                set QP = false
                if GetWidgetLife(u) <= GetWidgetLife(PP)then
                    set PP = u
                    set qP = true
                endif
            endif
            set u = FirstOfGroup(g)
        endloop
        if qP then
            if i == 1 then
                set mP = PP
            elseif i == 2 then
                set MP = PP
            endif
            set pP = CreateUnit(GetOwningPlayer(LP), 'e00O', GetUnitX(LP), GetUnitY(LP), 0)
            call SetUnitFlyHeight(pP, GetUnitFlyHeight(LP), 0)
            call UnitApplyTimedLife(pP, 'BTLF', 2)
            call UnitAddAbility(pP, 'A09R')
            call SetUnitAbilityLevel(pP, 'A09R', GetUnitAbilityLevel(LP, jP()))
            call IssueTargetOrder(pP, "shadowstrike", PP)
            set Zb[GetPlayerId(GetOwningPlayer(LP)) + 1] = LP
        endif
        set i = i + 1
    endloop
    set LP = null
    set pP = null
    set mP = null
    set MP = null
    set u = null
    set PP = null
    call DestroyGroup(g)
    set g = null
endfunction
function sP takes nothing returns boolean
    return(GetSpellAbilityId() == 'S002')
endfunction
function SP takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit()))
endfunction
function tP takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function TP takes nothing returns boolean
    return GetBooleanAnd(SP(), tP())
endfunction
function uP takes nothing returns nothing
    local real UP = (GetHeroInt(GetTriggerUnit(), true) * 4)
    call PlaySoundOnUnitBJ(ai, 100, GetEnumUnit())
    call AddSpecialEffectLocBJ(GetUnitLoc(GetEnumUnit()), "Doodads\\Cinematic\\Lightningbolt\\Lightningbolt.mdl")
    call ConditionalTriggerExecute(kX)
    call Tj(UP, GetEnumUnit(), GetOwningPlayer(GetTriggerUnit()))
    call TriggerSleepAction(.0)
endfunction
function wP takes nothing returns nothing
    call ExplodeUnitBJ(GetEnumUnit())
endfunction
function WP takes nothing returns nothing
    local location yP = Yx[(1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]
    call SetUnitUserData(GetTriggerUnit(), 45)
    loop
        exitwhen(GetUnitUserData(GetTriggerUnit()) == 33)
        call TriggerSleepAction(1.)
        call UnitAddAbility(CreateUnitAtLoc(GetOwningPlayer(GetTriggerUnit()), 'n00Z', GetRandomLocInRect(RectFromCenterSizeBJ(yP, 200., 200.)), bj_UNIT_FACING), 'Aloc')
        call TriggerSleepAction(1.)
        set bj_wantDestroyGroup = true
        call ForGroupBJ(GetUnitsInRangeOfLocMatching(250., yP, Condition(function TP)), function uP)
    endloop
    set bj_wantDestroyGroup = true
    call ForGroupBJ(GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetTriggerUnit()), 'n00Z'), function wP)
endfunction
function YP takes nothing returns boolean
    return(GetSpellAbilityId() == 'S003')
endfunction
function zP takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit()))
endfunction
function ZP takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function vq takes nothing returns boolean
    return GetBooleanAnd(zP(), ZP())
endfunction
function eq takes nothing returns nothing
    local real UP = (GetHeroStr(GetTriggerUnit(), true) * 2.85)
    call PlaySoundOnUnitBJ(ai, 100, GetEnumUnit())
    call AddSpecialEffectLocBJ(GetUnitLoc(GetEnumUnit()), "Doodads\\Cinematic\\Lightningbolt\\Lightningbolt.mdl")
    call ConditionalTriggerExecute(kX)
    call Tj(UP, GetEnumUnit(), GetOwningPlayer(GetTriggerUnit()))
    call TriggerSleepAction(.0)
endfunction
function xq takes nothing returns nothing
    call ExplodeUnitBJ(GetEnumUnit())
endfunction
function oq takes nothing returns nothing
    local location yP = Yx[(1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]
    call SetUnitUserData(GetTriggerUnit(), 45)
    loop
        exitwhen(GetUnitUserData(GetTriggerUnit()) == 33)
        call TriggerSleepAction(1.)
        call UnitAddAbility(CreateUnitAtLoc(GetOwningPlayer(GetTriggerUnit()), 'n00Z', GetRandomLocInRect(RectFromCenterSizeBJ(yP, 200., 200.)), bj_UNIT_FACING), 'Aloc')
        call TriggerSleepAction(1.)
        set bj_wantDestroyGroup = true
        call ForGroupBJ(GetUnitsInRangeOfLocMatching(250., yP, Condition(function vq)), function eq)
    endloop
    set bj_wantDestroyGroup = true
    call ForGroupBJ(GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetTriggerUnit()), 'n00Z'), function xq)
endfunction
function rq takes nothing returns boolean
    return(GetIssuedOrderId() == 852121)and(GetUnitTypeId(GetTriggerUnit()) == 'H00O')
endfunction
function iq takes nothing returns nothing
    set Yx[(1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))] = GetOrderPointLoc()
endfunction
function aq takes nothing returns boolean
    return(GetIssuedOrderId() == 852121)and(GetUnitTypeId(GetTriggerUnit()) == 'Othr')
endfunction
function nq takes nothing returns nothing
    set Yx[(1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))] = GetOrderPointLoc()
endfunction
function Vq takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit()) == 'n00S')
endfunction
function Eq takes nothing returns boolean
    return(GetRandomInt(1, 100) <= 50)
endfunction
function Xq takes nothing returns boolean
    return(GetRandomInt(1, 100) <= 67)
endfunction
function Oq takes nothing returns nothing
    if(Xq())then
        if(Eq())then
            call UnitAddAbility(GetTriggerUnit(), 'S000')
        else
            call UnitAddAbility(GetTriggerUnit(), 'S001')
        endif
    endif
    call UnitAddAbility(GetTriggerUnit(), 'Aloc')
    call UnitAddAbility(GetTriggerUnit(), 'Awan')
    if GetUnitTypeId(Zb[GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1]) == 'Harf' then
        call UnitAddAbility(GetTriggerUnit(), 'Avul')
        call UnitMakeAbilityPermanent(GetTriggerUnit(), true, 'Avul')
    endif
endfunction
function Rq takes nothing returns boolean
    return(GetUnitTypeId(GetSummonedUnit()) == 'n00S')
endfunction
function Iq takes nothing returns nothing
    local unit Aq = GetSummonedUnit()
    local unit Nq = GetSummoningUnit()
    local location fG
    local real sG
    local real bq
    loop
        exitwhen IsUnitDeadBJ(Aq)
        if(DistanceBetweenPoints(GetUnitLoc(Aq), GetUnitLoc(Nq)) > 1000.)then
            set fG = GetUnitLoc(Nq)
            call IssuePointOrderByIdLoc(Aq, 851986, fG)
            call RemoveLocation(fG)
        else
            set fG = GetUnitLoc(Nq)
            set sG = GetRandomReal(0, 360)
            set bq = GetRandomReal(100., 500.)
            call sj(fG, bq, sG)
            call IssuePointOrderByIdLoc(Aq, 851983, fG)
            call RemoveLocation(fG)
        endif
        call TriggerSleepAction(.5)
    endloop
endfunction
function Bq takes nothing returns boolean
    return(GetUnitTypeId(GetSummonedUnit()) == 'n02O')
endfunction
function cq takes nothing returns nothing
    local unit Cq = GetSummonedUnit()
    local unit dq = GetSummoningUnit()
    local location Dq
    local real fq
    local real Fq
    loop
        exitwhen IsUnitDeadBJ(Cq)
        if(DistanceBetweenPoints(GetUnitLoc(Cq), GetUnitLoc(dq)) > 1000.)then
            set Dq = GetUnitLoc(dq)
            call IssuePointOrderByIdLoc(Cq, 851986, Dq)
            call RemoveLocation(Dq)
        else
            set Dq = GetUnitLoc(dq)
            set fq = GetRandomReal(0, 360)
            set Fq = GetRandomReal(100., 500.)
            call sj(Dq, Fq, fq)
            call IssuePointOrderByIdLoc(Cq, 851983, Dq)
            call RemoveLocation(Dq)
        endif
        call TriggerSleepAction(.5)
    endloop
endfunction
function gq takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit()) == 'n02O')
endfunction
function Gq takes nothing returns boolean
    return(GetRandomInt(1, 100) <= 50)
endfunction
function hq takes nothing returns boolean
    return(GetRandomInt(1, 100) <= 67)
endfunction
function Hq takes nothing returns nothing
    if(hq())then
        if(Gq())then
            call UnitAddAbility(GetTriggerUnit(), 'S000')
        else
            call UnitAddAbility(GetTriggerUnit(), 'S000')
        endif
    endif
    call UnitAddAbility(GetTriggerUnit(), 'Aloc')
    call UnitAddAbility(GetTriggerUnit(), 'Awan')
endfunction
function jq takes nothing returns boolean
    return(GetSpellAbilityId() == 'A09H')
endfunction
function Jq takes nothing returns boolean
    return(IsUnitAlly(GetFilterUnit(), GetOwningPlayer(Qr)) == false)
endfunction
function kq takes nothing returns nothing
    call UnitDamageTargetBJ(Qr, GetEnumUnit(), (I2R(GetHeroStatBJ(1, Qr, true)) * 2.5), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
endfunction
function Kq takes nothing returns nothing
    set Qr = GetSpellAbilityUnit()
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(600., GetUnitLoc(Qr), Condition(function Jq)), function kq)
    call EnableTrigger(Wn)
    call TriggerSleepAction(7.)
    call DisableTrigger(Wn)
endfunction
function lq takes nothing returns nothing
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Qr), 600., 600.)), "Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl")
endfunction
function Lq takes nothing returns boolean
    return GetSpellAbilityId() == 'A09E'
endfunction
function mq takes nothing returns nothing
    local location Zp = GetSpellTargetLoc()
    local unit yp = GetTriggerUnit()
    local player Mq = GetOwningPlayer(yp)
    local integer i = 1
    local location pq
    local unit Pq
    local integer qq = 9 + (9 * GetUnitAbilityLevelSwapped('A09E', yp))
    call TriggerSleepAction(.25)
    loop
        exitwhen i > qq
        set Pq = CreateUnit(Mq, 'e00M', GetUnitX(yp), GetUnitY(yp), bj_UNIT_FACING)
        set pq = PolarProjectionBJ(Zp, GetRandomReal(0, 360), GetRandomReal(0, 360))
        call IssuePointOrderById(Pq, 851984, GetLocationX(pq), GetLocationY(pq))
        call RemoveLocation(pq)
        call UnitApplyTimedLife(Pq, 'BTLF', .5)
        set i = i + 1
    endloop
    call RemoveLocation(Zp)
    set Zp = null
    set pq = null
    set yp = null
    set Pq = null
    set Mq = null
endfunction
function Qq takes nothing returns boolean
    return(GetSpellAbilityId() == 'A09G')and(GetUnitTypeId(GetSpellAbilityUnit()) == 'N025')
endfunction
function sq takes nothing returns nothing
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[1] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[2] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[3] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[4] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[5] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[6] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[7] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[8] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[9] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[10] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[11] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[12] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[13] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[14] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[15] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[16] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[17] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[18] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[19] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(GetTriggerUnit()), 600., 600.)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    set qr[20] = bj_lastCreatedEffect
    call PolledWait(.02)
    call DestroyEffect(qr[1])
    call DestroyEffect(qr[2])
    call DestroyEffect(qr[3])
    call DestroyEffect(qr[4])
    call DestroyEffect(qr[5])
    call DestroyEffect(qr[6])
    call DestroyEffect(qr[7])
    call DestroyEffect(qr[8])
    call DestroyEffect(qr[9])
    call DestroyEffect(qr[10])
    call DestroyEffect(qr[11])
    call DestroyEffect(qr[12])
    call DestroyEffect(qr[13])
    call DestroyEffect(qr[14])
    call DestroyEffect(qr[15])
    call DestroyEffect(qr[16])
    call DestroyEffect(qr[17])
    call DestroyEffect(qr[18])
    call DestroyEffect(qr[19])
    call DestroyEffect(qr[20])
endfunction
function Sq takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit()) == 'E00E')and(UnitHasBuffBJ(GetTriggerUnit(), 'B01A'))and(IsUnitIllusion(GetTriggerUnit()) == false)and(IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function tq takes nothing returns boolean
    return(Sq())
endfunction
function Tq takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function uq takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit()))
endfunction
function Uq takes nothing returns boolean
    return GetBooleanAnd(Tq(), uq())
endfunction
function wq takes nothing returns nothing
    call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Weapons\\Blood\\BloodImpact.mdl")
    call ConditionalTriggerExecute(vV)
    call UnitDamageTargetBJ(GetTriggerUnit(), GetEnumUnit(), (30. * I2R(GetUnitAbilityLevelSwapped('A09C', GetTriggerUnit()))), ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL)
endfunction
function Wq takes nothing returns boolean
    return(GetRandomInt(1, 100) <= 15)
endfunction
function yq takes nothing returns nothing
    if(Wq())then
        set pr = GetUnitLoc(GetTriggerUnit())
        set Pr = GetUnitsInRangeOfLocMatching(300., pr, Condition(function Uq))
        call ForGroupBJ(Pr, function wq)
        call SetUnitAnimation(GetTriggerUnit(), "spin")
        call RemoveLocation(pr)
        set pr = null
        call DestroyGroup(Pr)
        set Pr = null
        call DisableTrigger(GetTriggeringTrigger())
        call TriggerSleepAction(.25)
        call EnableTrigger(GetTriggeringTrigger())
        call SetUnitAnimation(GetTriggerUnit(), "stand")
    endif
endfunction
function Yq takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit()) == 'E00E')and(UnitHasBuffBJ(GetTriggerUnit(), 'B01A'))and(IsUnitIllusion(GetTriggerUnit()))and(IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function zq takes nothing returns boolean
    return(Yq())
endfunction
function Zq takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function vQ takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit()))
endfunction
function eQ takes nothing returns boolean
    return GetBooleanAnd(Zq(), vQ())
endfunction
function xQ takes nothing returns nothing
    call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Weapons\\Blood\\BloodImpact.mdl")
    call ConditionalTriggerExecute(vV)
endfunction
function oQ takes nothing returns boolean
    return(GetRandomInt(1, 100) <= 15)
endfunction
function rQ takes nothing returns nothing
    if(oQ())then
        set pr = GetUnitLoc(GetTriggerUnit())
        set Pr = GetUnitsInRangeOfLocMatching(300., pr, Condition(function eQ))
        call ForGroupBJ(Pr, function xQ)
        call SetUnitAnimation(GetTriggerUnit(), "spin")
        call RemoveLocation(pr)
        set pr = null
        call DestroyGroup(Pr)
        set Pr = null
        call DisableTrigger(GetTriggeringTrigger())
        call TriggerSleepAction(.25)
        call EnableTrigger(GetTriggeringTrigger())
        call SetUnitAnimation(GetTriggerUnit(), "stand")
    endif
endfunction
function iQ takes nothing returns nothing
    local effect f = bj_lastCreatedEffect
    call TriggerSleepAction(1.)
    call DestroyEffect(f)
    set f = null
endfunction
function aQ takes nothing returns nothing
    if(not(GetLearnedSkill() == 'A08V'))then
        return
    endif
    set mr = (mr + 1)
    set Mr = (Mr + 1)
endfunction
function nQ takes nothing returns boolean
    return(UnitHasBuffBJ(GetAttacker(), 'B010'))and(IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker())))
endfunction
function VQ takes nothing returns boolean
    return(GetRandomInt(1, 100) <= (mr * 2))
endfunction
function EQ takes nothing returns nothing
    if(VQ())then
        call CreateNUnitsAtLoc(1, 'o00N', GetOwningPlayer(GetAttacker()), GetUnitLoc(GetAttacker()), bj_UNIT_FACING)
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852066, GetAttacker())
    endif
endfunction
function XQ takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'tret')and(GetUnitTypeId(GetManipulatingUnit()) == 'H003')
endfunction
function OQ takes nothing returns nothing
    set mr = 0
    set Mr = .0
endfunction
function RQ takes nothing returns nothing
    if(not(GetLearnedSkill() == 'A08S'))then
        return
    endif
    set lr = (lr + 1)
    set Lr = (Lr + 1)
endfunction
function IQ takes nothing returns boolean
    return(UnitHasBuffBJ(GetTriggerUnit(), 'B00Y'))and(IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())))and(IsUnitType(GetAttacker(), UNIT_TYPE_STRUCTURE) == false)
endfunction
function AQ takes nothing returns boolean
    return(GetRandomInt(1, 100) <= (lr * 4))
endfunction
function NQ takes nothing returns nothing
    if(AQ())then
        call AddSpecialEffectTargetUnitBJ("overhead", GetAttacker(), "Abilities\\Spells\\NightElf\\ManaBurn\\ManaBurnTarget.mdl")
        call UnitDamageTargetBJ(GetTriggerUnit(), GetAttacker(), (Lr * 25.), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
        call SetUnitManaBJ(GetAttacker(), (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) - (Lr * 25.)))
    endif
endfunction
function bQ takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'tret')and(GetUnitTypeId(GetManipulatingUnit()) == 'H00H')
endfunction
function BQ takes nothing returns nothing
    set lr = 0
    set Lr = .0
endfunction
function cQ takes nothing returns nothing
    if(not(GetLearnedSkill() == 'A07X'))then
        return
    endif
    set kr = (kr + 1)
    set Kr = (Kr + 1.)
endfunction
function CQ takes nothing returns boolean
    return(UnitHasBuffBJ(GetAttacker(), 'B00X'))and(IsUnitAlly(GetTriggerUnit(), GetOwningPlayer(GetAttacker())) == false)and(IsUnitIdType(GetUnitTypeId(GetTriggerUnit()), UNIT_TYPE_STRUCTURE) == false)
endfunction
function dQ takes nothing returns boolean
    return(GetRandomInt(1, 100) <= (kr * 3))
endfunction
function DQ takes nothing returns nothing
    if(dQ())then
        call TriggerSleepAction(.6)
        call AddSpecialEffectLocBJ(GetUnitLoc(GetTriggerUnit()), "Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl")
        call SetUnitPositionLoc(GetTriggerUnit(), PolarProjectionBJ(GetUnitLoc(GetAttacker()), 250., 0))
        call TriggerSleepAction(.1)
        call AddSpecialEffectLocBJ(GetUnitLoc(GetTriggerUnit()), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
        call UnitDamageTargetBJ(GetAttacker(), GetTriggerUnit(), (Kr * 25.), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
    endif
endfunction
function fQ takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'tret')and(GetUnitTypeId(GetManipulatingUnit()) == 'Ogld')
endfunction
function FQ takes nothing returns nothing
    set kr = 0
    set Kr = .0
endfunction
function gQ takes nothing returns boolean
    return(GetSpellAbilityId() == 'A07Y')and(GetUnitTypeId(GetTriggerUnit()) == 'O00L')
endfunction
function GQ takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) != null)
endfunction
function hQ takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function HQ takes nothing returns boolean
    return GetBooleanAnd(GQ(), hQ())
endfunction
function jQ takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(), GetEnumUnit(), 750., ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
    call AddSpecialEffectTargetUnitBJ("overhead", GetEnumUnit(), "Doodads\\Cinematic\\Lightningbolt\\Lightningbolt.mdl")
    call AddSpecialEffectTargetUnitBJ("overhead", GetEnumUnit(), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    call TriggerSleepAction(2)
    call DestroyEffect(bj_lastCreatedEffect)
    call DestroyEffect(bj_lastCreatedEffect)
endfunction
function JQ takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07Y', GetTriggerUnit()) == 3)
endfunction
function kQ takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) != null)
endfunction
function KQ takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function lQ takes nothing returns boolean
    return GetBooleanAnd(kQ(), KQ())
endfunction
function LQ takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(), GetEnumUnit(), 650., ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
    call AddSpecialEffectTargetUnitBJ("overhead", GetEnumUnit(), "Doodads\\Cinematic\\Lightningbolt\\Lightningbolt.mdl")
    call AddSpecialEffectTargetUnitBJ("overhead", GetEnumUnit(), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    call TriggerSleepAction(2)
    call DestroyEffect(bj_lastCreatedEffect)
    call DestroyEffect(bj_lastCreatedEffect)
endfunction
function mQ takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07Y', GetTriggerUnit()) == 2)
endfunction
function MQ takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) != null)
endfunction
function pQ takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function PQ takes nothing returns boolean
    return GetBooleanAnd(MQ(), pQ())
endfunction
function qQ takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(), GetEnumUnit(), 550., ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
    call AddSpecialEffectTargetUnitBJ("overhead", GetEnumUnit(), "Doodads\\Cinematic\\Lightningbolt\\Lightningbolt.mdl")
    call AddSpecialEffectTargetUnitBJ("overhead", GetEnumUnit(), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    call TriggerSleepAction(2)
    call DestroyEffect(bj_lastCreatedEffect)
    call DestroyEffect(bj_lastCreatedEffect)
endfunction
function QQ takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07Y', GetTriggerUnit()) == 1)
endfunction
function sQ takes nothing returns nothing
    if(QQ())then
        call PlaySoundBJ(pi)
        call TriggerSleepAction(3.5)
        call PlaySoundBJ(Mi)
        call ForGroupBJ(GetUnitsInRectMatching(ND, Condition(function PQ)), function qQ)
    else
        if(mQ())then
            call PlaySoundBJ(pi)
            call TriggerSleepAction(3.5)
            call PlaySoundBJ(Mi)
            call ForGroupBJ(GetUnitsInRectMatching(ND, Condition(function lQ)), function LQ)
        else
            if(JQ())then
                call PlaySoundBJ(pi)
                call TriggerSleepAction(3.5)
                call PlaySoundBJ(Mi)
                call ForGroupBJ(GetUnitsInRectMatching(ND, Condition(function HQ)), function jQ)
            endif
        endif
    endif
endfunction
function SQ takes nothing returns boolean
    return(GetSpellAbilityId() == 'A082')
endfunction
function tQ takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetSpellAbilityUnit())))
endfunction
function TQ takes nothing returns nothing
    call SetUnitManaBJ(GetEnumUnit(), (GetUnitStateSwap(UNIT_STATE_MANA, GetEnumUnit()) - (I2R(GetUnitAbilityLevelSwapped('A082', GetSpellAbilityUnit())) * 80.)))
    call AddSpecialEffectTargetUnitBJ("overhead", GetEnumUnit(), "Abilities\\Spells\\NightElf\\ManaBurn\\ManaBurnTarget.mdl")
endfunction
function uQ takes nothing returns nothing
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(600., GetUnitLoc(GetSpellAbilityUnit()), Condition(function tQ)), function TQ)
endfunction
function UQ takes nothing returns boolean
    return(GetSpellAbilityId() == 'A07K')and(GetUnitTypeId(GetSpellAbilityUnit()) == 'Nfir')
endfunction
function wQ takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function WQ takes nothing returns nothing
    call UnitDamageTargetBJ(GetSpellAbilityUnit(), GetEnumUnit(), (80. * I2R(GetUnitAbilityLevelSwapped('A07K', GetSpellAbilityUnit()))), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
endfunction
function yQ takes nothing returns nothing
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(550., GetUnitLoc(GetSpellAbilityUnit()), Condition(function wQ)), function WQ)
endfunction
function YQ takes nothing returns boolean
    return(GetSpellAbilityId() == 'A07M')
endfunction
function zQ takes nothing returns boolean
    return(UnitHasBuffBJ(cr, 'B00M'))
endfunction
function ZQ takes nothing returns nothing
    set Br = GetSpellAbilityUnit()
    set cr = GetSpellTargetUnit()
    loop
        exitwhen(zQ())
        call TriggerSleepAction(RMaxBJ(bj_WAIT_FOR_COND_MIN_INTERVAL, .1))
    endloop
    call UnitDamageTargetBJ(Br, cr, (25. * I2R(GetHeroLevel(Br))), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
endfunction
function vs takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit()) == 'Nfir')and(UnitHasBuffBJ(GetTriggerUnit(), 'B00N'))and(IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function es takes nothing returns boolean
    return(vs())
endfunction
function xs takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function os takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit()))
endfunction
function rs takes nothing returns boolean
    return GetBooleanAnd(xs(), os())
endfunction
function is takes nothing returns nothing
    call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Weapons\\FragDriller\\FragDriller.mdl")
    call ConditionalTriggerExecute(cV)
    call UnitDamageTargetBJ(GetTriggerUnit(), GetEnumUnit(), (25. * I2R(GetUnitAbilityLevelSwapped('A07L', GetTriggerUnit()))), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
endfunction
function ass takes nothing returns boolean
    return(GetRandomInt(1, 100) <= (GetUnitAbilityLevelSwapped('A07L', GetTriggerUnit()) * 5))
endfunction
function ns takes nothing returns nothing
    if(ass())then
        set Cr = GetUnitLoc(GetTriggerUnit())
        set dr = GetUnitsInRangeOfLocMatching(550., Cr, Condition(function rs))
        call ForGroupBJ(dr, function is)
        call RemoveLocation(Cr)
        set Cr = null
        call DestroyGroup(dr)
        set dr = null
        call DisableTrigger(GetTriggeringTrigger())
        call TriggerSleepAction(.25)
        call EnableTrigger(GetTriggeringTrigger())
    endif
endfunction
function Vs takes nothing returns nothing
    local effect f = bj_lastCreatedEffect
    call TriggerSleepAction(1.)
    call DestroyEffect(f)
    set f = null
endfunction
function Es takes nothing returns nothing
    if(not(GetLearnedSkill() == 'A07Z'))then
        return
    endif
    set jr = (jr + 1)
endfunction
function Xs takes nothing returns boolean
    return(UnitHasBuffBJ(GetTriggerUnit(), 'B00T'))and(IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())))and(IsUnitType(GetAttacker(), UNIT_TYPE_STRUCTURE) == false)
endfunction
function Os takes nothing returns boolean
    return(GetRandomInt(1, 100) <= (jr * 2))
endfunction
function Rs takes nothing returns nothing
    if(Os())then
        call CreateNUnitsAtLoc(1, 'h01I', GetOwningPlayer(GetTriggerUnit()), GetUnitLoc(GetAttacker()), bj_UNIT_FACING)
        call SetUnitAbilityLevelSwapped('A080', bj_lastCreatedUnit, jr)
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852555, GetUnitLoc(GetAttacker()))
        call DisableTrigger(GetTriggeringTrigger())
        call TriggerSleepAction(.5)
        call EnableTrigger(GetTriggeringTrigger())
    endif
endfunction
function Is takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'tret')and(GetUnitTypeId(GetManipulatingUnit()) == 'O00L')
endfunction
function As takes nothing returns nothing
    set jr = 0
endfunction
function Ns takes nothing returns boolean
    return(GetSpellAbilityId() == 'A07V')
endfunction
function bs takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07V', Dr) == 2)
endfunction
function Bs takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07V', Dr) == 1)
endfunction
function cs takes nothing returns nothing
    set Dr = GetSpellAbilityUnit()
    set fr = GetSpellTargetUnit()
    call TriggerSleepAction(.5)
    if(Bs())then
        call CreateNUnitsAtLoc(1, 'h01G', GetOwningPlayer(Dr), GetUnitLoc(Dr), bj_UNIT_FACING)
        set Hr = bj_lastCreatedUnit
        call UnitDamageTargetBJ(Hr, fr, ((GetUnitStateSwap(UNIT_STATE_MAX_LIFE, fr) - GetUnitStateSwap(UNIT_STATE_LIFE, fr)) * .2), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
        call TriggerSleepAction(1.)
        call VG(Hr)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[8] = bj_lastCreatedEffect
        call PolledWait(.02)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[9] = bj_lastCreatedEffect
        call PolledWait(.02)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[10] = bj_lastCreatedEffect
        call PolledWait(.02)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[11] = bj_lastCreatedEffect
        call PolledWait(.02)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[12] = bj_lastCreatedEffect
        call PolledWait(.02)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[13] = bj_lastCreatedEffect
        call PolledWait(.02)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[14] = bj_lastCreatedEffect
        call PolledWait(.02)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[15] = bj_lastCreatedEffect
        call PolledWait(.02)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[16] = bj_lastCreatedEffect
        call PolledWait(.02)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[17] = bj_lastCreatedEffect
        call PolledWait(.02)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[18] = bj_lastCreatedEffect
        call PolledWait(.02)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[19] = bj_lastCreatedEffect
        call PolledWait(.02)
        call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
        set Fr[20] = bj_lastCreatedEffect
        call PolledWait(.02)
        call DestroyEffect(Fr[8])
        call DestroyEffect(Fr[9])
        call DestroyEffect(Fr[10])
        call DestroyEffect(Fr[11])
        call DestroyEffect(Fr[12])
        call DestroyEffect(Fr[13])
        call DestroyEffect(Fr[14])
        call DestroyEffect(Fr[15])
        call DestroyEffect(Fr[16])
        call DestroyEffect(Fr[17])
        call DestroyEffect(Fr[18])
        call DestroyEffect(Fr[19])
        call DestroyEffect(Fr[20])
    else
        if(bs())then
            call CreateNUnitsAtLoc(1, 'h01G', GetOwningPlayer(Dr), GetUnitLoc(Dr), bj_UNIT_FACING)
            set Hr = bj_lastCreatedUnit
            call UnitDamageTargetBJ(Hr, fr, ((GetUnitStateSwap(UNIT_STATE_MAX_LIFE, fr) - GetUnitStateSwap(UNIT_STATE_LIFE, fr)) * .4), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
            call TriggerSleepAction(1.)
            call VG(Hr)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[8] = bj_lastCreatedEffect
            call PolledWait(.02)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[9] = bj_lastCreatedEffect
            call PolledWait(.02)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[10] = bj_lastCreatedEffect
            call PolledWait(.02)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[11] = bj_lastCreatedEffect
            call PolledWait(.02)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[12] = bj_lastCreatedEffect
            call PolledWait(.02)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[13] = bj_lastCreatedEffect
            call PolledWait(.02)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[14] = bj_lastCreatedEffect
            call PolledWait(.02)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[15] = bj_lastCreatedEffect
            call PolledWait(.02)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[16] = bj_lastCreatedEffect
            call PolledWait(.02)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[17] = bj_lastCreatedEffect
            call PolledWait(.02)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[18] = bj_lastCreatedEffect
            call PolledWait(.02)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[19] = bj_lastCreatedEffect
            call PolledWait(.02)
            call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(fr), 300., 300.)), "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
            set Fr[20] = bj_lastCreatedEffect
            call PolledWait(.02)
            call DestroyEffect(Fr[8])
            call DestroyEffect(Fr[9])
            call DestroyEffect(Fr[10])
            call DestroyEffect(Fr[11])
            call DestroyEffect(Fr[12])
            call DestroyEffect(Fr[13])
            call DestroyEffect(Fr[14])
            call DestroyEffect(Fr[15])
            call DestroyEffect(Fr[16])
            call DestroyEffect(Fr[17])
            call DestroyEffect(Fr[18])
            call DestroyEffect(Fr[19])
            call DestroyEffect(Fr[20])
        endif
    endif
endfunction
function Cs takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit()) == 'Oshd')and(IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())))and(IsUnitType(GetAttacker(), UNIT_TYPE_STRUCTURE) == false)
endfunction
function ds takes nothing returns boolean
    return(UnitHasBuffBJ(GetTriggerUnit(), 'B006'))
endfunction
function Ds takes nothing returns nothing
    if(ds())then
        call CreateNUnitsAtLoc(1, 'h01A', GetOwningPlayer(GetTriggerUnit()), GetUnitLoc(GetAttacker()), bj_UNIT_FACING)
        call UnitAddAbility(bj_lastCreatedUnit, 'A06F')
        call IssueTargetOrderById(bj_lastCreatedUnit, 852231, GetAttacker())
        call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
    endif
endfunction
function fs takes nothing returns boolean
    return(GetSpellAbilityId() == 'A02S')and(GetUnitTypeId(GetTriggerUnit()) == 'H00U')
endfunction
function Fs takes nothing returns nothing
    set do = GetSpellAbilityUnit()
    call AddSpecialEffectTargetUnitBJ("hand left", do, "Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl")
    set Do[1] = bj_lastCreatedEffect
    call AddSpecialEffectTargetUnitBJ("hand right", do, "Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl")
    set Do[2] = bj_lastCreatedEffect
    call PolledWait(30.)
    call DestroyEffect(Do[1])
    call DestroyEffect(Do[2])
endfunction
function gs takes nothing returns boolean
    return(GetSpellAbilityId() == 'A02Z')and(GetUnitTypeId(GetTriggerUnit()) == 'H008')
endfunction
function Gs takes nothing returns nothing
    call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl")
    call DestroyEffect(bj_lastCreatedEffect)
endfunction
function hs takes nothing returns nothing
    call SetUnitExploded(GetEnumUnit(), true)
endfunction
function Hs takes nothing returns nothing
    call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl")
    call DestroyEffect(bj_lastCreatedEffect)
endfunction
function js takes nothing returns nothing
    call SetUnitExploded(GetEnumUnit(), true)
endfunction
function Js takes nothing returns nothing
    call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl")
    call DestroyEffect(bj_lastCreatedEffect)
endfunction
function ks takes nothing returns nothing
    call SetUnitExploded(GetEnumUnit(), true)
endfunction
function Ks takes nothing returns nothing
    local unit u = GetTriggerUnit()
    local location l = GetUnitLoc(u)
    local integer i = 0
    call ResetUnitAnimation(u)
    call PauseUnit(u, true)
    call AddSpecialEffectTargetUnitBJ("origin", u, "Abilities\\Spells\\Orc\\Reincarnation\\ReincarnationTarget.mdl")
    call DestroyEffect(bj_lastCreatedEffect)
    call TriggerSleepAction(.35)
    call AddSpecialEffectTargetUnitBJ("origin", u, "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl")
    call DestroyEffect(bj_lastCreatedEffect)
    call TerrainDeformationRippleBJ(10., false, GetUnitLoc(u), 100., 1024, 75., 1, 512)
    loop
        call AddSpecialEffectLocBJ(PolarProjectionBJ(l, 100, i * 10), "Abilities\\Spells\\Items\\TomeOfRetraining\\TomeOfRetrainingCaster.mdl")
        call DestroyEffect(bj_lastCreatedEffect)
        set i = i + 1
        exitwhen i >= 36
    endloop
    set i = 0
    call ForGroupBJ(GetUnitsInRangeOfLocAll(200., l), function Gs)
    call TriggerSleepAction(.0)
    call ForGroupBJ(GetUnitsInRangeOfLocAll(300., l), function hs)
    call TriggerSleepAction(.5)
    loop
        call AddSpecialEffectLocBJ(PolarProjectionBJ(l, 200, i * 10), "Abilities\\Spells\\Items\\TomeOfRetraining\\TomeOfRetrainingCaster.mdl")
        call DestroyEffect(bj_lastCreatedEffect)
        set i = i + 1
        exitwhen i >= 36
    endloop
    set i = 0
    call ForGroupBJ(GetUnitsInRangeOfLocAll(350., l), function Hs)
    call TriggerSleepAction(.0)
    call ForGroupBJ(GetUnitsInRangeOfLocAll(350., l), function js)
    call TriggerSleepAction(.5)
    loop
        call AddSpecialEffectLocBJ(PolarProjectionBJ(l, 300, i * 10), "Abilities\\Spells\\Items\\TomeOfRetraining\\TomeOfRetrainingCaster.mdl")
        call DestroyEffect(bj_lastCreatedEffect)
        set i = i + 1
        exitwhen i >= 36
    endloop
    set i = 0
    call ForGroupBJ(GetUnitsInRangeOfLocAll(400., l), function Js)
    call TriggerSleepAction(.0)
    call ForGroupBJ(GetUnitsInRangeOfLocAll(400., l), function ks)
    call TriggerSleepAction(1.)
    if IsUnitAliveBJ(u)then
        set hc[GetPlayerId(GetOwningPlayer(u)) + 1] = 0.5
    endif
    call ExplodeUnitBJ(u)
    call PauseUnit(u, false)
    call RemoveLocation(l)
    set l = null
    call TriggerSleepAction(0.1)
    set hc[GetPlayerId(GetOwningPlayer(u)) + 1] = 1
    set u = null
endfunction
function ls takes nothing returns boolean
    return(GetIssuedOrderId() == 852127)and(GetUnitTypeId(GetTriggerUnit()) == 'Nman')
endfunction
function Ls takes nothing returns nothing
    call AddSpecialEffectTargetUnitBJ("overhead", GetEnumUnit(), "Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl")
    call TriggerSleepAction(1.)
    call DestroyEffect(bj_lastCreatedEffect)
endfunction
function ms takes nothing returns nothing
    call ForGroupBJ(GetUnitsInRangeOfLocAll(500., GetUnitLoc(GetTriggerUnit())), function Ls)
endfunction
function Ms takes nothing returns boolean
    return(GetIssuedOrderId() == 852096)and(GetUnitTypeId(GetTriggerUnit()) == 'E004')
endfunction
function ps takes nothing returns nothing
    call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Objects\\Spawnmodels\\NightElf\\NEDeathMedium\\NEDeath.mdl")
    call TriggerSleepAction(5.)
    call DestroyEffect(bj_lastCreatedEffect)
endfunction
function Ps takes nothing returns boolean
    return(GetSpellAbilityId() == 'A071')and(GetUnitAbilityLevelSwapped('A071', GetSpellAbilityUnit()) == 1)
endfunction
function qs takes nothing returns nothing
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSpellTargetUnit()), "Objects\\Spawnmodels\\NightElf\\EntBirthTarget\\EntBirthTarget.mdl")
    call UnitDamagePointLoc(GetSpellAbilityUnit(), .01, 350., GetUnitLoc(GetSpellTargetUnit()), 50., ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
    set Ar[1] = bj_lastCreatedEffect
    call TriggerSleepAction(.3)
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSpellTargetUnit()), "Objects\\Spawnmodels\\NightElf\\NEDeathMedium\\NEDeath.mdl")
    set Ar[2] = bj_lastCreatedEffect
    call TriggerSleepAction(.2)
    call DestroyEffect(Ar[1])
    call DestroyEffect(Ar[2])
endfunction
function Qs takes nothing returns boolean
    return(GetSpellAbilityId() == 'A071')and(GetUnitAbilityLevelSwapped('A071', GetSpellAbilityUnit()) == 2)
endfunction
function ss takes nothing returns nothing
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSpellTargetUnit()), "Objects\\Spawnmodels\\NightElf\\EntBirthTarget\\EntBirthTarget.mdl")
    call UnitDamagePointLoc(GetSpellAbilityUnit(), .01, 400., GetUnitLoc(GetSpellTargetUnit()), 100., ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
    set Ar[1] = bj_lastCreatedEffect
    call TriggerSleepAction(.3)
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSpellTargetUnit()), "Objects\\Spawnmodels\\NightElf\\NEDeathMedium\\NEDeath.mdl")
    set Ar[2] = bj_lastCreatedEffect
    call TriggerSleepAction(.2)
    call DestroyEffect(Ar[1])
    call DestroyEffect(Ar[2])
endfunction
function Ss takes nothing returns boolean
    return(GetSpellAbilityId() == 'A071')and(GetUnitAbilityLevelSwapped('A071', GetSpellAbilityUnit()) == 3)
endfunction
function ts takes nothing returns nothing
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSpellTargetUnit()), "Objects\\Spawnmodels\\NightElf\\EntBirthTarget\\EntBirthTarget.mdl")
    call UnitDamagePointLoc(GetSpellAbilityUnit(), .01, 450., GetUnitLoc(GetSpellTargetUnit()), 150., ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
    set Ar[1] = bj_lastCreatedEffect
    call TriggerSleepAction(.3)
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSpellTargetUnit()), "Objects\\Spawnmodels\\NightElf\\NEDeathMedium\\NEDeath.mdl")
    set Ar[2] = bj_lastCreatedEffect
    call TriggerSleepAction(.2)
    call DestroyEffect(Ar[1])
    call DestroyEffect(Ar[2])
endfunction
function Ts takes nothing returns boolean
    return(GetSpellAbilityId() == 'A071')and(GetUnitAbilityLevelSwapped('A071', GetSpellAbilityUnit()) == 4)
endfunction
function us takes nothing returns nothing
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSpellTargetUnit()), "Objects\\Spawnmodels\\NightElf\\EntBirthTarget\\EntBirthTarget.mdl")
    call UnitDamagePointLoc(GetSpellAbilityUnit(), .01, 500., GetUnitLoc(GetSpellTargetUnit()), 200., ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
    set Ar[1] = bj_lastCreatedEffect
    call TriggerSleepAction(.3)
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSpellTargetUnit()), "Objects\\Spawnmodels\\NightElf\\NEDeathMedium\\NEDeath.mdl")
    set Ar[2] = bj_lastCreatedEffect
    call TriggerSleepAction(.2)
    call DestroyEffect(Ar[1])
    call DestroyEffect(Ar[2])
endfunction
function Us takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07J', GetTriggerUnit()) == 1)and(UnitHasBuffBJ(GetTriggerUnit(), 'B00L'))and(IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function ws takes nothing returns boolean
    return(Us())
endfunction
function Ws takes nothing returns boolean
    return(GetRandomInt(1, 100) <= 3)
endfunction
function ys takes nothing returns nothing
    if(Ws())then
        call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
        call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "UI\\Feedback\\GoldCredit\\GoldCredit.mdl")
        call PlaySoundOnUnitBJ(ki, 100, GetTriggerUnit())
        set pc = GetRandomInt(1, 10)
        call AdjustPlayerStateBJ(pc, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call CreateTextTagUnitBJ("+" + I2S(pc), GetTriggerUnit(), 0, 10, 100.00, 86.27, 0.00, 0)
        call ShowTextTagForceBJ(false, GetLastCreatedTextTag(), GetPlayersAll())
        call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())))
        call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
        call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
        call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 2.00)
        call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 1.00)
    endif
endfunction
function Ys takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07J', GetTriggerUnit()) == 2)and(UnitHasBuffBJ(GetTriggerUnit(), 'B00L'))and(IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function zs takes nothing returns boolean
    return(Ys())
endfunction
function Zs takes nothing returns boolean
    return(GetRandomInt(1, 100) <= 5)
endfunction
function vS takes nothing returns nothing
    if(Zs())then
        call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
        call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "UI\\Feedback\\GoldCredit\\GoldCredit.mdl")
        call PlaySoundOnUnitBJ(ki, 100, GetTriggerUnit())
        set pc = GetRandomInt(5, 20)
        call AdjustPlayerStateBJ(pc, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call CreateTextTagUnitBJ("+" + I2S(pc), GetTriggerUnit(), 0, 10, 100.00, 86.27, 0.00, 0)
        call ShowTextTagForceBJ(false, GetLastCreatedTextTag(), GetPlayersAll())
        call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())))
        call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
        call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
        call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 2.00)
        call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 1.00)
    endif
endfunction
function eS takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07J', GetTriggerUnit()) == 3)and(UnitHasBuffBJ(GetTriggerUnit(), 'B00L'))and(IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function xS takes nothing returns boolean
    return(eS())
endfunction
function oS takes nothing returns boolean
    return(GetRandomInt(1, 100) <= 7)
endfunction
function rS takes nothing returns nothing
    if(oS())then
        call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
        call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "UI\\Feedback\\GoldCredit\\GoldCredit.mdl")
        call PlaySoundOnUnitBJ(ki, 100, GetTriggerUnit())
        set pc = GetRandomInt(10, 30)
        call AdjustPlayerStateBJ(pc, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call CreateTextTagUnitBJ("+" + I2S(pc), GetTriggerUnit(), 0, 10, 100.00, 86.27, 0.00, 0)
        call ShowTextTagForceBJ(false, GetLastCreatedTextTag(), GetPlayersAll())
        call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())))
        call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
        call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
        call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 2.00)
        call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 1.00)
    endif
endfunction
function iS takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07J', GetTriggerUnit()) == 4)and(UnitHasBuffBJ(GetTriggerUnit(), 'B00L'))and(IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function aS takes nothing returns boolean
    return(iS())
endfunction
function nS takes nothing returns boolean
    return(GetRandomInt(1, 100) <= 9)
endfunction
function VS takes nothing returns nothing
    if(nS())then
        call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
        call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "UI\\Feedback\\GoldCredit\\GoldCredit.mdl")
        call PlaySoundOnUnitBJ(ki, 100, GetTriggerUnit())
        set pc = GetRandomInt(15, 40)
        call AdjustPlayerStateBJ(pc, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call CreateTextTagUnitBJ("+" + I2S(pc), GetTriggerUnit(), 0, 10, 100.00, 86.27, 0.00, 0)
        call ShowTextTagForceBJ(false, GetLastCreatedTextTag(), GetPlayersAll())
        call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())))
        call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
        call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
        call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 2.00)
        call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 1.00)
    endif
endfunction
function ES takes nothing returns boolean
    return(GetIssuedOrderId() == 852226)
endfunction
function XS takes nothing returns nothing
endfunction
function OS takes nothing returns boolean
    return(GetSpellAbilityId() == 'A02L')
endfunction
function RS takes nothing returns nothing
    set No = GetSpellTargetUnit()
    call SetUnitAnimation(GetTriggerUnit(), "stand")
    call PauseUnit(No, true)
    call AddSpecialEffectLocBJ(GetUnitLoc(No), "Units\\Demon\\Infernal\\InfernalBirth.mdl")
    call TerrainDeformationRippleBJ(4., false, GetUnitLoc(No), 180., 180., 64, 1, 512)
    call TriggerSleepAction(1.5)
    call PauseUnit(No, false)
endfunction
function IS takes nothing returns boolean
    return(GetUnitTypeId(GetOrderedUnit()) == 'H00H')
endfunction
function AS takes nothing returns boolean
    return(GetIssuedOrderId() == 852224)
endfunction
function NS takes nothing returns boolean
    return(GetBooleanAnd(IS(), AS()))
endfunction
function bS takes nothing returns nothing
    set co = GetOrderPointLoc()
endfunction
function BS takes nothing returns boolean
    return(GetUnitTypeId(GetSummoningUnit()) == 'H00H')and(GetUnitTypeId(GetSummonedUnit()) == 'h00I')
endfunction
function cS takes nothing returns nothing
    set Co = GetSummonedUnit()
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[8] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[9] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[10] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[11] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[12] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[13] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[14] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[15] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[16] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[17] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[18] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[19] = bj_lastCreatedEffect
    call PolledWait(.02)
    call AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(GetUnitLoc(Co), 300., 300.)), "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl")
    set Bo[20] = bj_lastCreatedEffect
    call PolledWait(.02)
    call DestroyEffect(Bo[8])
    call DestroyEffect(Bo[9])
    call DestroyEffect(Bo[10])
    call DestroyEffect(Bo[11])
    call DestroyEffect(Bo[12])
    call DestroyEffect(Bo[13])
    call DestroyEffect(Bo[14])
    call DestroyEffect(Bo[15])
    call DestroyEffect(Bo[16])
    call DestroyEffect(Bo[17])
    call DestroyEffect(Bo[18])
    call DestroyEffect(Bo[19])
    call DestroyEffect(Bo[20])
    call KillUnit(GetSummonedUnit())
endfunction
function CS takes nothing returns boolean
    return(GetSpellAbilityId() == 'A02O')
endfunction
function dS takes nothing returns nothing
    call TriggerSleepAction(.5)
    call IssueImmediateOrderById(GetSpellAbilityUnit(), 851993)
    call GroupAddUnit(bo, GetSpellAbilityUnit())
endfunction
function DS takes nothing returns boolean
    return(IsUnitGroupEmptyBJ(bo) == false)
endfunction
function fS takes nothing returns nothing
    call SetWidgetLife(GetEnumUnit(), (GetUnitStateSwap(UNIT_STATE_LIFE, GetEnumUnit()) + 50.))
    call SetUnitManaBJ(GetEnumUnit(), (GetUnitStateSwap(UNIT_STATE_MANA, GetEnumUnit()) + 20.))
    call SetUnitAnimation(GetEnumUnit(), "stand first")
    call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Spells\\Human\\Heal\\HealTarget.mdl")
    call PolledWait(.5)
    call DestroyEffect(bj_lastCreatedEffect)
endfunction
function FS takes nothing returns nothing
    call ForGroupBJ(bo, function fS)
endfunction
function gS takes nothing returns boolean
    return(IsUnitInGroup(GetTriggerUnit(), bo))
endfunction
function GS takes nothing returns nothing
    call GroupRemoveUnit(bo, GetTriggerUnit())
endfunction
function hS takes nothing returns boolean
    return(GetIssuedOrderId() == 852480)and(GetUnitTypeId(GetTriggerUnit()) == 'N011')
endfunction
function HS takes nothing returns nothing
    set fo = GetOrderTargetUnit()
endfunction
function jS takes nothing returns boolean
    return(GetSpellAbilityId() == 'A02U')and(GetUnitTypeId(GetTriggerUnit()) == 'N011')
endfunction
function JS takes nothing returns nothing
    call UnitAddItem(fo, GetEnumItem())
endfunction
function kS takes nothing returns nothing
    call SetItemPositionLoc(GetItemOfTypeFromUnitBJ(fo, 'stwp'), GetRectCenter(bD))
    call TriggerSleepAction(2.)
    call AddSpecialEffectTargetUnitBJ("origin", fo, "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
    call TriggerSleepAction(.5)
    call SetUnitPositionLocFacingLocBJ(fo, GetUnitLoc(GetTriggerUnit()), GetUnitLoc(GetTriggerUnit()))
    call SetUnitAnimation(GetTriggerUnit(), "Attack Slam")
    call TriggerSleepAction(.25)
    call IssueTargetOrderById(GetTriggerUnit(), 851983, fo)
    call TriggerSleepAction(.5)
    call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Orc\\Disenchant\\DisenchantSpecialArt.mdl")
    call SetUnitTimeScalePercent(GetTriggerUnit(), 100.)
    call SetUnitTimeScalePercent(fo, 100.)
    call DestroyEffect(bj_lastCreatedEffect)
    call DestroyEffect(bj_lastCreatedEffect)
    call EnumItemsInRectBJ(bD, function JS)
endfunction
function KS takes nothing returns boolean
    return(GetIssuedOrderId() == 852226)
endfunction
function lS takes nothing returns nothing
endfunction
function LS takes nothing returns boolean
    return(GetSpellAbilityId() == 'A02Y')
endfunction
function mS takes nothing returns nothing
    set Fo = GetSpellTargetUnit()
    call SetUnitAnimation(GetTriggerUnit(), "stand")
    call PauseUnit(Fo, true)
    call TriggerSleepAction(.5)
    call PlaySoundBJ(hi)
    call AddSpecialEffectLocBJ(PolarProjectionBJ(GetUnitLoc(Fo), 180., 0), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call AddSpecialEffectLocBJ(PolarProjectionBJ(GetUnitLoc(Fo), 180., 45.), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call AddSpecialEffectLocBJ(PolarProjectionBJ(GetUnitLoc(Fo), 180., 90.), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call AddSpecialEffectLocBJ(PolarProjectionBJ(GetUnitLoc(Fo), 180., 135.), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call AddSpecialEffectLocBJ(PolarProjectionBJ(GetUnitLoc(Fo), 180., 180.), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call AddSpecialEffectLocBJ(PolarProjectionBJ(GetUnitLoc(Fo), 180., 225.), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call AddSpecialEffectLocBJ(PolarProjectionBJ(GetUnitLoc(Fo), 180., 270.), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call AddSpecialEffectLocBJ(PolarProjectionBJ(GetUnitLoc(Fo), 180., 315.), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call TriggerSleepAction(.05)
    call AddSpecialEffectLocBJ(GetUnitLoc(Fo), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call PauseUnit(Fo, false)
endfunction
function MS takes nothing returns boolean
    return(GetIssuedOrderId() == 852527)and(GetUnitTypeId(GetTriggerUnit()) == 'H00U')
endfunction
function pS takes nothing returns nothing
    set Rr = GetOrderTargetUnit()
endfunction
function PS takes nothing returns boolean
    return(GetSpellAbilityId() == 'A02W')
endfunction
function qS takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A02W', Xr) == 4)
endfunction
function QS takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A02W', Xr) == 3)
endfunction
function sS takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A02W', Xr) == 2)
endfunction
function SS takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A02W', Xr) == 1)
endfunction
function tS takes nothing returns nothing
    set Xr = GetSpellAbilityUnit()
    call AddSpecialEffectTargetUnitBJ("overhead", Xr, "Abilities\\Spells\\Other\\Cleave\\CleaveDamageTarget.mdl")
    call PlaySoundAtPointBJ(vi, 100., GetUnitLoc(Xr), 0)
    call SetUnitPositionLocFacingLocBJ(Xr, GetUnitLoc(Rr), GetUnitLoc(Rr))
    if(SS())then
        call UnitDamageTargetBJ(Xr, Rr, GetRandomReal(50., 150.), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
        call IssueTargetOrderById(Xr, 851983, Rr)
        call TriggerSleepAction(.25)
        call IssueTargetOrderById(Xr, 852527, Rr)
        call AddSpecialEffectTargetUnitBJ("origin", Rr, "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
        call TriggerSleepAction(.25)
        call AddSpecialEffectTargetUnitBJ("origin", Rr, "Abilities\\Spells\\Orc\\Disenchant\\DisenchantSpecialArt.mdl")
        call TriggerSleepAction(2.)
        call DestroyEffect(bj_lastCreatedEffect)
        call DestroyEffect(bj_lastCreatedEffect)
        call DestroyEffect(bj_lastCreatedEffect)
    else
        if(sS())then
            call UnitDamageTargetBJ(Xr, Rr, GetRandomReal(150., 250.), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
            call IssueTargetOrderById(Xr, 851983, Rr)
            call TriggerSleepAction(.25)
            call IssueTargetOrderById(Xr, 852527, Rr)
            call AddSpecialEffectTargetUnitBJ("origin", Rr, "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
            call TriggerSleepAction(.25)
            call AddSpecialEffectTargetUnitBJ("origin", Rr, "Abilities\\Spells\\Orc\\Disenchant\\DisenchantSpecialArt.mdl")
            call TriggerSleepAction(2.)
            call DestroyEffect(bj_lastCreatedEffect)
            call DestroyEffect(bj_lastCreatedEffect)
            call DestroyEffect(bj_lastCreatedEffect)
        else
            if(QS())then
                call UnitDamageTargetBJ(Xr, Rr, GetRandomReal(250., 350.), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
                call IssueTargetOrderById(Xr, 851983, Rr)
                call TriggerSleepAction(.25)
                call IssueTargetOrderById(Xr, 852527, Rr)
                call AddSpecialEffectTargetUnitBJ("origin", Rr, "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
                call TriggerSleepAction(.25)
                call AddSpecialEffectTargetUnitBJ("origin", Rr, "Abilities\\Spells\\Orc\\Disenchant\\DisenchantSpecialArt.mdl")
                call TriggerSleepAction(2.)
                call DestroyEffect(bj_lastCreatedEffect)
                call DestroyEffect(bj_lastCreatedEffect)
                call DestroyEffect(bj_lastCreatedEffect)
            else
                if(qS())then
                    call UnitDamageTargetBJ(Xr, Rr, GetRandomReal(350., 500.), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
                    call IssueTargetOrderById(Xr, 851983, Rr)
                    call TriggerSleepAction(.25)
                    call IssueTargetOrderById(Xr, 852527, Rr)
                    call AddSpecialEffectTargetUnitBJ("origin", Rr, "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
                    call TriggerSleepAction(.25)
                    call AddSpecialEffectTargetUnitBJ("origin", Rr, "Abilities\\Spells\\Orc\\Disenchant\\DisenchantSpecialArt.mdl")
                    call TriggerSleepAction(2.)
                    call DestroyEffect(bj_lastCreatedEffect)
                    call DestroyEffect(bj_lastCreatedEffect)
                    call DestroyEffect(bj_lastCreatedEffect)
                endif
            endif
        endif
    endif
endfunction
function TS takes nothing returns nothing
    if(not(GetLearnedSkill() == 'A07Q'))then
        return
    endif
    set Gr = (Gr + 1)
    set hr = (hr + 1)
endfunction
function uS takes nothing returns boolean
    return(UnitHasBuffBJ(GetTriggerUnit(), 'B00P'))and(IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function US takes nothing returns boolean
    return(GetRandomInt(1, 100) <= (Gr * 3))
endfunction
function wS takes nothing returns nothing
    if(US())then
        call AddSpecialEffectTargetUnitBJ("overhead", GetTriggerUnit(), "Abilities\\Spells\\Human\\Heal\\HealTarget.mdl")
        call SetWidgetLife(GetTriggerUnit(), (GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) + (hr * 20.)))
    endif
endfunction
function WS takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'tret')and(GetUnitTypeId(GetManipulatingUnit()) == 'O00K')
endfunction
function yS takes nothing returns nothing
    set Gr = 0
    set hr = .0
endfunction
function YS takes nothing returns nothing
    if(not(GetLearnedSkill() == 'A02D'))then
        return
    endif
    set Er = (Er + 1)
endfunction
function zS takes nothing returns boolean
    return(GetUnitTypeId(GetSummonedUnit()) == 'e00A')and(Er == 1)
endfunction
function ZS takes nothing returns nothing
    call VG(GetSummonedUnit())
    call SetUnitInvulnerable(GetSummoningUnit(), true)
    call IssueImmediateOrderById(GetSummoningUnit(), 851972)
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSummoningUnit()), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call SetUnitAnimation(GetSummoningUnit(), "death")
    call SetUnitAnimation(GetSummoningUnit(), "dissipate")
    call PauseUnit(GetSummoningUnit(), true)
    call TriggerSleepAction(2.25)
    call ShowUnitHide(GetSummoningUnit())
    call TriggerSleepAction(7.35)
    call PauseUnit(GetSummoningUnit(), false)
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSummoningUnit()), "Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl")
    call ShowUnitShow(GetSummoningUnit())
    call ResetUnitAnimation(GetSummoningUnit())
    call SetUnitInvulnerable(GetSummoningUnit(), false)
    call SetWidgetLife(GetSummoningUnit(), (GetUnitStateSwap(UNIT_STATE_LIFE, GetSummoningUnit()) + 300.))
    call SetUnitManaBJ(GetSummoningUnit(), (GetUnitStateSwap(UNIT_STATE_MANA, GetSummoningUnit()) + 100.))
endfunction
function vt takes nothing returns boolean
    return(GetUnitTypeId(GetSummonedUnit()) == 'e00A')and(Er == 2)
endfunction
function et takes nothing returns nothing
    call VG(GetSummonedUnit())
    call SetUnitInvulnerable(GetSummoningUnit(), true)
    call IssueImmediateOrderById(GetSummoningUnit(), 851972)
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSummoningUnit()), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call SetUnitAnimation(GetSummoningUnit(), "death")
    call SetUnitAnimation(GetSummoningUnit(), "dissipate")
    call PauseUnit(GetSummoningUnit(), true)
    call TriggerSleepAction(2.25)
    call ShowUnitHide(GetSummoningUnit())
    call TriggerSleepAction(13.35)
    call PauseUnit(GetSummoningUnit(), false)
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSummoningUnit()), "Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl")
    call ShowUnitShow(GetSummoningUnit())
    call ResetUnitAnimation(GetSummoningUnit())
    call SetUnitInvulnerable(GetSummoningUnit(), false)
    call SetWidgetLife(GetSummoningUnit(), (GetUnitStateSwap(UNIT_STATE_LIFE, GetSummoningUnit()) + 400.))
    call SetUnitManaBJ(GetSummoningUnit(), (GetUnitStateSwap(UNIT_STATE_MANA, GetSummoningUnit()) + 150.))
endfunction
function xxxt takes nothing returns boolean
    return(GetUnitTypeId(GetSummonedUnit()) == 'e00A')and(Er == 3)
endfunction
function ot takes nothing returns nothing
    call VG(GetSummonedUnit())
    call SetUnitInvulnerable(GetSummoningUnit(), true)
    call IssueImmediateOrderById(GetSummoningUnit(), 851972)
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSummoningUnit()), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call SetUnitAnimation(GetSummoningUnit(), "death")
    call SetUnitAnimation(GetSummoningUnit(), "dissipate")
    call PauseUnit(GetSummoningUnit(), true)
    call TriggerSleepAction(2.25)
    call ShowUnitHide(GetSummoningUnit())
    call TriggerSleepAction(15.35)
    call PauseUnit(GetSummoningUnit(), false)
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSummoningUnit()), "Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl")
    call ShowUnitShow(GetSummoningUnit())
    call ResetUnitAnimation(GetSummoningUnit())
    call SetUnitInvulnerable(GetSummoningUnit(), false)
    call SetWidgetLife(GetSummoningUnit(), (GetUnitStateSwap(UNIT_STATE_LIFE, GetSummoningUnit()) + 500.))
    call SetUnitManaBJ(GetSummoningUnit(), (GetUnitStateSwap(UNIT_STATE_MANA, GetSummoningUnit()) + 200.))
endfunction
function rt takes nothing returns boolean
    return(GetUnitTypeId(GetSummonedUnit()) == 'e00A')and(Er == 4)
endfunction
function ittt takes nothing returns nothing
    call VG(GetSummonedUnit())
    call SetUnitInvulnerable(GetSummoningUnit(), true)
    call IssueImmediateOrderById(GetSummoningUnit(), 851972)
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSummoningUnit()), "Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl")
    call SetUnitAnimation(GetSummoningUnit(), "death")
    call SetUnitAnimation(GetSummoningUnit(), "dissipate")
    call PauseUnit(GetSummoningUnit(), true)
    call TriggerSleepAction(2.25)
    call ShowUnitHide(GetSummoningUnit())
    call TriggerSleepAction(19.35)
    call PauseUnit(GetSummoningUnit(), false)
    call AddSpecialEffectLocBJ(GetUnitLoc(GetSummoningUnit()), "Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl")
    call ShowUnitShow(GetSummoningUnit())
    call ResetUnitAnimation(GetSummoningUnit())
    call SetUnitInvulnerable(GetSummoningUnit(), false)
    call SetWidgetLife(GetSummoningUnit(), (GetUnitStateSwap(UNIT_STATE_LIFE, GetSummoningUnit()) + 600.))
    call SetUnitManaBJ(GetSummoningUnit(), (GetUnitStateSwap(UNIT_STATE_MANA, GetSummoningUnit()) + 250.))
endfunction
function at takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'tret')and(GetUnitTypeId(GetManipulatingUnit()) == 'H00P')
endfunction
function nt takes nothing returns nothing
    set Er = 0
endfunction
function Vt takes nothing returns boolean
    return(GetIssuedOrderId() == 852111)and(GetUnitTypeId(GetOrderedUnit()) == 'Udre')
endfunction
function Et takes nothing returns boolean
    return(zx[bj_forLoopAIndex] == null)
endfunction
function Xt takes nothing returns nothing
    set zx[GetUnitUserData(GetOrderedUnit())] = null
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 100
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Et())then
            set zx[bj_forLoopAIndex] = GetOrderTargetUnit()
            call SetUnitUserData(GetOrderedUnit(), bj_forLoopAIndex)
            return
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction
function Ot takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit()) == 'Udre')and(GetIssuedOrderId() != 852111)
endfunction
function Rt takes nothing returns nothing
    set zx[GetUnitUserData(GetTriggerUnit())] = null
    call SetUnitUserData(GetTriggerUnit(), 0)
endfunction
function It takes nothing returns boolean
    return(GetUnitTypeId(GetSpellAbilityUnit()) == 'Udre')and(GetSpellAbilityId() == 'A026')
endfunction
function At takes nothing returns nothing
    set Zx[(1 + GetPlayerId(GetOwningPlayer(GetSpellAbilityUnit())))] = GetSpellAbilityUnit()
    call SelectUnitRemove(GetSpellAbilityUnit())
    call ShowUnitHide(GetSpellAbilityUnit())
    call CreateNUnitsAtLoc(1, GetUnitTypeId(zx[GetUnitUserData(GetSpellAbilityUnit())]), GetOwningPlayer(GetSpellAbilityUnit()), GetUnitLoc(GetSpellAbilityUnit()), GetUnitFacing(GetSpellAbilityUnit()))
    call AddSpecialEffectTargetUnitBJ("origin", bj_lastCreatedUnit, "Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl")
    call AddSpecialEffectTargetUnitBJ("origin", zx[GetUnitUserData(GetSpellAbilityUnit())], "Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl")
    call SetHeroLevelBJ(bj_lastCreatedUnit, GetHeroLevel(zx[GetUnitUserData(GetSpellAbilityUnit())]), false)
    call UnitRemoveAbility(bj_lastCreatedUnit, 'AInv')
    set vo[(1 + GetPlayerId(GetOwningPlayer(GetSpellAbilityUnit())))] = bj_lastCreatedUnit
    call SelectUnitAdd(bj_lastCreatedUnit)
    call CreateNUnitsAtLoc(1, 'h00G', GetOwningPlayer(GetSpellAbilityUnit()), GetRectCenter(bj_mapInitialPlayableArea), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(40., 'BTLF', bj_lastCreatedUnit)
endfunction
function Nt takes nothing returns boolean
    return(GetUnitTypeId(GetDyingUnit()) == 'h00G')
endfunction
function bt takes nothing returns nothing
    call SetUnitPositionLoc(Zx[(1 + GetPlayerId(GetOwningPlayer(GetDyingUnit())))], GetUnitLoc(vo[(1 + GetPlayerId(GetOwningPlayer(GetDyingUnit())))]))
    call VG(vo[(1 + GetPlayerId(GetOwningPlayer(GetDyingUnit())))])
    call ShowUnitShow(Zx[(1 + GetPlayerId(GetOwningPlayer(GetDyingUnit())))])
    call AddSpecialEffectTargetUnitBJ("origin", Zx[(1 + GetPlayerId(GetOwningPlayer(GetDyingUnit())))], "Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl")
    call SelectUnitAdd(Zx[(1 + GetPlayerId(GetOwningPlayer(GetDyingUnit())))])
endfunction
function Bt takes nothing returns boolean
    return(GetSpellAbilityId() == 'A038')and(GetUnitTypeId(GetTriggerUnit()) == 'U00C')
endfunction
function ct takes nothing returns nothing
    set Jr = GetTriggerUnit()
    call SetUnitInvulnerable(Jr, true)
endfunction
function Ct takes nothing returns boolean
    return(GetSpellAbilityId() == 'A038')and(GetUnitTypeId(GetTriggerUnit()) == 'U00C')
endfunction
function dt takes nothing returns nothing
    set yx = GetHeroStatBJ(0, GetTriggerUnit(), true)
    call CreateNUnitsAtLoc(1, 'n01V', GetOwningPlayer(GetTriggerUnit()), PolarProjectionBJ(GetUnitLoc(GetTriggerUnit()), 150., .0), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(90., 'BTLF', bj_lastCreatedUnit)
    call TriggerSleepAction(GetRandomReal(.2, 1.))
    call SetUnitUserData(GetTriggerUnit(), 45)
    call CreateNUnitsAtLoc(1, 'n01V', GetOwningPlayer(GetTriggerUnit()), PolarProjectionBJ(GetUnitLoc(GetTriggerUnit()), 150., 72.), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(90., 'BTLF', bj_lastCreatedUnit)
    call TriggerSleepAction(GetRandomReal(.2, 1.))
    call CreateNUnitsAtLoc(1, 'n01V', GetOwningPlayer(GetTriggerUnit()), PolarProjectionBJ(GetUnitLoc(GetTriggerUnit()), 150., 144.), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(90., 'BTLF', bj_lastCreatedUnit)
    call TriggerSleepAction(GetRandomReal(.2, 1.))
    call CreateNUnitsAtLoc(1, 'n01V', GetOwningPlayer(GetTriggerUnit()), PolarProjectionBJ(GetUnitLoc(GetTriggerUnit()), 150., 216.), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(90., 'BTLF', bj_lastCreatedUnit)
    call TriggerSleepAction(GetRandomReal(.2, 1.))
    call CreateNUnitsAtLoc(1, 'n01V', GetOwningPlayer(GetTriggerUnit()), PolarProjectionBJ(GetUnitLoc(GetTriggerUnit()), 150., 288.), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(90., 'BTLF', bj_lastCreatedUnit)
    call SetUnitManaBJ(GetTriggerUnit(), (GetUnitStateSwap(UNIT_STATE_MANA, GetTriggerUnit()) + 135.))
    call UnitResetCooldown(GetTriggerUnit())
endfunction
function Dt takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit()) == 'n01V')
endfunction
function ft takes nothing returns nothing
    call SetUnitAnimation(GetTriggerUnit(), "birth")
    call TriggerSleepAction(1.5)
    call ResetUnitAnimation(GetTriggerUnit())
    call Wj(GetTriggerUnit(), yx)
endfunction
function Ft takes nothing returns boolean
    return(GetSpellAbilityId() == 'A038')or(GetTriggerUnit() == GetDyingUnit())
endfunction
function gt takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit()) == 'U00C')and(Ft())
endfunction
function Gt takes nothing returns nothing
    call KillUnit(GetEnumUnit())
endfunction
function hhht takes nothing returns nothing
    call SetUnitInvulnerable(Jr, false)
    call ForGroupBJ(GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetTriggerUnit()), 'n01V'), function Gt)
endfunction
function Ht takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit()) == 'n01V')and(CountLivingPlayerUnitsOfTypeId('n01V', GetOwningPlayer(GetTriggerUnit())) == 0)
endfunction
function jt takes nothing returns nothing
    call IssueImmediateOrderById(GroupPickRandomUnit(GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetTriggerUnit()), 'U00C')), 852534)
endfunction
function Jt takes nothing returns boolean
    return(GetSpellAbilityId() == 'A03I')
endfunction
function kt takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A03I', GetTriggerUnit()) == 1)
endfunction
function Kt takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A03I', GetTriggerUnit()) == 2)
endfunction
function lt takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A03I', GetTriggerUnit()) == 3)
endfunction
function Lt takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A03I', GetTriggerUnit()) == 4)
endfunction
function mt takes nothing returns nothing
    set jo = GetSpellTargetUnit()
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitInvulnerable(GetTriggerUnit(), true)
    call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl")
    call SetUnitPositionLocFacingLocBJ(GetTriggerUnit(), GetUnitLoc(jo), GetUnitLoc(jo))
    call PauseUnit(jo, true)
    call PauseUnit(GetTriggerUnit(), true)
    call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Orc\\AncestralSpirit\\AncestralSpiritCaster.mdl")
    call TriggerSleepAction(.05)
    call SetUnitAnimation(GetTriggerUnit(), "Attack Slam")
    call TriggerSleepAction(.15)
    call SetUnitTimeScalePercent(GetTriggerUnit(), 2.5)
    call TriggerSleepAction(.4)
    call SetUnitTimeScalePercent(GetTriggerUnit(), 200.)
    call AddSpecialEffectTargetUnitBJ("chest", jo, "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl")
    call TerrainDeformationCraterBJ(.5, false, GetUnitLoc(GetTriggerUnit()), 400., 60.)
    call PauseUnit(GetTriggerUnit(), false)
    if(kt())then
        call UnitDamageTargetBJ(GetTriggerUnit(), jo, 150., ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
    else
        if(Kt())then
            call UnitDamageTargetBJ(GetTriggerUnit(), jo, 250., ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
        else
            if(lt())then
                call UnitDamageTargetBJ(GetTriggerUnit(), jo, 350., ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
            else
                if(Lt())then
                    call UnitDamageTargetBJ(GetTriggerUnit(), jo, 450., ATTACK_TYPE_NORMAL, DAMAGE_TYPE_ENHANCED)
                endif
            endif
        endif
    endif
    call TriggerSleepAction(.05)
    call ResetUnitAnimation(GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
    call TriggerSleepAction(.15)
    call SetUnitTimeScalePercent(GetTriggerUnit(), 100)
    call SetUnitInvulnerable(GetTriggerUnit(), false)
    call PauseUnit(jo, false)
    call EnableTrigger(GetTriggeringTrigger())
endfunction
function Mt takes nothing returns boolean
    return(GetSpellAbilityId() == 'A03L')and(GetUnitTypeId(GetTriggerUnit()) == 'H015')
endfunction
function pt takes nothing returns boolean
    return(UnitHasBuffBJ(Jo, 'B001') == false)
endfunction
function Pt takes nothing returns nothing
    local unit qt = GetSpellTargetUnit()
    call UnitAddAbility(qt, 'Apiv')
    loop
        exitwhen(pt())
        call TriggerSleepAction(RMaxBJ(bj_WAIT_FOR_COND_MIN_INTERVAL, .25))
    endloop
    call TriggerSleepAction(15.)
    call UnitRemoveAbility(qt, 'Apiv')
endfunction
function Qt takes nothing returns boolean
    return(GetSpellAbilityId() == 'A03L')and(GetUnitTypeId(GetTriggerUnit()) == 'N023')
endfunction
function St takes nothing returns boolean
    return(UnitHasBuffBJ(Jo, 'B001') == false)
endfunction
function tttt takes nothing returns nothing
    local unit qt = GetSpellTargetUnit()
    call UnitAddAbility(qt, 'Apiv')
    loop
        exitwhen(St())
        call TriggerSleepAction(RMaxBJ(bj_WAIT_FOR_COND_MIN_INTERVAL, .25))
    endloop
    call TriggerSleepAction(15.)
    call UnitRemoveAbility(qt, 'Apiv')
endfunction
function Tt takes nothing returns boolean
    return(GetSpellAbilityId() == 'A051')and(GetUnitTypeId(GetTriggerUnit()) == 'O00I')
endfunction
function Ut takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped(GetSpellAbilityId(), GetSpellAbilityUnit()) == 1)
endfunction
function wt takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped(GetSpellAbilityId(), GetSpellAbilityUnit()) == 1)
endfunction
function Wt takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped(GetSpellAbilityId(), GetSpellAbilityUnit()) == 2)
endfunction
function yyyt takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped(GetSpellAbilityId(), GetSpellAbilityUnit()) == 2)
endfunction
function Yt takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'h010', GetOwningPlayer(GetSpellAbilityUnit()), GetUnitLoc(GetSpellTargetUnit()), GetRandomReal(0, 360.))
    set Lo = bj_lastCreatedUnit
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., .0))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 36.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 72.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 108.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 144.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 180.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 216.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 252.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 288.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 324.))
    if(Ut())then
        call VG(Lo)
    endif
    if(wt())then
        return
    endif
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., .0))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 36.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 72.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 108.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 144.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 180.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 216.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 252.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 288.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 324.))
    if(Wt())then
        call VG(Lo)
    endif
    if(yyyt())then
        return
    endif
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., .0))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 36.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 72.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 108.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 144.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 180.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 216.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 252.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 288.))
    call TriggerSleepAction(.05)
    call IssuePointOrderByIdLoc(Lo, 852125, PolarProjectionBJ(GetUnitLoc(Lo), 250., 324.))
    call TriggerSleepAction(.2)
    call IssueImmediateOrderById(Lo, 852127)
    call TriggerSleepAction(.2)
    call VG(Lo)
endfunction
function zt takes nothing returns boolean
    return(GetSpellAbilityId() == 'A0CA')and(GetUnitTypeId(GetTriggerUnit()) == 'Hlgr')
endfunction
function Zt takes nothing returns boolean
    return(IsUnitType(GetEnumUnit(), UNIT_TYPE_STRUCTURE) == false)and(IsUnitEnemy(GetEnumUnit(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function vT takes nothing returns nothing
    if(Zt())then
        call SetUnitPositionLoc(GetEnumUnit(), GetUnitLoc(GetTriggerUnit()))
    endif
endfunction
function eT takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A0CA', GetTriggerUnit()) == 1)
endfunction
function xT takes nothing returns boolean
    return(IsUnitType(GetEnumUnit(), UNIT_TYPE_STRUCTURE) == false)and(IsUnitEnemy(GetEnumUnit(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function oT takes nothing returns nothing
    if(xT())then
        call SetUnitPositionLoc(GetEnumUnit(), GetUnitLoc(GetTriggerUnit()))
    endif
endfunction
function rT takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A0CA', GetTriggerUnit()) == 2)
endfunction
function iT takes nothing returns boolean
    return(IsUnitType(GetEnumUnit(), UNIT_TYPE_STRUCTURE) == false)and(IsUnitEnemy(GetEnumUnit(), GetOwningPlayer(GetTriggerUnit())))
endfunction
function aT takes nothing returns nothing
    if(iT())then
        call SetUnitPositionLoc(GetEnumUnit(), GetUnitLoc(GetTriggerUnit()))
    endif
endfunction
function nT takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A0CA', GetTriggerUnit()) == 3)
endfunction
function VT takes nothing returns nothing
    if(eT())then
        call SetUnitInvulnerable(GetTriggerUnit(), true)
        call ForGroupBJ(GetUnitsInRangeOfLocAll(500., GetUnitLoc(GetTriggerUnit())), function vT)
        call SetUnitInvulnerable(GetTriggerUnit(), false)
    endif
    if(rT())then
        call SetUnitInvulnerable(GetTriggerUnit(), true)
        call ForGroupBJ(GetUnitsInRangeOfLocAll(600., GetUnitLoc(GetTriggerUnit())), function oT)
        call SetUnitInvulnerable(GetTriggerUnit(), false)
    endif
    if(nT())then
        call SetUnitInvulnerable(GetTriggerUnit(), true)
        call ForGroupBJ(GetUnitsInRangeOfLocAll(700., GetUnitLoc(GetTriggerUnit())), function aT)
        call SetUnitInvulnerable(GetTriggerUnit(), false)
    endif
endfunction
function ET takes nothing returns nothing
    call EnableTrigger(GE)
endfunction
function XT takes nothing returns nothing
    call CreateItemLoc('I02Q', GetRandomLocInRect(iC))
    set sr[1] = bj_lastCreatedItem
    call PingMinimapLocForForce(bj_FORCE_ALL_PLAYERS, GetItemLoc(bj_lastCreatedItem), 5.)
    call CreateItemLoc('I02R', GetRandomLocInRect(iC))
    set sr[2] = bj_lastCreatedItem
    call PingMinimapLocForForce(bj_FORCE_ALL_PLAYERS, GetItemLoc(bj_lastCreatedItem), 5.)
    call CreateItemLoc('I02S', GetRandomLocInRect(iC))
    set sr[3] = bj_lastCreatedItem
    call PingMinimapLocForForce(bj_FORCE_ALL_PLAYERS, GetItemLoc(bj_lastCreatedItem), 5.)
    call CreateItemLoc('I02T', GetRandomLocInRect(iC))
    set sr[4] = bj_lastCreatedItem
    call PingMinimapLocForForce(bj_FORCE_ALL_PLAYERS, GetItemLoc(bj_lastCreatedItem), 5.)
    call TriggerSleepAction(180.)
    call RemoveItem(sr[1])
    call RemoveItem(sr[2])
    call RemoveItem(sr[3])
    call RemoveItem(sr[4])
endfunction
function OT takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I02Q')
endfunction
function RT takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'h01K', GetOwningPlayer(GetManipulatingUnit()), GetUnitLoc(GetManipulatingUnit()), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852101, GetManipulatingUnit())
endfunction
function IT takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I02R')
endfunction
function AT takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'h01K', GetOwningPlayer(GetManipulatingUnit()), GetUnitLoc(GetManipulatingUnit()), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852066, GetManipulatingUnit())
endfunction
function NT takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I02S')
endfunction
function bT takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'h01K', GetOwningPlayer(GetManipulatingUnit()), GetUnitLoc(GetManipulatingUnit()), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1., 'BTLF', bj_lastCreatedUnit)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852069, GetManipulatingUnit())
endfunction
function BT takes nothing returns nothing
    call SetUnitUserData(GetTriggerUnit(), 33)
endfunction
function cT takes nothing returns boolean
    return(GetOrderTargetUnit() != null)and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function CT takes nothing returns nothing
    set Ao[(1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))] = GetOrderTargetUnit()
endfunction
function dT takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'oflg')
endfunction
function DT takes nothing returns nothing
    call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetManipulatingUnit()), PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(20, GetOwningPlayer(GetManipulatingUnit()), PLAYER_STATE_RESOURCE_LUMBER)
    call RemoveItem(GetManipulatedItem())
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())), "|cffffcc00Since \"No Flag\" mode has been enabled, these flags you bought will have no effect and you money is returned to you !")
endfunction
function fT takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'flag')
endfunction
function FT takes nothing returns nothing
    call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetManipulatingUnit()), PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(20, GetOwningPlayer(GetManipulatingUnit()), PLAYER_STATE_RESOURCE_LUMBER)
    call RemoveItem(GetManipulatedItem())
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())), "|cffffcc00Since \"No Flag\" mode has been enabled, these flags you bought will have no effect and you money is returned to you !")
endfunction
function gT takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'oflg')
endfunction
function GT takes nothing returns boolean
    return(ix < 5)
endfunction
function hT takes nothing returns boolean
    return(ix < 5)
endfunction
function HT takes nothing returns nothing
    call RemoveItem(GetManipulatedItem())
    if(GT())then
        call TriggerExecute(pE)
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
    endif
    if(hT())then
    else
        call AdjustPlayerStateBJ(20, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
    endif
endfunction
function jT takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'flag')
endfunction
function JT takes nothing returns boolean
    return(rx < 5)
endfunction
function kT takes nothing returns boolean
    return(rx < 5)
endfunction
function KT takes nothing returns nothing
    call RemoveItem(GetManipulatedItem())
    if(JT())then
        call TriggerExecute(ME)
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
    endif
    if(kT())then
    else
        call AdjustPlayerStateBJ(20, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
    endif
endfunction
function lT takes nothing returns nothing
    set rx = (rx + 1)
    set le = (le + 30)
    call SetPlayerHandicapBJ(Player(5), I2R(le))
endfunction
function LT takes nothing returns nothing
    set ix = (ix + 1)
    set Me = (Me + 30)
    call SetPlayerHandicapBJ(Player(11), I2R(Me))
endfunction
function mT takes nothing returns nothing
    set lo[1] = GetRandomLocInRect(iC)
    call TerrainDeformationRippleBJ(4., false, lo[1], 400., 400., 64, 1, 512)
    call TriggerSleepAction(3.)
    call PlaySoundAtPointBJ(ji, 100., lo[1], 0)
    call AddSpecialEffectLocBJ(lo[1], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N028', Player(12), lo[1], bj_UNIT_FACING)
    set Nc[1] = bj_lastCreatedUnit
    call PlaySoundAtPointBJ(ji, 100., lo[1], 0)
    call AddSpecialEffectLocBJ(lo[1], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N028', Player(12), lo[1], bj_UNIT_FACING)
    set Nc[2] = bj_lastCreatedUnit
    call PlaySoundAtPointBJ(ji, 100., lo[1], 0)
    call AddSpecialEffectLocBJ(lo[1], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N028', Player(12), lo[1], bj_UNIT_FACING)
    set Nc[3] = bj_lastCreatedUnit
    set bc = 1
endfunction
function MT takes nothing returns nothing
    set lo[2] = GetRandomLocInRect(iC)
    call TerrainDeformationRippleBJ(4., false, lo[2], 400., 400., 64, 1, 512)
    call TriggerSleepAction(3.)
    call PlaySoundAtPointBJ(ji, 100., lo[2], 0)
    call AddSpecialEffectLocBJ(lo[2], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N029', Player(12), lo[2], bj_UNIT_FACING)
    set Nc[1] = bj_lastCreatedUnit
    call PlaySoundAtPointBJ(ji, 100., lo[2], 0)
    call AddSpecialEffectLocBJ(lo[2], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N029', Player(12), lo[2], bj_UNIT_FACING)
    set Nc[2] = bj_lastCreatedUnit
    call PlaySoundAtPointBJ(ji, 100., lo[2], 0)
    call AddSpecialEffectLocBJ(lo[2], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N029', Player(12), lo[2], bj_UNIT_FACING)
    set Nc[3] = bj_lastCreatedUnit
    set bc = 2
endfunction
function pT takes nothing returns nothing
    set lo[3] = GetRandomLocInRect(iC)
    call TerrainDeformationRippleBJ(4., false, lo[3], 400., 400., 64, 1, 512)
    call TriggerSleepAction(3.)
    call PlaySoundAtPointBJ(ji, 100., lo[3], 0)
    call AddSpecialEffectLocBJ(lo[3], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N02A', Player(12), lo[3], bj_UNIT_FACING)
    set Nc[1] = bj_lastCreatedUnit
    call PlaySoundAtPointBJ(ji, 100., lo[3], 0)
    call AddSpecialEffectLocBJ(lo[3], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N02A', Player(12), lo[3], bj_UNIT_FACING)
    set Nc[2] = bj_lastCreatedUnit
    call PlaySoundAtPointBJ(ji, 100., lo[3], 0)
    call AddSpecialEffectLocBJ(lo[3], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N02A', Player(12), lo[3], bj_UNIT_FACING)
    set Nc[3] = bj_lastCreatedUnit
    set bc = 3
endfunction
function PT takes nothing returns nothing
    set lo[4] = GetRandomLocInRect(iC)
    call TerrainDeformationRippleBJ(4., false, lo[4], 400., 400., 64, 1, 512)
    call TriggerSleepAction(3.)
    call PlaySoundAtPointBJ(ji, 100., lo[4], 0)
    call AddSpecialEffectLocBJ(lo[4], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N02B', Player(12), lo[4], bj_UNIT_FACING)
    set Nc[1] = bj_lastCreatedUnit
    call PlaySoundAtPointBJ(ji, 100., lo[4], 0)
    call AddSpecialEffectLocBJ(lo[4], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N02B', Player(12), lo[4], bj_UNIT_FACING)
    set Nc[2] = bj_lastCreatedUnit
    call PlaySoundAtPointBJ(ji, 100., lo[4], 0)
    call AddSpecialEffectLocBJ(lo[4], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N02B', Player(12), lo[4], bj_UNIT_FACING)
    set Nc[3] = bj_lastCreatedUnit
    set bc = 4
endfunction
function qT takes nothing returns nothing
    set lo[5] = GetRandomLocInRect(iC)
    call TerrainDeformationRippleBJ(4., false, lo[5], 400., 400., 64, 1, 512)
    call TriggerSleepAction(3.)
    call PlaySoundAtPointBJ(ji, 100., lo[5], 0)
    call AddSpecialEffectLocBJ(lo[5], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N027', Player(12), lo[5], bj_UNIT_FACING)
    set Nc[1] = bj_lastCreatedUnit
    call PlaySoundAtPointBJ(ji, 100., lo[5], 0)
    call AddSpecialEffectLocBJ(lo[5], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N027', Player(12), lo[5], bj_UNIT_FACING)
    set Nc[2] = bj_lastCreatedUnit
    call PlaySoundAtPointBJ(ji, 100., lo[5], 0)
    call AddSpecialEffectLocBJ(lo[5], "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdx")
    call DestroyEffect(bj_lastCreatedEffect)
    call CreateNUnitsAtLoc(1, 'N027', Player(12), lo[5], bj_UNIT_FACING)
    set Nc[3] = bj_lastCreatedUnit
    set bc = 5
endfunction
function QT takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'nrel', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nrel', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nrel', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function sT takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'ntks', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'ntks', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'ntks', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function ST takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'nplg', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nplg', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nplg', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function tT takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'ntrd', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'ntrd', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'ntrd', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function TT takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'ngrd', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'ngrd', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'ngrd', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function uT takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'nowe', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nowe', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nowe', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function UT takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'nmgd', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'nmgd', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'nmgd', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function wT takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'Ecen', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'Ecen', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'Ecen', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function WT takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'n01Z', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'n01Z', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'n01Z', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function yT takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'ntrv', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'ntrv', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'ntrv', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function YT takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'nane', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nane', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nane', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function zT takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'nnws', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nnws', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nnws', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function ZT takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'n018', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'n018', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'n018', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function vu takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'nrwm', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'nrwm', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'nrwm', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function eu takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'nsln', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nsln', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nsln', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function xu takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'nbdo', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'nbdo', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'nbdo', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function ou takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'Nmag', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'Nmag', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'Nmag', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function ru takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'n020', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'n020', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'n020', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function iu takes nothing returns nothing
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "|cffffcc00Judgement Day approaches. First Wave. Prepare yourselves. 10 Minutes left |r ")
    call EnableWeatherEffect(bj_lastCreatedWeatherEffect, false)
    call TriggerSleepAction(15.)
    if not vg then
        call CreateNUnitsAtLocFacingLocBJ(5, 'n00W', Player(12), GetRectCenter(fD), GetUnitLoc(hb))
        call CreateNUnitsAtLocFacingLocBJ(5, 'n00W', Player(12), GetRectCenter(dD), GetUnitLoc(hb))
        call CreateNUnitsAtLocFacingLocBJ(5, 'n00W', Player(12), GetRectCenter(cD), GetUnitLoc(hb))
        call CreateNUnitsAtLocFacingLocBJ(5, 'n00W', Player(12), GetRectCenter(FD), GetUnitLoc(lb))
        call CreateNUnitsAtLocFacingLocBJ(5, 'n00W', Player(12), GetRectCenter(DD), GetUnitLoc(lb))
        call CreateNUnitsAtLocFacingLocBJ(5, 'n00W', Player(12), GetRectCenter(CD), GetUnitLoc(lb))
    else
        call CreateNUnitsAtLocFacingLocBJ(5, 'n00W', Player(12), GetRectCenter(dD), GetUnitLoc(hb))
        call CreateNUnitsAtLocFacingLocBJ(5, 'n00W', Player(12), GetRectCenter(DD), GetUnitLoc(lb))
    endif
endfunction
function au takes nothing returns nothing
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "|cffffcc00Judgement Day approaches. Second Wave. Prepare yourselves. 5 Minutes left |r ")
    call EnableWeatherEffect(bj_lastCreatedWeatherEffect, false)
    call TriggerSleepAction(15.)
    if not vg then
        call CreateNUnitsAtLocFacingLocBJ(3, 'n00U', Player(12), GetRectCenter(fD), GetUnitLoc(hb))
        call CreateNUnitsAtLocFacingLocBJ(3, 'n00U', Player(12), GetRectCenter(dD), GetUnitLoc(hb))
        call CreateNUnitsAtLocFacingLocBJ(3, 'n00U', Player(12), GetRectCenter(cD), GetUnitLoc(hb))
        call CreateNUnitsAtLocFacingLocBJ(3, 'n00U', Player(12), GetRectCenter(FD), GetUnitLoc(lb))
        call CreateNUnitsAtLocFacingLocBJ(3, 'n00U', Player(12), GetRectCenter(DD), GetUnitLoc(lb))
        call CreateNUnitsAtLocFacingLocBJ(3, 'n00U', Player(12), GetRectCenter(CD), GetUnitLoc(lb))
    else
        call CreateNUnitsAtLocFacingLocBJ(3, 'n00U', Player(12), GetRectCenter(dD), GetUnitLoc(hb))
        call CreateNUnitsAtLocFacingLocBJ(3, 'n00U', Player(12), GetRectCenter(DD), GetUnitLoc(lb))
    endif
endfunction
function nu takes nothing returns nothing
    call TriggerExecute(ME)
    call TriggerExecute(pE)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00All creeps/buildings increased hp.|r ")
endfunction
function Vu takes nothing returns nothing
    call CameraSetEQNoiseForPlayer(GetEnumPlayer(), 8.)
endfunction
function Eu takes nothing returns nothing
    call CameraSetEQNoiseForPlayer(GetEnumPlayer(), 8.)
endfunction
function Xu takes nothing returns nothing
    call CameraClearNoiseForPlayer(GetEnumPlayer())
endfunction
function Ou takes nothing returns nothing
    call CameraClearNoiseForPlayer(GetEnumPlayer())
endfunction
function Ru takes nothing returns nothing
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "|cffffcc00Judgement Day is here. Prepare !!!|r ")
    call EnableWeatherEffect(bj_lastCreatedWeatherEffect, false)
    call PlaySoundAtPointBJ(Ai, 100., GetRectCenter(OD), 0)
    call PolledWait(10.)
    call PlaySoundAtPointBJ(Ai, 100., GetRectCenter(OD), 0)
    call PolledWait(10.)
    call PlaySoundAtPointBJ(Ai, 100., GetRectCenter(OD), 0)
    call PlaySoundAtPointBJ(xi, 100., GetRectCenter(OD), 0)
    call PolledWait(2)
    call ForForce(bj_FORCE_PLAYER[11], function Vu)
    call ForForce(bj_FORCE_PLAYER[5], function Eu)
    call PolledWait(5.)
    call ForForce(GetPlayersAllies(Player(11)), function Xu)
    call ForForce(GetPlayersAllies(Player(5)), function Ou)
    call CreateNUnitsAtLocFacingLocBJ(1, 'N010', Player(12), GetRectCenter(OD), GetUnitLoc(lb))
    call AddSpecialEffectTargetUnitBJ("chest rear", bj_lastCreatedUnit, "Units\\Extra\\IllidanWings.mdx")
    set no = bj_lastCreatedUnit
    call UnitApplyTimedLifeBJ(360., 'BTLF', bj_lastCreatedUnit)
    call SetUnitAnimation(bj_lastCreatedUnit, "birth")
    call SetUnitAnimation(bj_lastCreatedUnit, "birth")
endfunction
function Iu takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'n00I', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nsgb', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nsgb', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nsgb', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function Au takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'n00I', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nano', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nano', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nano', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function Nu takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'e00L', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'e00L', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'e00L', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
endfunction
function bu takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'n02M', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'n02M', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'n02M', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function Bu takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'n001', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'njgb', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'njgb', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'njgb', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function cu takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'n001', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nsbm', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nsbm', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'nsbm', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function Cu takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'u00J', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'u00J', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'u00J', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function du takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'u00G', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'u00G', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'u00G', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function Du takes nothing returns nothing
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "There is too much death... The sky is crying... This must end... Let's end it now !")
    call CreateNUnitsAtLoc(1, 'n019', Player(12), GetRectCenter(AD), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(180., 'BTLF', bj_lastCreatedUnit)
endfunction
function fu takes nothing returns boolean
    return(GetSpellAbilityId() == 'A04H')
endfunction
function Fu takes nothing returns nothing
    call PlaySoundAtPointBJ(Ji, 100, GetSpellTargetLoc(), 0)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "Nuclear launch detected...")
    call CreateNUnitsAtLoc(1, 'n02E', GetTriggerPlayer(), GetSpellTargetLoc(), bj_UNIT_FACING)
    call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852488, GetSpellTargetLoc())
    call UnitApplyTimedLifeBJ(25., 'BTLF', bj_lastCreatedUnit)
endfunction
function gu takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'u00H', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'u00H', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'u00H', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function Gu takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'u00H', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'u00H', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'u00H', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
endfunction
function hu takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'u00I', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'u00I', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'u00I', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function Hu takes nothing returns nothing
    call CreateNUnitsAtLoc(2, 'u00I', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'u00I', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, 'u00I', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
endfunction
function ju takes nothing returns boolean
    return(GetItemTypeId(GetSoldItem()) == 'I010')
endfunction
function Ju takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'h017', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(180., 'BTLF', bj_lastCreatedUnit)
    call CreateNUnitsAtLoc(1, 'h017', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(180., 'BTLF', bj_lastCreatedUnit)
    call CreateNUnitsAtLoc(1, 'h017', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(180., 'BTLF', bj_lastCreatedUnit)
endfunction
function ku takes nothing returns boolean
    return(GetItemTypeId(GetSoldItem()) == 'I011')
endfunction
function Ku takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'h018', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(180., 'BTLF', bj_lastCreatedUnit)
    call CreateNUnitsAtLoc(1, 'h018', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(180., 'BTLF', bj_lastCreatedUnit)
    call CreateNUnitsAtLoc(1, 'h018', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(180., 'BTLF', bj_lastCreatedUnit)
endfunction
function lu takes nothing returns boolean
    return(GetSpellAbilityId() == 'A027')
endfunction
function Lu takes nothing returns nothing
    call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\human\\dispelmagic\\dispelmagictarget.mdl")
    call ConditionalTriggerExecute(kX)
    set xo = (GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) - GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()))
    set xo = RMinBJ(xo, GetUnitStateSwap(UNIT_STATE_MANA, GetTriggerUnit()))
    call SetWidgetLife(GetTriggerUnit(), (xo + GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit())))
    call SetUnitManaBJ(GetTriggerUnit(), (GetUnitStateSwap(UNIT_STATE_MANA, GetTriggerUnit()) - xo))
endfunction
function mu takes nothing returns nothing
    local effect fx = bj_lastCreatedEffect
    call PolledWait(10.)
    call DestroyEffect(fx)
endfunction
function Mu takes nothing returns nothing
    call EnableWeatherEffect(Ho, false)
endfunction
function pu takes nothing returns nothing
    call SetMusicVolumeBJ(.0)
    call PlaySoundBJ(Ei)
    call TriggerSleepAction(285.)
    call SetMusicVolumeBJ(100)
endfunction
function Pu takes nothing returns nothing
    call SetSpeechVolumeGroupsBJ()
    call PlaySoundBJ(bi)
    call TriggerWaitForSound(bj_lastPlayedSound, 0)
    call VolumeGroupResetBJ()
    call EnableWeatherEffect(Ho, false)
    call AddWeatherEffectSaveLast(bj_mapInitialPlayableArea, 'WNcw')
    set Ho = bj_lastCreatedWeatherEffect
    call EnableWeatherEffect(bj_lastCreatedWeatherEffect, true)
endfunction
function qu takes nothing returns nothing
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFFFC00WARNING: |CFFFF0303 Commander's summoning started !")
    call CreateTimerDialogBJ(Ax, "Summoning:")
    set Lx = bj_lastCreatedTimerDialog
    call StartTimerBJ(Ax, false, 120.)
    call SetMusicVolumeBJ(.0)
    call PlaySoundBJ(Gi)
    call TriggerSleepAction(90.)
    call SetMusicVolumeBJ(100)
endfunction
function Qu takes nothing returns nothing
    call EnableWeatherEffect(Ho, false)
    call AddWeatherEffectSaveLast(bj_mapInitialPlayableArea, 'LRma')
    set Ho = bj_lastCreatedWeatherEffect
    call EnableWeatherEffect(bj_lastCreatedWeatherEffect, true)
endfunction
function su takes nothing returns nothing
    call EnableWeatherEffect(Ho, false)
    call AddWeatherEffectSaveLast(bj_mapInitialPlayableArea, 'RLlr')
    set Ho = bj_lastCreatedWeatherEffect
    call EnableWeatherEffect(bj_lastCreatedWeatherEffect, true)
endfunction
function Su takes nothing returns nothing
    call CameraClearNoiseForPlayer(GetEnumPlayer())
endfunction
function tu takes nothing returns nothing
    call ForForce(bj_FORCE_ALL_PLAYERS, function Su)
endfunction
function Tu takes nothing returns nothing
    call CameraSetEQNoiseForPlayer(GetEnumPlayer(), 3)
endfunction
function uu takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'Nmag', Player(11), GetRectCenter(XD), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'Ecen', Player(5), GetRectCenter(ED), bj_UNIT_FACING)
    call EnableWeatherEffect(bj_lastCreatedWeatherEffect, false)
    call AddWeatherEffectSaveLast(bj_mapInitialPlayableArea, 'WOlw')
    set Ho = bj_lastCreatedWeatherEffect
    call EnableWeatherEffect(bj_lastCreatedWeatherEffect, true)
    call ForForce(bj_FORCE_ALL_PLAYERS, function Tu)
    call PlaySoundBJ(Sr)
    call PlayThematicMusic("Sound\\Music\\mp3Music\\Doom.mp3")
endfunction
function Uu takes nothing returns boolean
    return(ze)
endfunction
function wu takes nothing returns boolean
    return(pe > 7)
endfunction
function Wu takes nothing returns boolean
    return(Ye == false)
endfunction
function yu takes nothing returns boolean
    return(ye == false)
endfunction
function Yu takes nothing returns boolean
    return(We == false)
endfunction
function zu takes nothing returns boolean
    return(Ue == false)
endfunction
function Zu takes nothing returns nothing
    set pe = (pe + 1)
    if(wu())then
        set pe = 1
    endif
    if(Wu())then
        call TriggerExecute(MN)
    endif
    if(yu())then
        call TriggerExecute(mN)
    endif
    call TriggerExecute(LN)
    if(Yu())then
        call TriggerExecute(jN)
    endif
    if(zu())then
        call TriggerExecute(JN)
    endif
    call TriggerExecute(HN)
endfunction
function vU takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'IC14')
endfunction
function eU takes nothing returns nothing
    call RemoveItem(GetManipulatedItem())
    call AdjustPlayerStateBJ(Qe, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
    set Qe = 0
endfunction
function xU takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I001')
endfunction
function oU takes nothing returns nothing
    call RemoveItem(GetManipulatedItem())
    call AdjustPlayerStateBJ(Ox, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
    set Ox = 0
endfunction
function rU takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'IC14')
endfunction
function iU takes nothing returns nothing
    call RemoveItem(GetManipulatedItem())
    call AdjustPlayerStateBJ(se, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
    set se = 0
endfunction
function aU takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I001')
endfunction
function nU takes nothing returns nothing
    call RemoveItem(GetManipulatedItem())
    call AdjustPlayerStateBJ(Rx, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
    set Rx = 0
endfunction
function VU takes nothing returns boolean
    return(IsUnitEnemy(GetKillingUnit(), Player(11)))
endfunction
function EU takes nothing returns nothing
    call AdjustPlayerStateBJ((GetUnitPointValue(GetDyingUnit()) - 99), GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_LUMBER)
endfunction
function XU takes nothing returns boolean
    return(IsUnitEnemy(GetKillingUnit(), Player(5)))
endfunction
function OU takes nothing returns nothing
    call AdjustPlayerStateBJ((GetUnitPointValue(GetDyingUnit()) - 99), GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_LUMBER)
endfunction
function RU takes nothing returns nothing
    call SetPlayerHandicapXPBJ(GetEnumPlayer(), 80.)
endfunction
function IU takes nothing returns nothing
    call ForForce(bj_FORCE_ALL_PLAYERS, function RU)
    call SetPlayerTechResearchedSwap('Rhme', 3, Player(5))
    call SetPlayerTechResearchedSwap('Rume', 3, Player(11))
    set Pe = true
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "|cffffcc00D-Day approaches ... |r ")
endfunction
function AU takes nothing returns nothing
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "|cffffcc00Winged invasion in 30 seconds ... |r ")
endfunction
function NU takes nothing returns nothing
    call SetPlayerHandicapXPBJ(GetEnumPlayer(), 100.)
endfunction
function bU takes nothing returns nothing
    call ForForce(bj_FORCE_ALL_PLAYERS, function NU)
    call ReplaceUnitBJ(gb, 'ndrz', 2)
    call ReplaceUnitBJ(Kb, 'ndrk', 2)
    set qe = true
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "|cffffcc00Winged invasion ... |r ")
endfunction
function BU takes nothing returns nothing
    set Xx = true
    call DisableTrigger(cO)
    call EnableTrigger(CO)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10.,"|cffffcc00D-Day ... |r 
    Hero bounty doubles ...")
    call SetUnitInvulnerable(mb, false)
    call SetUnitInvulnerable(Lb, false)
    call SetUnitInvulnerable(Hb, false)
    call SetUnitInvulnerable(jb, false)
    call DisableTrigger(GetTriggeringTrigger())
endfunction
function cU takes nothing returns boolean
    return(GetPlayerSlotState(GetTriggerPlayer()) != PLAYER_SLOT_STATE_PLAYING)
endfunction
function CU takes nothing returns boolean
    return(GetPlayerController(GetTriggerPlayer()) == MAP_CONTROL_COMPUTER)
endfunction
function dU takes nothing returns boolean
    return(GetBooleanOr(cU(), CU()))
endfunction
function DU takes nothing returns boolean
    return(IsPlayerAlly(GetTriggerPlayer(), Player(5)))
endfunction
function fU takes nothing returns nothing
    if(DU())then
        set Ox = (Ox + GetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_GOLD))
    else
        set Rx = (Rx + GetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_GOLD))
    endif
    call SetPlayerStateBJ(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_GOLD, 0)
endfunction
function FU takes nothing returns boolean
    return(GetPlayerSlotState(GetTriggerPlayer()) != PLAYER_SLOT_STATE_PLAYING)
endfunction
function gU takes nothing returns boolean
    return(GetPlayerController(GetTriggerPlayer()) == MAP_CONTROL_COMPUTER)
endfunction
function GU takes nothing returns boolean
    return(GetBooleanOr(FU(), gU()))
endfunction
function hU takes nothing returns boolean
    return(IsPlayerAlly(GetTriggerPlayer(), Player(5)))
endfunction
function HU takes nothing returns nothing
    if(hU())then
        set Qe = (Qe + GetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER))
    else
        set se = (se + GetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER))
    endif
    call SetPlayerStateBJ(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER, 0)
endfunction
function jU takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_STRUCTURE) != null)
endfunction
function JU takes nothing returns nothing
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "Light Forces lost a building...")
endfunction
function kU takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_STRUCTURE) != null)
endfunction
function KU takes nothing returns nothing
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "Dark Forces lost a building...")
endfunction
function lU takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetPlayerTeam(GetTriggerPlayer()) != GetPlayerTeam(GetOwningPlayer(GetKillingUnit())))
endfunction
function LU takes nothing returns boolean
    return(GetPlayerName(GetOwningPlayer(GetKillingUnit())) == "")
endfunction
function Trig_HeroBounty_Func002001 takes nothing returns boolean
    return(GetPlayerName(GetOwningPlayer(GetKillingUnit())) == "")
endfunction
function mU takes nothing returns nothing
    local location l = GetUnitLoc(GetTriggerUnit())
    if(LU())then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, (Ne[(1 + GetPlayerId(GetTriggerPlayer()))] + (GetPlayerName(GetTriggerPlayer()) + ("|rhas been slain"))))
    endif
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, (((Ne[(1 + GetPlayerId(GetTriggerPlayer()))] + (GetPlayerName(GetTriggerPlayer()) + "|r")) + " has been slain by ") + (Ne[(1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))] + (GetPlayerName(GetOwningPlayer(GetKillingUnit())) + "|r."))))
    call AdjustPlayerStateBJ(500, GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_GOLD)
    call CreateTextTagLocBJ("+500", l, 0, 10, 100.00, 86.27, 0.00, 0)
    call ShowTextTagForceBJ(false, GetLastCreatedTextTag(), GetPlayersAll())
    call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), GetForceOfPlayer(GetOwningPlayer(GetKillingUnit())))
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 2.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 1.00)
    call RemoveLocation(l)
    set l = null
    call AdjustPlayerStateBJ(5, GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_LUMBER)
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetKillingUnit())), "You earned 500 gold and 5 wood for that.")
endfunction
function MU takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))and(GetPlayerTeam(GetTriggerPlayer()) != GetPlayerTeam(GetOwningPlayer(GetKillingUnit())))
endfunction
function pU takes nothing returns boolean
    return(GetPlayerName(GetOwningPlayer(GetKillingUnit())) == "")
endfunction
function Trig_HeroBounty2_Func002001 takes nothing returns boolean
    return(GetPlayerName(GetOwningPlayer(GetKillingUnit())) == "")
endfunction
function PU takes nothing returns nothing
    local location l = GetUnitLoc(GetTriggerUnit())
    if(pU())then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, (Ne[(1 + GetPlayerId(GetTriggerPlayer()))] + (GetPlayerName(GetTriggerPlayer()) + ("|rhas been slain"))))
    endif
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, (((Ne[(1 + GetPlayerId(GetTriggerPlayer()))] + (GetPlayerName(GetTriggerPlayer()) + "|r")) + " has been slain by ") + (Ne[(1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))] + (GetPlayerName(GetOwningPlayer(GetKillingUnit())) + "|r."))))
    call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_GOLD)
    call CreateTextTagLocBJ("+1000", l, 0, 10, 100.00, 86.27, 0.00, 0)
    call ShowTextTagForceBJ(false, GetLastCreatedTextTag(), GetPlayersAll())
    call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), GetForceOfPlayer(GetOwningPlayer(GetKillingUnit())))
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 2.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 1.00)
    call RemoveLocation(l)
    set l = null
    call AdjustPlayerStateBJ(10, GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_LUMBER)
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetKillingUnit())), "You earned 1000 gold and 10 lumber for that.")
endfunction
function qU takes nothing returns boolean
    return(GetPlayerSlotState(Player(- 1 + (bj_forLoopAIndex))) == PLAYER_SLOT_STATE_LEFT)
endfunction
function QU takes nothing returns nothing
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 12
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(qU())then
            call ConditionalTriggerExecute(DO)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction
function sU takes nothing returns boolean
    return(Re[bj_forLoopAIndex] == false)
endfunction
function SU takes nothing returns boolean
    return(IsPlayerAlly(Player(- 1 + (Zv)), Player(5)))
endfunction
function tU takes nothing returns boolean
    return(IsPlayerAlly(Player(- 1 + (Zv)), Player(5)))
endfunction
function TU takes nothing returns boolean
    return(IsPlayerAlly(GetFilterPlayer(), Player(- 1 + (Zv))))
endfunction
function uU takes nothing returns boolean
    return(GetPlayerSlotState(GetFilterPlayer()) == PLAYER_SLOT_STATE_PLAYING)
endfunction
function UU takes nothing returns boolean
    return GetBooleanAnd(TU(), uU())
endfunction
function wU takes nothing returns boolean
    return(IsPlayerAlly(GetFilterPlayer(), Player(- 1 + (Zv))))
endfunction
function WU takes nothing returns boolean
    return(GetFilterPlayer() != Player(- 1 + (Zv)))
endfunction
function yU takes nothing returns boolean
    return GetBooleanAnd(wU(), WU())
endfunction
function YU takes nothing returns nothing
endfunction
function zU takes nothing returns boolean
    return(IsPlayerAlly(GetFilterPlayer(), Player(- 1 + (Zv))))
endfunction
function ZU takes nothing returns boolean
    return(GetFilterPlayer() != Player(- 1 + (Zv)))
endfunction
function vw takes nothing returns boolean
    return GetBooleanAnd(zU(), ZU())
endfunction
function ew takes nothing returns nothing
endfunction
function xw takes nothing returns nothing
    set Zv = bj_forLoopAIndex
    set Re[Zv] = true
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ((Ne[Zv] + (GetPlayerName(Player(- 1 + (Zv))) + "|r")) + " has left the game!"))
    if IsPlayerAlly(Player(- 1 + (Zv)), Player(5))then
        call SetPlayerAllianceBJ(Player(- 1 + (Zv)), ALLIANCE_SHARED_CONTROL, true, Player(0))
        call SetPlayerAllianceBJ(Player(- 1 + (Zv)), ALLIANCE_SHARED_CONTROL, true, Player(1))
        call SetPlayerAllianceBJ(Player(- 1 + (Zv)), ALLIANCE_SHARED_CONTROL, true, Player(2))
        call SetPlayerAllianceBJ(Player(- 1 + (Zv)), ALLIANCE_SHARED_CONTROL, true, Player(3))
        call SetPlayerAllianceBJ(Player(- 1 + (Zv)), ALLIANCE_SHARED_CONTROL, true, Player(4))
    elseif IsPlayerAlly(Player(- 1 + (Zv)), Player(11))then
        call SetPlayerAllianceBJ(Player(- 1 + (Zv)), ALLIANCE_SHARED_CONTROL, true, Player(6))
        call SetPlayerAllianceBJ(Player(- 1 + (Zv)), ALLIANCE_SHARED_CONTROL, true, Player(7))
        call SetPlayerAllianceBJ(Player(- 1 + (Zv)), ALLIANCE_SHARED_CONTROL, true, Player(8))
        call SetPlayerAllianceBJ(Player(- 1 + (Zv)), ALLIANCE_SHARED_CONTROL, true, Player(9))
        call SetPlayerAllianceBJ(Player(- 1 + (Zv)), ALLIANCE_SHARED_CONTROL, true, Player(10))
    endif
    if(SU())then
        set Qe = (Qe + GetPlayerState(Player(- 1 + (Zv)), PLAYER_STATE_RESOURCE_LUMBER))
    else
        set se = (se + GetPlayerState(Player(- 1 + (Zv)), PLAYER_STATE_RESOURCE_LUMBER))
    endif
    if(tU())then
        set Ox = (Ox + GetPlayerState(Player(- 1 + (Zv)), PLAYER_STATE_RESOURCE_GOLD))
    else
        set Rx = (Rx + GetPlayerState(Player(- 1 + (Zv)), PLAYER_STATE_RESOURCE_GOLD))
    endif
    set uo = (CountPlayersInForceBJ(GetPlayersMatching(Condition(function UU))) - 1)
    call ForForce(GetPlayersMatching(Condition(function yU)), function YU)
    call ForForce(GetPlayersMatching(Condition(function vw)), function ew)
    call SetPlayerStateBJ(Player(- 1 + (Zv)), PLAYER_STATE_RESOURCE_GOLD, 0)
    call SetPlayerStateBJ(Player(- 1 + (Zv)), PLAYER_STATE_RESOURCE_LUMBER, 0)
endfunction
function ow takes nothing returns nothing
    call CustomVictoryBJ(GetEnumPlayer(), true, true)
endfunction
function rw takes nothing returns nothing
    call CustomDefeatBJ(GetEnumPlayer(),"Defeat!!!
    Your Citadel has been destroyed!")
endfunction
function iw takes nothing returns nothing
    set Pc = " | WIN" + Pc
    set qc = " | LOSE" + qc
    call DisableTrigger(FO)
    call KillUnit(Pb)
    call SetUnitPositionLoc(qb, GetRectCenter(CC))
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "|cffffcc00Game ends in 15 seconds ...|r ")
    call TriggerSleepAction(5.)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "Thank you for playing |CFFDCDCDCD|CFFDDDDDDD|CFFDFDFDFa|CFFE1E1E1y|CFFE3E3E3: |CFFE6E6E6J|CFFE8E8E8u|CFFEAEAEAd|CFFEBEBEBg|CFFEDEDEDe|CFFEFEFEFm|CFFF1F1F1e|CFFF2F2F2n|CFFF4F4F4t |CFFF8F8F81|CFFF9F9F99|CFFFBFBFB.|CFFFDFDFD9|CFFFFFFFFb|r")
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "http://www.ddayworld.com/")
    call TriggerSleepAction(10.)
    call ForForce(GetPlayersAllies(Player(5)), function ow)
    call ForForce(GetPlayersAllies(Player(11)), function rw)
endfunction
function aw takes nothing returns nothing
    call CustomVictoryBJ(GetEnumPlayer(), true, true)
endfunction
function nw takes nothing returns nothing
    call CustomDefeatBJ(GetEnumPlayer(),"Defeat!!!
    Your Castle has been destroyed!")
endfunction
function Vw takes nothing returns nothing
    set Pc = " | LOSE" + Pc
    set qc = " | WIN" + qc
    call DisableTrigger(fO)
    call KillUnit(qb)
    call SetUnitPositionLoc(Pb, GetRectCenter(cC))
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "|cffffcc00Game ends in 15 seconds ...|r ")
    call TriggerSleepAction(5.)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "Thank you for playing |CFFDCDCDCD|CFFDDDDDDD|CFFDFDFDFa|CFFE1E1E1y|CFFE3E3E3: |CFFE6E6E6J|CFFE8E8E8u|CFFEAEAEAd|CFFEBEBEBg|CFFEDEDEDe|CFFEFEFEFm|CFFF1F1F1e|CFFF2F2F2n|CFFF4F4F4t |CFFF8F8F81|CFFF9F9F99|CFFFBFBFB.|CFFFDFDFD9|CFFFFFFFFb|r")
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10., "http://www.ddayworld.com/")
    call TriggerSleepAction(10.)
    call ForForce(GetPlayersAllies(Player(11)), function aw)
    call ForForce(GetPlayersAllies(Player(5)), function nw)
endfunction
function Ew takes nothing returns nothing
    set Ue = true
    if Vc == null then
        set Vc = CreateUnit(Player(11), 'e00N', 6845, - 2175, 0)
        call UnitAddAbility(Vc, 'A0A2')
        call UnitAddAbility(Vc, 'A09X')
        call UnitAddAbility(Vc, 'A09W')
        call UnitAddAbility(Vc, 'A09Y')
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Barracks destroyed, all unit of Dark Force increase 6% damage, 4 armor.|r")
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Barracks destroyed, all building of Dark Force increase 8% damage, 5 armor.|r")
    else
        call SetUnitAbilityLevel(Vc, 'A0A2', 2)
        call SetUnitAbilityLevel(Vc, 'A09X', 2)
        call SetUnitAbilityLevel(Vc, 'A09W', 2)
        call SetUnitAbilityLevel(Vc, 'A09Y', 2)
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Barracks destroyed, all unit of Dark Force increase 6% damage, 4 armor.|r")
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Barracks destroyed, all building of Dark Force increase 8% damage, 5 armor.|r")
    endif
endfunction
function Xw takes nothing returns nothing
    set We = true
    if Vc == null then
        set Vc = CreateUnit(Player(11), 'e00N', 6845, - 2175, 0)
        call UnitAddAbility(Vc, 'A0A2')
        call UnitAddAbility(Vc, 'A09X')
        call UnitAddAbility(Vc, 'A09W')
        call UnitAddAbility(Vc, 'A09Y')
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Barracks destroyed, all unit of Dark Force increase 6% damage, 4 armor.|r")
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Barracks destroyed, all building of Dark Force increase 8% damage, 5 armor.|r")
    else
        call SetUnitAbilityLevel(Vc, 'A0A2', 2)
        call SetUnitAbilityLevel(Vc, 'A09X', 2)
        call SetUnitAbilityLevel(Vc, 'A09W', 2)
        call SetUnitAbilityLevel(Vc, 'A09Y', 2)
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Barracks destroyed, all unit of Dark Force increase 6% damage, 4 armor.|r")
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Barracks destroyed, all building of Dark Force increase 8% damage, 5 armor.|r")
    endif
endfunction
function Ow takes nothing returns nothing
    set ye = true
    if nc == null then
        set nc = CreateUnit(Player(5), 'e00N', - 6145, - 1725, 0)
        call UnitAddAbility(nc, 'A0A2')
        call UnitAddAbility(nc, 'A09X')
        call UnitAddAbility(nc, 'A09W')
        call UnitAddAbility(nc, 'A09Y')
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Crypt destroyed, all unit of Light Force increase 6% damage, 4 armor.|r")
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Crypt destroyed, all building of Light Force increase 8% damage, 5 armor.|r")
    else
        call SetUnitAbilityLevel(nc, 'A0A2', 2)
        call SetUnitAbilityLevel(nc, 'A09X', 2)
        call SetUnitAbilityLevel(nc, 'A09W', 2)
        call SetUnitAbilityLevel(nc, 'A09Y', 2)
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Crypt destroyed, all unit of Light Force increase 6% damage, 4 armor.|r")
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Crypt destroyed, all building of Light Force increase 8% damage, 5 armor.|r")
    endif
endfunction
function Rw takes nothing returns nothing
    set Ye = true
    if nc == null then
        set nc = CreateUnit(Player(5), 'e00N', - 6145, - 1725, 0)
        call UnitAddAbility(nc, 'A0A2')
        call UnitAddAbility(nc, 'A09X')
        call UnitAddAbility(nc, 'A09W')
        call UnitAddAbility(nc, 'A09Y')
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Crypt destroyed, all unit of Light Force increase 6% damage, 4 armor.|r")
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Crypt destroyed, all building of Light Force increase 8% damage, 5 armor.|r")
    else
        call SetUnitAbilityLevel(nc, 'A0A2', 2)
        call SetUnitAbilityLevel(nc, 'A09X', 2)
        call SetUnitAbilityLevel(nc, 'A09W', 2)
        call SetUnitAbilityLevel(nc, 'A09Y', 2)
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Crypt destroyed, all unit of Light Force increase 6% damage, 4 armor.|r")
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|cffffcc00Crypt destroyed, all building of Light Force increase 8% damage, 5 armor.|r")
    endif
endfunction
function Iw takes nothing returns boolean
    return(GetItemTypeId(GetSoldItem()) == 'I004')
endfunction
function Aw takes nothing returns nothing
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00E', Player(12), GetRectCenter(XD), GetUnitLoc(GetTriggerUnit()))
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00E', Player(12), GetRectCenter(XD), GetUnitLoc(GetTriggerUnit()))
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00E', Player(12), GetRectCenter(XD), GetUnitLoc(GetTriggerUnit()))
endfunction
function Nw takes nothing returns boolean
    return(GetItemTypeId(GetSoldItem()) == 'I00A')
endfunction
function bw takes nothing returns nothing
    call CreateNUnitsAtLocFacingLocBJ(1, 'u006', Player(12), GetRectCenter(ED), GetUnitLoc(GetTriggerUnit()))
    call CreateNUnitsAtLocFacingLocBJ(1, 'u006', Player(12), GetRectCenter(ED), GetUnitLoc(GetTriggerUnit()))
    call CreateNUnitsAtLocFacingLocBJ(1, 'u006', Player(12), GetRectCenter(ED), GetUnitLoc(GetTriggerUnit()))
endfunction
function Bw takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I00G')
endfunction
function cw takes nothing returns nothing
    call AdjustPlayerStateBJ(6, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
endfunction
function Cw takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I00V')
endfunction
function dw takes nothing returns nothing
    call StartTimerBJ(ee, false, 1.)
    call StartTimerBJ(xe, false, 1.)
    call StartTimerBJ(oe, false, 1.)
    call StartTimerBJ(re, false, 1.)
    call StartTimerBJ(ie, false, 1.)
    call StartTimerBJ(ae, false, 1.)
    call StartTimerBJ(ne, false, 1.)
    call StartTimerBJ(Ve, false, 1.)
    call StartTimerBJ(Ee, false, 1.)
    call StartTimerBJ(Xe, false, 1.)
endfunction
function Dw takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I00H')
endfunction
function fw takes nothing returns nothing
    call AdjustPlayerStateBJ(800, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
endfunction
function Fw takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I007')
endfunction
function gw takes nothing returns nothing
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00I', Player(12), GetRectCenter(GD), GetRectCenter(bj_mapInitialPlayableArea))
    call SetUnitOwner(bj_lastCreatedUnit, GetOwningPlayer(GetTriggerUnit()), true)
    call IssueImmediateOrderById(bj_lastCreatedUnit, 851993)
endfunction
function Gw takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I00F')
endfunction
function hw takes nothing returns nothing
    call CreateNUnitsAtLocFacingLocBJ(1, 'n001', Player(12), GetRectCenter(jD), GetRectCenter(bj_mapInitialPlayableArea))
    call SetUnitOwner(bj_lastCreatedUnit, GetOwningPlayer(GetTriggerUnit()), true)
    call IssueImmediateOrderById(bj_lastCreatedUnit, 851993)
endfunction
function Hw takes nothing returns boolean
    return(GetItemTypeId(GetSoldItem()) == 'I005')
endfunction
function jw takes nothing returns nothing
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00G', Player(12), GetRectCenter(XD), GetUnitLoc(GetTriggerUnit()))
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00G', Player(12), GetRectCenter(XD), GetUnitLoc(GetTriggerUnit()))
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00G', Player(12), GetRectCenter(XD), GetUnitLoc(GetTriggerUnit()))
endfunction
function Jw takes nothing returns boolean
    return(GetItemTypeId(GetSoldItem()) == 'I00D')
endfunction
function kw takes nothing returns nothing
    call CreateNUnitsAtLocFacingLocBJ(1, 'u007', Player(12), GetRectCenter(ED), GetUnitLoc(GetTriggerUnit()))
    call CreateNUnitsAtLocFacingLocBJ(1, 'u007', Player(12), GetRectCenter(ED), GetUnitLoc(GetTriggerUnit()))
    call CreateNUnitsAtLocFacingLocBJ(1, 'u007', Player(12), GetRectCenter(ED), GetUnitLoc(GetTriggerUnit()))
endfunction
function Kw takes nothing returns boolean
    return(GetItemTypeId(GetSoldItem()) == 'I006')
endfunction
function lw takes nothing returns nothing
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00H', Player(12), GetRectCenter(XD), GetUnitLoc(GetTriggerUnit()))
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00H', Player(12), GetRectCenter(XD), GetUnitLoc(GetTriggerUnit()))
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00H', Player(12), GetRectCenter(XD), GetUnitLoc(GetTriggerUnit()))
endfunction
function Lw takes nothing returns boolean
    return(GetItemTypeId(GetSoldItem()) == 'I00E')
endfunction
function mw takes nothing returns nothing
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00J', Player(12), GetRectCenter(ED), GetUnitLoc(GetTriggerUnit()))
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00J', Player(12), GetRectCenter(ED), GetUnitLoc(GetTriggerUnit()))
    call CreateNUnitsAtLocFacingLocBJ(1, 'n00J', Player(12), GetRectCenter(ED), GetUnitLoc(GetTriggerUnit()))
endfunction
function Mw takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function pw takes nothing returns boolean
    return(GetHeroLevel(GetDyingUnit()) >= 21)
endfunction
function Pw takes nothing returns nothing
    set Be[0] = (Be[0] + 1)
    if(pw())then
        call StartTimerBJ(ee, false, hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ir)
    else
        call StartTimerBJ(ee, false, (hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ex * I2R(GetHeroLevel(GetDyingUnit()))))
    endif
    call CreateTimerDialogBJ(bj_lastStartedTimer, (GetPlayerName(GetTriggerPlayer()) + "(Good)"))
    call TimerDialogSetTitleColorBJ(bj_lastCreatedTimerDialog, 100, .0, .0, 0)
    set ve[(1 + GetPlayerId(GetTriggerPlayer()))] = bj_lastCreatedTimerDialog
    set Oe[1] = GetTriggerUnit()
endfunction
function qw takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function Qw takes nothing returns boolean
    return(GetHeroLevel(GetDyingUnit()) >= 21)
endfunction
function sw takes nothing returns nothing
    set Be[1] = (Be[1] + 1)
    if(Qw())then
        call StartTimerBJ(xe, false, hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ir)
    else
        call StartTimerBJ(xe, false, (hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ex * I2R(GetHeroLevel(GetDyingUnit()))))
    endif
    call CreateTimerDialogBJ(bj_lastStartedTimer, (GetPlayerName(GetTriggerPlayer()) + "(Good)"))
    call TimerDialogSetTitleColorBJ(bj_lastCreatedTimerDialog, .0, .0, 100., 0)
    set ve[(1 + GetPlayerId(GetTriggerPlayer()))] = bj_lastCreatedTimerDialog
    set Oe[2] = GetTriggerUnit()
endfunction
function Sw takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function tw takes nothing returns boolean
    return(GetHeroLevel(GetDyingUnit()) >= 21)
endfunction
function Tw takes nothing returns nothing
    set Be[2] = (Be[2] + 1)
    if(tw())then
        call StartTimerBJ(oe, false, hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ir)
    else
        call StartTimerBJ(oe, false, (hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ex * I2R(GetHeroLevel(GetDyingUnit()))))
    endif
    call CreateTimerDialogBJ(bj_lastStartedTimer, (GetPlayerName(GetTriggerPlayer()) + "(Good)"))
    call TimerDialogSetTitleColorBJ(bj_lastCreatedTimerDialog, .0, 90., 90., 0)
    set ve[(1 + GetPlayerId(GetTriggerPlayer()))] = bj_lastCreatedTimerDialog
    set Oe[3] = GetTriggerUnit()
endfunction
function uw takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function Uw takes nothing returns boolean
    return(GetHeroLevel(GetDyingUnit()) >= 21)
endfunction
function ww takes nothing returns nothing
    set Be[3] = (Be[3] + 1)
    if(Uw())then
        call StartTimerBJ(re, false, hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ir)
    else
        call StartTimerBJ(re, false, (hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ex * I2R(GetHeroLevel(GetDyingUnit()))))
    endif
    call CreateTimerDialogBJ(bj_lastStartedTimer, (GetPlayerName(GetTriggerPlayer()) + "(Good)"))
    call TimerDialogSetTitleColorBJ(bj_lastCreatedTimerDialog, 55., .0, 55., 0)
    set ve[(1 + GetPlayerId(GetTriggerPlayer()))] = bj_lastCreatedTimerDialog
    set Oe[4] = GetTriggerUnit()
endfunction
function Ww takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function yw takes nothing returns boolean
    return(GetHeroLevel(GetDyingUnit()) >= 21)
endfunction
function Yw takes nothing returns nothing
    set Be[4] = (Be[4] + 1)
    if(yw())then
        call StartTimerBJ(ie, false, hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ir)
    else
        call StartTimerBJ(ie, false, (hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ex * I2R(GetHeroLevel(GetDyingUnit()))))
    endif
    call CreateTimerDialogBJ(bj_lastStartedTimer, (GetPlayerName(GetTriggerPlayer()) + "(Good)"))
    call TimerDialogSetTitleColorBJ(bj_lastCreatedTimerDialog, 100, 100., .0, 0)
    set ve[(1 + GetPlayerId(GetTriggerPlayer()))] = bj_lastCreatedTimerDialog
    set Oe[5] = GetTriggerUnit()
endfunction
function zw takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function Zw takes nothing returns boolean
    return(GetHeroLevel(GetDyingUnit()) >= 21)
endfunction
function vW takes nothing returns nothing
    set Be[6] = (Be[6] + 1)
    if(Zw())then
        call StartTimerBJ(ae, false, hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ir)
    else
        call StartTimerBJ(ae, false, (hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ex * I2R(GetHeroLevel(GetDyingUnit()))))
    endif
    call CreateTimerDialogBJ(bj_lastStartedTimer, (GetPlayerName(GetTriggerPlayer()) + "(Evil)"))
    call TimerDialogSetTitleColorBJ(bj_lastCreatedTimerDialog, .0, 90., .0, 0)
    set ve[(1 + GetPlayerId(GetTriggerPlayer()))] = bj_lastCreatedTimerDialog
    set Oe[7] = GetTriggerUnit()
endfunction
function eW takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function xW takes nothing returns boolean
    return(GetHeroLevel(GetDyingUnit()) >= 21)
endfunction
function oW takes nothing returns nothing
    set Be[7] = (Be[7] + 1)
    if(xW())then
        call StartTimerBJ(ne, false, hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ir)
    else
        call StartTimerBJ(ne, false, (hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ex * I2R(GetHeroLevel(GetDyingUnit()))))
    endif
    call CreateTimerDialogBJ(bj_lastStartedTimer, (GetPlayerName(GetTriggerPlayer()) + "(Evil)"))
    call TimerDialogSetTitleColorBJ(bj_lastCreatedTimerDialog, 100., 30., 100., 0)
    set ve[(1 + GetPlayerId(GetTriggerPlayer()))] = bj_lastCreatedTimerDialog
    set Oe[8] = GetTriggerUnit()
endfunction
function rW takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function iW takes nothing returns boolean
    return(GetHeroLevel(GetDyingUnit()) >= 21)
endfunction
function aW takes nothing returns nothing
    set Be[8] = (Be[8] + 1)
    if(iW())then
        call StartTimerBJ(Ve, false, hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ir)
    else
        call StartTimerBJ(Ve, false, (hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ex * I2R(GetHeroLevel(GetDyingUnit()))))
    endif
    call CreateTimerDialogBJ(bj_lastStartedTimer, (GetPlayerName(GetTriggerPlayer()) + "(Evil)"))
    call TimerDialogSetTitleColorBJ(bj_lastCreatedTimerDialog, 66., 66., 66., .0)
    set ve[(1 + GetPlayerId(GetTriggerPlayer()))] = bj_lastCreatedTimerDialog
    set Oe[9] = GetTriggerUnit()
endfunction
function nW takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function VW takes nothing returns boolean
    return(GetHeroLevel(GetDyingUnit()) >= 21)
endfunction
function EW takes nothing returns nothing
    set Be[9] = (Be[9] + 1)
    if(VW())then
        call StartTimerBJ(Ee, false, hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ir)
    else
        call StartTimerBJ(Ee, false, (hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ex * I2R(GetHeroLevel(GetDyingUnit()))))
    endif
    call CreateTimerDialogBJ(bj_lastStartedTimer, (GetPlayerName(GetTriggerPlayer()) + "(Evil)"))
    call TimerDialogSetTitleColorBJ(bj_lastCreatedTimerDialog, 55., 80., 100., 0)
    set ve[(1 + GetPlayerId(GetTriggerPlayer()))] = bj_lastCreatedTimerDialog
    set Oe[10] = GetTriggerUnit()
endfunction
function XW takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function OW takes nothing returns boolean
    return(GetHeroLevel(GetDyingUnit()) >= 21)
endfunction
function RW takes nothing returns nothing
    set Be[10] = (Be[10] + 1)
    if(OW())then
        call StartTimerBJ(Xe, false, hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ir)
    else
        call StartTimerBJ(Xe, false, (hc[GetPlayerId(GetOwningPlayer(GetDyingUnit())) + 1] * Ex * I2R(GetHeroLevel(GetDyingUnit()))))
    endif
    call CreateTimerDialogBJ(bj_lastStartedTimer, (GetPlayerName(GetTriggerPlayer()) + "(Evil)"))
    call TimerDialogSetTitleColorBJ(bj_lastCreatedTimerDialog, .0, 50., 40., 0)
    set ve[(1 + GetPlayerId(GetTriggerPlayer()))] = bj_lastCreatedTimerDialog
    set Oe[11] = GetTriggerUnit()
endfunction
function IW takes nothing returns nothing
    set Zv = 1
    call DestroyTimerDialog(ve[Zv])
    call ReviveHeroLoc(Oe[Zv], GetRectCenter(cC), true)
    if GetUnitTypeId(Oe[Zv]) == 'H011' then 
        call FlyX.setup(Oe[Zv])
    endif
    call PanCameraToTimedLocForPlayer(Player(- 1 + (Zv)), GetRectCenter(cC), 1.)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ((Ne[Zv] + (GetPlayerName(Player(- 1 + (Zv))) + "|r")) + "'s hero has revived."))
    call SetUnitManaPercentBJ(Oe[Zv], 100)
endfunction
function AW takes nothing returns nothing
    set Zv = 2
    call DestroyTimerDialog(ve[Zv])
    call ReviveHeroLoc(Oe[Zv], GetRectCenter(cC), true)
    if GetUnitTypeId(Oe[Zv]) == 'H011' then 
        call FlyX.setup(Oe[Zv])
    endif
    call PanCameraToTimedLocForPlayer(Player(- 1 + (Zv)), GetRectCenter(cC), 1.)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ((Ne[Zv] + (GetPlayerName(Player(- 1 + (Zv))) + "|r")) + "'s hero has revived."))
    call SetUnitManaPercentBJ(Oe[Zv], 100)
endfunction
function NW takes nothing returns nothing
    set Zv = 3
    call DestroyTimerDialog(ve[Zv])
    call ReviveHeroLoc(Oe[Zv], GetRectCenter(cC), true)
    if GetUnitTypeId(Oe[Zv]) == 'H011' then 
        call FlyX.setup(Oe[Zv])
    endif
    call PanCameraToTimedLocForPlayer(Player(- 1 + (Zv)), GetRectCenter(cC), 1.)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ((Ne[Zv] + (GetPlayerName(Player(- 1 + (Zv))) + "|r")) + "'s hero has revived."))
    call SetUnitManaPercentBJ(Oe[Zv], 100)
endfunction
function bW takes nothing returns nothing
    set Zv = 4
    call DestroyTimerDialog(ve[Zv])
    call ReviveHeroLoc(Oe[Zv], GetRectCenter(cC), true)
    if GetUnitTypeId(Oe[Zv]) == 'H011' then 
        call FlyX.setup(Oe[Zv])
    endif
    call PanCameraToTimedLocForPlayer(Player(- 1 + (Zv)), GetRectCenter(cC), 1.)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ((Ne[Zv] + (GetPlayerName(Player(- 1 + (Zv))) + "|r")) + "'s hero has revived."))
    call SetUnitManaPercentBJ(Oe[Zv], 100)
endfunction
function BW takes nothing returns nothing
    set Zv = 5
    call DestroyTimerDialog(ve[Zv])
    call ReviveHeroLoc(Oe[Zv], GetRectCenter(cC), true)
    if GetUnitTypeId(Oe[Zv]) == 'H011' then 
        call FlyX.setup(Oe[Zv])
    endif
    call PanCameraToTimedLocForPlayer(Player(- 1 + (Zv)), GetRectCenter(cC), 1.)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ((Ne[Zv] + (GetPlayerName(Player(- 1 + (Zv))) + "|r")) + "'s hero has revived."))
    call SetUnitManaPercentBJ(Oe[Zv], 100)
endfunction
function cW takes nothing returns nothing
    set Zv = 7
    call DestroyTimerDialog(ve[Zv])
    call ReviveHeroLoc(Oe[Zv], GetRectCenter(CC), true)
    if GetUnitTypeId(Oe[Zv]) == 'H011' then 
        call FlyX.setup(Oe[Zv])
    endif
    call PanCameraToTimedLocForPlayer(Player(- 1 + (Zv)), GetRectCenter(CC), 1.)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ((Ne[Zv] + (GetPlayerName(Player(- 1 + (Zv))) + "|r")) + "'s hero has revived."))
    call SetUnitManaPercentBJ(Oe[Zv], 100)
endfunction
function CW takes nothing returns nothing
    set Zv = 8
    call DestroyTimerDialog(ve[Zv])
    call ReviveHeroLoc(Oe[Zv], GetRectCenter(CC), true)
    if GetUnitTypeId(Oe[Zv]) == 'H011' then 
        call FlyX.setup(Oe[Zv])
    endif
    call PanCameraToTimedLocForPlayer(Player(- 1 + (Zv)), GetRectCenter(CC), 1.)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ((Ne[Zv] + (GetPlayerName(Player(- 1 + (Zv))) + "|r")) + "'s hero has revived."))
    call SetUnitManaPercentBJ(Oe[Zv], 100)
endfunction
function dW takes nothing returns nothing
    set Zv = 9
    call DestroyTimerDialog(ve[Zv])
    call ReviveHeroLoc(Oe[Zv], GetRectCenter(CC), true)
    if GetUnitTypeId(Oe[Zv]) == 'H011' then 
        call FlyX.setup(Oe[Zv])
    endif
    call PanCameraToTimedLocForPlayer(Player(- 1 + (Zv)), GetRectCenter(CC), 1.)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ((Ne[Zv] + (GetPlayerName(Player(- 1 + (Zv))) + "|r")) + "'s hero has revived."))
    call SetUnitManaPercentBJ(Oe[Zv], 100)
endfunction
function DW takes nothing returns nothing
    set Zv = 10
    call DestroyTimerDialog(ve[Zv])
    call ReviveHeroLoc(Oe[Zv], GetRectCenter(CC), true)
    if GetUnitTypeId(Oe[Zv]) == 'H011' then 
        call FlyX.setup(Oe[Zv])
    endif
    call PanCameraToTimedLocForPlayer(Player(- 1 + (Zv)), GetRectCenter(CC), 1.)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ((Ne[Zv] + (GetPlayerName(Player(- 1 + (Zv))) + "|r")) + "'s hero has revived."))
    call SetUnitManaPercentBJ(Oe[Zv], 100)
endfunction
function fW takes nothing returns nothing
    set Zv = 11
    call DestroyTimerDialog(ve[Zv])
    call ReviveHeroLoc(Oe[Zv], GetRectCenter(CC), true)
    if GetUnitTypeId(Oe[Zv]) == 'H011' then 
        call FlyX.setup(Oe[Zv])
    endif
    call PanCameraToTimedLocForPlayer(Player(- 1 + (Zv)), GetRectCenter(CC), 1.)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ((Ne[Zv] + (GetPlayerName(Player(- 1 + (Zv))) + "|r")) + "'s hero has revived."))
    call SetUnitManaPercentBJ(Oe[Zv], 100)
endfunction
function FW takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function gW takes nothing returns nothing
    call TriggerExecute(QI)
endfunction
function GW takes nothing returns nothing
    set Po = 1
    set po[1] = hC
    set po[2] = HC
    set po[3] = jC
    set po[4] = JC
    set po[5] = kC
    set po[6] = KC
    set po[7] = LC
    set po[8] = mC
    set po[9] = MC
    set po[10] = pC
    set po[11] = PC
    set po[12] = qC
    set po[13] = QC
    set po[14] = vd
    set po[15] = ZC
    set po[16] = zC
    set po[17] = YC
    set po[18] = yC
    set po[19] = WC
    set po[20] = bd
    set po[21] = Nd
    set po[22] = Ad
    set po[23] = Id
    set po[24] = Rd
    set po[25] = Od
    set po[26] = Xd
    set po[27] = Ed
    set po[28] = Vd
    set po[29] = nd
    set po[30] = ad
    set po[31] = rd
    set po[32] = od
    set po[33] = xd
    set po[34] = sC
    set po[35] = SC
    set po[36] = tC
    set po[37] = TC
    set po[38] = uC
    set po[39] = UC
    set po[40] = wC
endfunction
function hW takes nothing returns boolean
    return(Po <= rC)
endfunction
function HW takes nothing returns boolean
    return(mo[Mo])
endfunction
function jW takes nothing returns nothing
    set Mo = GetRandomInt(1, rC)
    if(HW())then
        set Po = (Po + 1)
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen a Random hero"))
        call SetUnitPositionLoc(GetEnteringUnit(), GetRectCenter(po[Mo]))
        set mo[Mo] = false
    else
        if(hW())then
            call TriggerExecute(GetTriggeringTrigger())
        else
            call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., "Sorry, there are no more heroes to choose from. Please restart the game.")
            call SetUnitPositionLoc(GetEnteringUnit(), GetRectCenter(RD))
        endif
    endif
endfunction
function JW takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function kW takes nothing returns nothing
    call TriggerExecute(tI)
endfunction
function KW takes nothing returns nothing
    set qo = 1
    set so[1] = Bd
    set so[2] = cd
    set so[3] = Cd
    set so[4] = dd
    set so[5] = Dd
    set so[6] = fd
    set so[7] = gd
    set so[8] = Gd
    set so[9] = hd
    set so[10] = Hd
    set so[11] = jd
    set so[12] = Jd
    set so[13] = kd
    set so[14] = Ud
    set so[15] = Td
    set so[16] = td
    set so[17] = Sd
    set so[18] = sd
    set so[19] = Qd
    set so[20] = VD
    set so[21] = nD
    set so[22] = aD
    set so[23] = iD
    set so[24] = rD
    set so[25] = oD
    set so[26] = xD
    set so[27] = eD
    set so[28] = vD
    set so[29] = Zd
    set so[30] = zd
    set so[31] = Yd
    set so[32] = yd
    set so[33] = Wd
    set so[34] = Kd
    set so[35] = ld
    set so[36] = Ld
    set so[37] = md
    set so[38] = Md
    set so[39] = Pd
    set so[40] = qd
endfunction
function lW takes nothing returns boolean
    return(qo <= rC)
endfunction
function LW takes nothing returns boolean
    return(Qo[So])
endfunction
function mW takes nothing returns nothing
    set So = GetRandomInt(1, rC)
    if(LW())then
        set qo = (qo + 1)
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen a Random hero"))
        call SetUnitPositionLoc(GetEnteringUnit(), GetRectCenter(so[So]))
        set Qo[So] = false
    else
        if(lW())then
            call TriggerExecute(GetTriggeringTrigger())
        else
            call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., "Sorry, there are no more heroes to choose from. Please restart the game.")
            call SetUnitPositionLoc(GetEnteringUnit(), GetRectCenter(ID))
        endif
    endif
endfunction
function MW takes nothing returns boolean
    return(IsUnitAlly(GetEnteringUnit(), Player(5)))and(fe > 5)and(IsUnitType(GetEnteringUnit(), UNIT_TYPE_HERO))
endfunction
function pW takes nothing returns nothing
    call ReplaceUnitBJ(GetEnteringUnit(), 'nshe', 2)
    call SetUnitPositionLoc(bj_lastReplacedUnit, GetRectCenter(RD))
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastReplacedUnit), GetRectCenter(RD), 2.)
    set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNSheep.blp"
    set Zb[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = null
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())), "|cffffcc00Re-select Hero|r ")
endfunction
function PW takes nothing returns boolean
    return(IsUnitAlly(GetEnteringUnit(), Player(11)))and(Je > 5)and(IsUnitType(GetEnteringUnit(), UNIT_TYPE_HERO))
endfunction
function qW takes nothing returns nothing
    call ReplaceUnitBJ(GetEnteringUnit(), 'npig', 2)
    call SetUnitPositionLoc(bj_lastReplacedUnit, GetRectCenter(ID))
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastReplacedUnit), GetRectCenter(ID), 2.)
    set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNPig.blp"
    set Zb[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = null
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())), "|cffffcc00Re-select Hero|r ")
endfunction
function QW takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) != 'nshe')
endfunction
function sW takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) != 'npig')
endfunction
function SW takes nothing returns boolean
    return(GetBooleanAnd(QW(), sW()))
endfunction
function tW takes nothing returns nothing
    call SetUnitPositionLoc(GetEnteringUnit(), GetRectCenter(OD))
endfunction
function TW takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function uW takes nothing returns nothing
    set De[1] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'E00E', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00U', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Kimahri."))
endfunction
function UW takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function wW takes nothing returns nothing
    set De[2] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H014', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00T', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Mooouren."))
endfunction
function WW takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function yW takes nothing returns nothing
    set De[3] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H00S', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00S', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Mercury."))
endfunction
function YW takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function zW takes nothing returns nothing
    set De[4] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H002', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00R', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Duke Nukem."))
endfunction
function ZW takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function vy takes nothing returns nothing
    set De[5] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H008', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00Q', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Angel."))
endfunction
function ey takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function xy takes nothing returns nothing
    set De[6] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H001', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00P', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Admiral Proudmoore."))
endfunction
function oy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function ry takes nothing returns nothing
    set De[7] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'E000', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00O', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Ghost."))
endfunction
function iy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function ay takes nothing returns nothing
    set De[8] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D00N', gC)
    call AddSpecialEffectLocBJ(Jh(GetOwningPlayer(GetEnteringUnit())), "Abilities\\Spells\\Other\\Awaken\\Awaken.mdl")
    call SetUnitPositionLoc(sb, Jh(GetOwningPlayer(GetEnteringUnit())))
    call SetUnitOwner(sb, GetOwningPlayer(GetTriggerUnit()), true)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Cyrax."))
endfunction
function ny takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function Vy takes nothing returns nothing
    set De[9] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H003', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00M', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Medic."))
endfunction
function Ey takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function Xy takes nothing returns nothing
    set De[10] = false
    set fe = (fe - 1)
    call CreateNUnitsAtLoc(1, 'Hlgr', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D00L', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Lord Garithos."))
endfunction
function Oy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function Ry takes nothing returns nothing
    set De[11] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'Nfir', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D027', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Blazefury."))
endfunction
function Iy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function Ay takes nothing returns nothing
    set De[12] = false
    set fe = (fe - 1)
    call CreateNUnitsAtLoc(1, 'HC05', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D00K', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Yogi Yellowstone."))
endfunction
function Ny takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function by takes nothing returns nothing
    set De[13] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'E00K', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00J', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Warmaster."))
endfunction
function By takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function cy takes nothing returns nothing
    set De[14] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'Hblm', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00I', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Kael'thas Sunstrider"))
endfunction
function Cy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function dddy takes nothing returns nothing
    set De[15] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'E00J', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00H', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Mayev."))
endfunction
function Dy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function fy takes nothing returns nothing
    set De[16] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetEnteringUnit())
    call CreateNUnitsAtLoc(1, 'Npbm', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00G', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Sinjo Honeybrew."))
endfunction
function Fy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function gy takes nothing returns nothing
    set De[17] = false
    set fe = (fe - 1)
    call CreateNUnitsAtLoc(1, 'Hart', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D00F', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Jim Raynor."))
endfunction
function Gy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function hy takes nothing returns nothing
    set De[18] = false
    set fe = (fe - 1)
    call CreateNUnitsAtLoc(1, 'Hjai', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D00E', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Medivh."))
endfunction
function Hy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function jy takes nothing returns nothing
    set De[19] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H00O', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00D', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen St. Anger."))
endfunction
function Jy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function ky takes nothing returns nothing
    set De[20] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'N02G', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00C', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Tinker."))
endfunction
function Ky takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function ly takes nothing returns nothing
    set De[21] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'E004', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00B', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Dendroid King."))
endfunction
function Ly takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function my takes nothing returns nothing
    set De[22] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H00D', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00A', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Garan."))
endfunction
function My takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function py takes nothing returns nothing
    set De[23] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H00A', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D009', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Kabal."))
endfunction
function Py takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function qy takes nothing returns nothing
    set De[24] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D008', gC)
    call CreateNUnitsAtLoc(1, 'H00H', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Lulu."))
endfunction
function Qy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function sy takes nothing returns nothing
    set De[25] = false
    set fe = (fe - 1)
    call CreateNUnitsAtLoc(1, 'H00E', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D007', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Hulk."))
endfunction
function Sy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function ty takes nothing returns nothing
    set De[26] = false
    set fe = (fe - 1)
    call CreateNUnitsAtLoc(1, 'Hvwd', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D006', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Sylvanas."))
endfunction
function Ty takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function uy takes nothing returns nothing
    set De[27] = false
    set fe = (fe - 1)
    call CreateNUnitsAtLoc(1, 'Eevi', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D005', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Illidan."))
endfunction
function Uy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function wy takes nothing returns nothing
    set De[28] = false
    set fe = (fe - 1)
    call CreateNUnitsAtLoc(1, 'Emoo', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D004', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Tyrande Whisperwind."))
endfunction
function Wy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function yy takes nothing returns nothing
    set De[29] = false
    set fe = (fe - 1)
    call CreateNUnitsAtLoc(1, 'Emfr', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D003', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Malfurion."))
endfunction
function Yy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function zy takes nothing returns nothing
    set De[30] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H00U', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D002', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Wolverine."))
endfunction
function Zy takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function vY takes nothing returns nothing
    set De[31] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H015', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D001', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Stealth."))
endfunction
function eY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function xY takes nothing returns nothing
    set De[32] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'O00K', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D028', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Califax."))
endfunction
function oY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function rY takes nothing returns nothing
    set De[33] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H011', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call FlyX.setup(bj_lastCreatedUnit)
    call SetDoodadAnimationRectBJ("death", 'D000', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Moonblade."))
endfunction
function iY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function aY takes nothing returns nothing
    set De[34] = false
    set fe = (fe - 1)
    call CreateNUnitsAtLoc(1, 'Hmkg', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D010', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Muradin Bronzebeard."))
endfunction
function nY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function VY takes nothing returns nothing
    set De[35] = false
    set fe = (fe - 1)
    call CreateNUnitsAtLoc(1, 'Hamg', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D00Z', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call SetPlayerAbilityAvailableBJ(false, 'Afrz', GetOwningPlayer(GetTriggerUnit()))
    call SetPlayerAbilityAvailableBJ(false, 'Afrb', GetOwningPlayer(GetTriggerUnit()))
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Jaina Proudmoore."))
endfunction
function EY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function XY takes nothing returns nothing
    set De[36] = false
    set fe = (fe - 1)
    call CreateNUnitsAtLoc(1, 'Hpal', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D00Y', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Uther."))
endfunction
function OY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function RY takes nothing returns nothing
    set De[37] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H00C', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00X', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Stoner."))
endfunction
function IY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function AY takes nothing returns nothing
    set De[38] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'E005', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00W', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Angeline."))
endfunction
function NY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'nshe')
endfunction
function bY takes nothing returns nothing
    set De[39] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H004', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D00V', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Captain America."))
endfunction
function BY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function cY takes nothing returns nothing
    set he[1] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'Harf', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01V', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen BioDread."))
endfunction
function CY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function dY takes nothing returns nothing
    set he[2] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'O001', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01U', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Zolt."))
endfunction
function DY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function fY takes nothing returns nothing
    set he[3] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'Nman', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01T', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Mannoroth."))
endfunction
function FY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function gY takes nothing returns nothing
    set he[4] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'U005', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01S', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Diablolist."))
endfunction
function GY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function hY takes nothing returns nothing
    set he[5] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'U000', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01R', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Hell Fire."))
endfunction
function HY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function jY takes nothing returns nothing
    set he[6] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'Otcc', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D01Q', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Sammy Smittereens."))
endfunction
function JY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function kY takes nothing returns nothing
    set he[7] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'N025', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D01P', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Lady Vashj."))
endfunction
function KY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function lY takes nothing returns nothing
    set he[8] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'Nbrn', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D01O', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Dark Ranger."))
endfunction
function LY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function mY takes nothing returns nothing
    set he[9] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'Oshd', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D01N', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Shaka-Zahn."))
endfunction
function MY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function pY takes nothing returns nothing
    set he[10] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'N022', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01M', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Raptor."))
endfunction
function PY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function qY takes nothing returns nothing
    set he[11] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'O00L', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D029', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Damar."))
endfunction
function QY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function sY takes nothing returns nothing
    set he[12] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'N023', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01L', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Sobe."))
endfunction
function SY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function tY takes nothing returns nothing
    set he[13] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'O00I', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01K', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Nightmare."))
endfunction
function TY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function uY takes nothing returns nothing
    set he[14] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'U00B', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D01J', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Arak-Arahm."))
endfunction
function UY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function wY takes nothing returns nothing
    set he[15] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'Ocbh', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D01I', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Zuhx."))
endfunction
function WY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function yY takes nothing returns nothing
    set he[16] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'Uktl', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D01H', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Mur Slimemouth."))
endfunction
function YY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function zY takes nothing returns nothing
    set he[17] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'N00C', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01G', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Kryton."))
endfunction
function ZY takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function vz takes nothing returns nothing
    set he[18] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'N00N', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01F', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Buzzdook."))
endfunction
function ez takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function xz takes nothing returns nothing
    set he[19] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H00P', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01E', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Hell'nar."))
endfunction
function oz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function rz takes nothing returns nothing
    set he[20] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'O00H', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01D', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Alien."))
endfunction
function iz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function az takes nothing returns nothing
    set he[21] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'O00C', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01C', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Arraka."))
endfunction
function nz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function Vz takes nothing returns nothing
    set he[22] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'O00B', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01B', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Blake."))
endfunction
function Ez takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function Xz takes nothing returns nothing
    set he[23] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'H00B', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01A', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Zagg."))
endfunction
function Oz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function Rz takes nothing returns nothing
    set he[24] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D019', GC)
    call AddSpecialEffectLocBJ(Jh(GetOwningPlayer(GetEnteringUnit())), "Abilities\\Spells\\Other\\Awaken\\Awaken.mdl")
    call SetUnitPositionLoc(wb, Jh(GetOwningPlayer(GetEnteringUnit())))
    call SetUnitOwner(wb, GetOwningPlayer(GetTriggerUnit()), true)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Takada."))
endfunction
function Iz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function Az takes nothing returns nothing
    set he[25] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'Uwar', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D018', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Archimonde."))
endfunction
function Nz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function bz takes nothing returns nothing
    set he[26] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'Udre', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D017', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Mal'Ganis."))
endfunction
function Bz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function cz takes nothing returns nothing
    set he[27] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'Ulic', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D016', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Kel'Thuzad."))
endfunction
function Cz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function dz takes nothing returns nothing
    set he[28] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'Uear', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D015', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Arthas."))
endfunction
function Dz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function fz takes nothing returns nothing
    set he[29] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'Othr', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D014', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Thrall."))
endfunction
function Fz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function gz takes nothing returns nothing
    set he[30] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'Opgh', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D013', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Grom Hellscream."))
endfunction
function Gz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function hz takes nothing returns nothing
    set he[31] = false
    set Je = (Je - 1)
    call CreateNUnitsAtLoc(1, 'Ogld', GetOwningPlayer(GetTriggerUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D012', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(bj_lastCreatedUnit), GetUnitLoc(bj_lastCreatedUnit), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Gul'Dan."))
endfunction
function Hz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function jz takes nothing returns nothing
    set he[32] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'Nalc', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D026', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Nazgrel."))
endfunction
function Jz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function kz takes nothing returns nothing
    set he[33] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'N011', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D011', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Orcki."))
endfunction
function Kz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function lz takes nothing returns nothing
    set he[34] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D020', GC)
    call AddSpecialEffectLocBJ(Jh(GetOwningPlayer(GetEnteringUnit())), "Abilities\\Spells\\Other\\Awaken\\Awaken.mdl")
    call SetUnitPositionLoc(Wb, Jh(GetOwningPlayer(GetEnteringUnit())))
    call SetUnitOwner(Wb, GetOwningPlayer(GetTriggerUnit()), true)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Cairne Bloodhoff."))
endfunction
function Lz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function mz takes nothing returns nothing
    set he[35] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'N00M', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01Z', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Dendrodeath."))
endfunction
function Mz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function pz takes nothing returns nothing
    set he[36] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death alternate", 'D021', GC)
    call CreateNUnitsAtLoc(1, 'E008', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Inferno."))
endfunction
function Pz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function qz takes nothing returns nothing
    set he[37] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'N002', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01Y', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Terminator."))
endfunction
function Qz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function sz takes nothing returns nothing
    set he[38] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'U001', GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D01X', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Prince of Legion."))
endfunction
function Sz takes nothing returns boolean
    return(GetUnitTypeId(GetEnteringUnit()) == 'npig')
endfunction
function tz takes nothing returns nothing
    set he[39] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call SetDoodadAnimationRectBJ("death", 'D01W', GC)
    call AddSpecialEffectLocBJ(Jh(GetOwningPlayer(GetEnteringUnit())), "Abilities\\Spells\\Other\\Awaken\\Awaken.mdl")
    call SetUnitPositionLoc(Ub, Jh(GetOwningPlayer(GetEnteringUnit())))
    call SetUnitOwner(Ub, GetOwningPlayer(GetTriggerUnit()), true)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), Jh(GetOwningPlayer(GetEnteringUnit())), 2.)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(bj_lastCreatedUnit, 100)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 4., (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Kil'Jaeden."))
endfunction
function Tz takes nothing returns nothing
    call DisableTrigger(DN)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cffffcc00RG Mode Has Been Disabled")
endfunction
function uz takes nothing returns nothing
    call SetUnitPositionLoc(GetEnumUnit(), GetRectCenter(lC))
endfunction
function Uz takes nothing returns nothing
    call SetUnitPositionLoc(GetEnumUnit(), GetRectCenter(Fd))
endfunction
function wz takes nothing returns nothing
    call ConditionalTriggerExecute(ZD)
    call TriggerSleepAction(0.1)
    call ForGroupBJ(GetUnitsInRectAll(dC), function uz)
    call ForGroupBJ(GetUnitsInRectAll(DC), function Uz)
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(TI)
    call DisableTrigger(uI)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00Random game mode activated. Re-select Hero is now disabled.|r")
endfunction
function Wz takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit()) == Player(5))and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function yz takes nothing returns nothing
    call PolledWait(10.)
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(CC))
endfunction
function Yz takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit()) == Player(5))
endfunction
function zz takes nothing returns nothing
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(CC))
endfunction
function Zz takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit()) == Player(5))
endfunction
function vZ takes nothing returns nothing
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(JD))
endfunction
function eZ takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit()) == Player(5))
endfunction
function xZ takes nothing returns nothing
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(HD))
endfunction
function oZ takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit()) == Player(5))
endfunction
function rZ takes nothing returns nothing
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(jD))
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(CC))
endfunction
function iZ takes nothing returns boolean
    return(pe == 7)
endfunction
function aZ takes nothing returns boolean
    return(Mx[(6 + 1)] == false)
endfunction
function nZ takes nothing returns boolean
    return(Pe)
endfunction
function VZ takes nothing returns boolean
    return(pe == 1)
endfunction
function EZ takes nothing returns boolean
    return(Mx[(6 + 2)] == false)
endfunction
function XZ takes nothing returns boolean
    return(Pe)
endfunction
function OZ takes nothing returns boolean
    return(pe == 2)
endfunction
function RZ takes nothing returns boolean
    return(Pe)
endfunction
function IZ takes nothing returns boolean
    return(pe == 3)
endfunction
function AZ takes nothing returns boolean
    return(Mx[(6 + 4)] == false)
endfunction
function NZ takes nothing returns boolean
    return(Pe)
endfunction
function bZ takes nothing returns boolean
    return(pe == 4)
endfunction
function BZ takes nothing returns boolean
    return(pe == 5)
endfunction
function cZ takes nothing returns boolean
    return(Mx[(6 + 1)] == false)
endfunction
function CZ takes nothing returns boolean
    return(Pe)
endfunction
function dZ takes nothing returns boolean
    return(pe == 4)
endfunction
function DZ takes nothing returns nothing
    if(iZ())then
        return
    endif
    if(VZ())then
        if(nZ())then
            if(aZ())then
                call CreateNUnitsAtLoc(4, 'hhes', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'hcth', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                set Mx[(6 + 1)] = true
            else
                call CreateNUnitsAtLoc(4, 'hfoo', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'h005', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                set Mx[(6 + 1)] = false
            endif
        else
            call CreateNUnitsAtLoc(4, 'hfoo', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'h005', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
        endif
    endif
    if(OZ())then
        if(XZ())then
            if(EZ())then
                call CreateNUnitsAtLoc(2, 'eshd', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'e002', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                set Mx[(6 + 2)] = true
            else
                call CreateNUnitsAtLoc(2, 'nssn', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n006', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                set Mx[(6 + 2)] = false
            endif
        else
            call CreateNUnitsAtLoc(3, 'earc', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'e001', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
        endif
    endif
    if(IZ())then
        if(RZ())then
            call CreateNUnitsAtLoc(2, 'nwzd', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(2, 'hrif', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'h006', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
        endif
    endif
    if(bZ())then
        if(NZ())then
            if(AZ())then
                call CreateNUnitsAtLoc(2, 'nbld', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n008', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                set Mx[(6 + 4)] = true
            else
                call CreateNUnitsAtLoc(2, 'hkni', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'h007', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                set Mx[(6 + 4)] = false
            endif
        else
            call CreateNUnitsAtLoc(2, 'hkni', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'h007', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
        endif
    endif
    if(BZ())then
        call CreateNUnitsAtLoc(3, 'ebal', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
    endif
    call TriggerSleepAction(3.)
    if(dZ())then
        if(CZ())then
            if(cZ())then
                call CreateNUnitsAtLoc(4, 'hhes', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'hcth', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                set Mx[(6 + 1)] = true
            else
                call CreateNUnitsAtLoc(4, 'hfoo', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'h005', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
                set Mx[(6 + 1)] = false
            endif
        else
            call CreateNUnitsAtLoc(4, 'hfoo', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'h005', Player(5), GetRectCenter(GD), bj_UNIT_FACING)
        endif
    endif
endfunction
function fZ takes nothing returns boolean
    return(pe == 7)
endfunction
function FZ takes nothing returns boolean
    return(Mx[(12 + 1)] == false)
endfunction
function gZ takes nothing returns boolean
    return(Pe)
endfunction
function GZ takes nothing returns boolean
    return(pe == 1)
endfunction
function hZ takes nothing returns boolean
    return(Mx[(12 + 2)] == false)
endfunction
function HZ takes nothing returns boolean
    return(Pe)
endfunction
function jZ takes nothing returns boolean
    return(pe == 2)
endfunction
function JZ takes nothing returns boolean
    return(Pe)
endfunction
function kZ takes nothing returns boolean
    return(pe == 3)
endfunction
function KZ takes nothing returns boolean
    return(Mx[(12 + 4)] == false)
endfunction
function lZ takes nothing returns boolean
    return(Pe)
endfunction
function LZ takes nothing returns boolean
    return(pe == 4)
endfunction
function mZ takes nothing returns boolean
    return(pe == 5)
endfunction
function MZ takes nothing returns boolean
    return(pe == 6)
endfunction
function pZ takes nothing returns boolean
    return(Mx[(12 + 1)] == false)
endfunction
function PZ takes nothing returns boolean
    return(Pe)
endfunction
function qZ takes nothing returns boolean
    return(pe == 4)
endfunction
function QZ takes nothing returns nothing
    if(fZ())then
        return
    endif
    if(GZ())then
        if(gZ())then
            if(FZ())then
                call CreateNUnitsAtLoc(3, 'hhes', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'hcth', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                set Mx[(12 + 1)] = true
            else
                call CreateNUnitsAtLoc(3, 'hfoo', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'h005', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                set Mx[(12 + 1)] = false
            endif
        else
            call CreateNUnitsAtLoc(3, 'hfoo', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'h005', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
        endif
    endif
    if(jZ())then
        if(HZ())then
            if(hZ())then
                call CreateNUnitsAtLoc(1, 'eshd', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'e002', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                set Mx[(12 + 2)] = true
            else
                call CreateNUnitsAtLoc(1, 'nssn', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n006', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                set Mx[(12 + 2)] = false
            endif
        else
            call CreateNUnitsAtLoc(2, 'earc', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'e001', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
        endif
    endif
    if(kZ())then
        if(JZ())then
            call CreateNUnitsAtLoc(1, 'nwzd', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(1, 'hrif', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'h006', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
        endif
    endif
    if(LZ())then
        if(lZ())then
            if(KZ())then
                call CreateNUnitsAtLoc(1, 'nbld', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n008', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                set Mx[(12 + 4)] = true
            else
                call CreateNUnitsAtLoc(1, 'hkni', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'h007', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                set Mx[(12 + 4)] = false
            endif
        else
            call CreateNUnitsAtLoc(1, 'hkni', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'h007', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
        endif
    endif
    if(mZ())then
        call CreateNUnitsAtLoc(2, 'ebal', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
    endif
    if(MZ())then
        call CreateNUnitsAtLoc(3, 'hmpr', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
    endif
    call TriggerSleepAction(3.)
    if(qZ())then
        if(PZ())then
            if(pZ())then
                call CreateNUnitsAtLoc(2, 'hhes', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'hcth', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                set Mx[(12 + 1)] = true
            else
                call CreateNUnitsAtLoc(2, 'hfoo', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'h005', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
                set Mx[(12 + 1)] = false
            endif
        else
            call CreateNUnitsAtLoc(2, 'hfoo', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'h005', Player(5), GetRectCenter(gD), bj_UNIT_FACING)
        endif
    endif
endfunction
function sZ takes nothing returns boolean
    return(pe == 7)
endfunction
function SZ takes nothing returns boolean
    return(Mx[(0 + 1)] == false)
endfunction
function tZ takes nothing returns boolean
    return(Pe)
endfunction
function TZ takes nothing returns boolean
    return(pe == 1)
endfunction
function uZ takes nothing returns boolean
    return(Mx[(0 + 2)] == false)
endfunction
function UZ takes nothing returns boolean
    return(Pe)
endfunction
function wZ takes nothing returns boolean
    return(pe == 2)
endfunction
function WZ takes nothing returns boolean
    return(Pe)
endfunction
function yZ takes nothing returns boolean
    return(pe == 3)
endfunction
function YZ takes nothing returns boolean
    return(Mx[(0 + 4)] == false)
endfunction
function zZ takes nothing returns boolean
    return(Pe)
endfunction
function ZZ takes nothing returns boolean
    return(pe == 4)
endfunction
function v0 takes nothing returns boolean
    return(pe == 5)
endfunction
function e0 takes nothing returns boolean
    return(qe)
endfunction
function x0 takes nothing returns boolean
    return(pe == 6)
endfunction
function o0 takes nothing returns boolean
    return(Mx[(0 + 1)] == false)
endfunction
function r0 takes nothing returns boolean
    return(Pe)
endfunction
function i0 takes nothing returns boolean
    return(pe == 4)
endfunction
function n0 takes nothing returns nothing
    if(sZ())then
        return
    endif
    if(TZ())then
        if(tZ())then
            if(SZ())then
                call CreateNUnitsAtLoc(3, 'hhes', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'hcth', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                set Mx[(0 + 1)] = true
            else
                call CreateNUnitsAtLoc(3, 'hfoo', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'h005', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                set Mx[(0 + 1)] = false
            endif
        else
            call CreateNUnitsAtLoc(3, 'hfoo', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'h005', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
        endif
    endif
    if(wZ())then
        if(UZ())then
            if(uZ())then
                call CreateNUnitsAtLoc(1, 'eshd', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'e002', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                set Mx[(0 + 2)] = true
            else
                call CreateNUnitsAtLoc(1, 'nssn', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n006', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                set Mx[(0 + 2)] = false
            endif
        else
            call CreateNUnitsAtLoc(2, 'earc', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'e001', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
        endif
    endif
    if(yZ())then
        if(WZ())then
            call CreateNUnitsAtLoc(1, 'nwzd', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(1, 'hrif', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'h006', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
        endif
    endif
    if(ZZ())then
        if(zZ())then
            if(YZ())then
                call CreateNUnitsAtLoc(1, 'nbld', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n008', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                set Mx[(0 + 4)] = true
            else
                call CreateNUnitsAtLoc(1, 'hkni', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'h007', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                set Mx[(0 + 4)] = false
            endif
        else
            call CreateNUnitsAtLoc(1, 'hkni', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'h007', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
        endif
    endif
    if(v0())then
        if(e0())then
            call CreateNUnitsAtLoc(1, 'nbzd', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(2, 'ebal', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
        endif
    endif
    if(x0())then
        call CreateNUnitsAtLoc(3, 'hmpr', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
    endif
    call TriggerSleepAction(3.)
    if(i0())then
        if(r0())then
            if(o0())then
                call CreateNUnitsAtLoc(2, 'hhes', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'hcth', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                set Mx[(0 + 1)] = true
            else
                call CreateNUnitsAtLoc(2, 'hfoo', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'h005', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
                set Mx[(0 + 1)] = false
            endif
        else
            call CreateNUnitsAtLoc(2, 'hfoo', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'h005', Player(5), GetRectCenter(hD), bj_UNIT_FACING)
        endif
    endif
endfunction
function V0 takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit()) == Player(5))
endfunction
function E0 takes nothing returns nothing
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(CC))
endfunction
function X0 takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit()) == Player(11))and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function O0 takes nothing returns nothing
    call PolledWait(10.)
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(cC))
endfunction
function R0 takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit()) == Player(11))
endfunction
function I0 takes nothing returns nothing
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(cC))
endfunction
function A0 takes nothing returns boolean
    return(pe == 7)
endfunction
function N0 takes nothing returns boolean
    return(px[(6 + 1)] == false)
endfunction
function b0 takes nothing returns boolean
    return(Pe)
endfunction
function B0 takes nothing returns boolean
    return(pe == 1)
endfunction
function c0 takes nothing returns boolean
    return(px[(6 + 2)] == false)
endfunction
function C0 takes nothing returns boolean
    return(Pe)
endfunction
function d0 takes nothing returns boolean
    return(pe == 2)
endfunction
function D0 takes nothing returns boolean
    return(Pe)
endfunction
function f0 takes nothing returns boolean
    return(pe == 3)
endfunction
function F0 takes nothing returns boolean
    return(px[(6 + 4)] == false)
endfunction
function g0 takes nothing returns boolean
    return(Pe)
endfunction
function G0 takes nothing returns boolean
    return(pe == 4)
endfunction
function h0 takes nothing returns boolean
    return(pe == 5)
endfunction
function H0 takes nothing returns boolean
    return(px[(6 + 1)] == false)
endfunction
function j0 takes nothing returns boolean
    return(Pe)
endfunction
function J0 takes nothing returns boolean
    return(pe == 4)
endfunction
function k0 takes nothing returns nothing
    if(A0())then
        return
    endif
    if(B0())then
        if(b0())then
            if(N0())then
                call CreateNUnitsAtLoc(3, 'nfel', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n007', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                set px[(6 + 1)] = true
            else
                call CreateNUnitsAtLoc(4, 'ugho', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'u002', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                set px[(6 + 1)] = false
            endif
        else
            call CreateNUnitsAtLoc(4, 'ugho', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'u002', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
        endif
    endif
    if(d0())then
        if(C0())then
            if(c0())then
                call CreateNUnitsAtLoc(2, 'ndqv', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n009', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                set px[(6 + 2)] = true
            else
                call CreateNUnitsAtLoc(2, 'nskm', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n00A', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                set px[(6 + 2)] = false
            endif
        else
            call CreateNUnitsAtLoc(3, 'ohun', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'o003', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
        endif
    endif
    if(f0())then
        if(D0())then
            call CreateNUnitsAtLoc(2, 'nrvi', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(2, 'ucry', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'u003', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
        endif
    endif
    if(G0())then
        if(g0())then
            if(F0())then
                call CreateNUnitsAtLoc(2, 'nfot', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n00B', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                set px[(6 + 4)] = true
            else
                call CreateNUnitsAtLoc(2, 'uabo', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'u004', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                set px[(6 + 4)] = false
            endif
        else
            call CreateNUnitsAtLoc(2, 'uabo', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'u004', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
        endif
    endif
    if(h0())then
        call CreateNUnitsAtLoc(3, 'umtw', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
    endif
    call TriggerSleepAction(3.)
    if(J0())then
        if(j0())then
            if(H0())then
                call CreateNUnitsAtLoc(3, 'nfel', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n007', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                set px[(6 + 1)] = true
            else
                call CreateNUnitsAtLoc(4, 'ugho', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'u002', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
                set px[(6 + 1)] = false
            endif
        else
            call CreateNUnitsAtLoc(4, 'ugho', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'u002', Player(11), GetRectCenter(jD), bj_UNIT_FACING)
        endif
    endif
endfunction
function K0 takes nothing returns boolean
    return(pe == 7)
endfunction
function l0 takes nothing returns boolean
    return(px[(0 + 1)] == false)
endfunction
function L0 takes nothing returns boolean
    return(Pe)
endfunction
function m0 takes nothing returns boolean
    return(pe == 1)
endfunction
function M0 takes nothing returns boolean
    return(px[(0 + 2)] == false)
endfunction
function p0 takes nothing returns boolean
    return(Pe)
endfunction
function P0 takes nothing returns boolean
    return(pe == 2)
endfunction
function q0 takes nothing returns boolean
    return(Pe)
endfunction
function Q0 takes nothing returns boolean
    return(pe == 3)
endfunction
function s0 takes nothing returns boolean
    return(px[(0 + 4)] == false)
endfunction
function S0 takes nothing returns boolean
    return(Pe)
endfunction
function t0 takes nothing returns boolean
    return(pe == 4)
endfunction
function T0 takes nothing returns boolean
    return(pe == 5)
endfunction
function u0 takes nothing returns boolean
    return(pe == 6)
endfunction
function U0 takes nothing returns boolean
    return(px[(0 + 1)] == false)
endfunction
function w0 takes nothing returns boolean
    return(Pe)
endfunction
function W0 takes nothing returns boolean
    return(pe == 4)
endfunction
function y0 takes nothing returns nothing
    if(K0())then
        return
    endif
    if(m0())then
        if(L0())then
            if(l0())then
                call CreateNUnitsAtLoc(2, 'nfel', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n007', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                set px[(0 + 1)] = true
            else
                call CreateNUnitsAtLoc(3, 'ugho', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'u002', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                set px[(0 + 1)] = false
            endif
        else
            call CreateNUnitsAtLoc(3, 'ugho', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'u002', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
        endif
    endif
    if(P0())then
        if(p0())then
            if(M0())then
                call CreateNUnitsAtLoc(1, 'ndqv', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n009', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                set px[(0 + 2)] = true
            else
                call CreateNUnitsAtLoc(1, 'nskm', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n00A', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                set px[(0 + 2)] = false
            endif
        else
            call CreateNUnitsAtLoc(2, 'ohun', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'o003', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
        endif
    endif
    if(Q0())then
        if(q0())then
            call CreateNUnitsAtLoc(1, 'nrvi', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(1, 'ucry', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'u003', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
        endif
    endif
    if(t0())then
        if(S0())then
            if(s0())then
                call CreateNUnitsAtLoc(1, 'nfot', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n00B', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                set px[(0 + 4)] = true
            else
                call CreateNUnitsAtLoc(1, 'uabo', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'u004', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                set px[(0 + 4)] = false
            endif
        else
            call CreateNUnitsAtLoc(1, 'uabo', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'u004', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
        endif
    endif
    if(T0())then
        call CreateNUnitsAtLoc(2, 'umtw', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    endif
    if(u0())then
        call CreateNUnitsAtLoc(3, 'uskm', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
    endif
    call TriggerSleepAction(3.)
    if(W0())then
        if(w0())then
            if(U0())then
                call CreateNUnitsAtLoc(2, 'nfel', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n007', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                set px[(0 + 1)] = true
            else
                call CreateNUnitsAtLoc(3, 'ugho', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'u002', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
                set px[(0 + 1)] = false
            endif
        else
            call CreateNUnitsAtLoc(3, 'ugho', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'u002', Player(11), GetRectCenter(JD), bj_UNIT_FACING)
        endif
    endif
endfunction
function Y0 takes nothing returns boolean
    return(pe == 7)
endfunction
function z0 takes nothing returns boolean
    return(px[(12 + 1)] == false)
endfunction
function Z0 takes nothing returns boolean
    return(Pe)
endfunction
function v1 takes nothing returns boolean
    return(pe == 1)
endfunction
function e1 takes nothing returns boolean
    return(px[(12 + 2)] == false)
endfunction
function xxx1 takes nothing returns boolean
    return(Pe)
endfunction
function o1 takes nothing returns boolean
    return(pe == 2)
endfunction
function rrr1 takes nothing returns boolean
    return(Pe)
endfunction
function n1 takes nothing returns boolean
    return(pe == 3)
endfunction
function V1 takes nothing returns boolean
    return(px[(12 + 4)] == false)
endfunction
function E1 takes nothing returns boolean
    return(Pe)
endfunction
function X1 takes nothing returns boolean
    return(pe == 4)
endfunction
function O1 takes nothing returns boolean
    return(pe == 5)
endfunction
function R1 takes nothing returns boolean
    return(qe)
endfunction
function I1 takes nothing returns boolean
    return(pe == 6)
endfunction
function A1 takes nothing returns boolean
    return(px[(12 + 1)] == false)
endfunction
function N1 takes nothing returns boolean
    return(Pe)
endfunction
function b1 takes nothing returns boolean
    return(pe == 4)
endfunction
function B1 takes nothing returns nothing
    if(Y0())then
        return
    endif
    if(v1())then
        if(Z0())then
            if(z0())then
                call CreateNUnitsAtLoc(2, 'nfel', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n007', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                set px[(12 + 1)] = true
            else
                call CreateNUnitsAtLoc(3, 'ugho', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'u002', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                set px[(12 + 1)] = false
            endif
        else
            call CreateNUnitsAtLoc(3, 'ugho', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'u002', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
        endif
    endif
    if(o1())then
        if(xxx1())then
            if(e1())then
                call CreateNUnitsAtLoc(1, 'ndqv', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n009', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                set px[(12 + 2)] = true
            else
                call CreateNUnitsAtLoc(1, 'nskm', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n00A', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                set px[(12 + 2)] = false
            endif
        else
            call CreateNUnitsAtLoc(2, 'ohun', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'o003', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
        endif
    endif
    if(n1())then
        if(rrr1())then
            call CreateNUnitsAtLoc(1, 'nrvi', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(1, 'ucry', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'u003', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
        endif
    endif
    if(X1())then
        if(E1())then
            if(V1())then
                call CreateNUnitsAtLoc(1, 'nfot', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n00B', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                set px[(12 + 4)] = true
            else
                call CreateNUnitsAtLoc(1, 'uabo', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'u004', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                set px[(12 + 4)] = false
            endif
        else
            call CreateNUnitsAtLoc(1, 'uabo', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'u004', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
        endif
    endif
    if(O1())then
        if(R1())then
            call CreateNUnitsAtLoc(1, 'nbwm', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
        else
            call CreateNUnitsAtLoc(2, 'umtw', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
        endif
    endif
    if(I1())then
        call CreateNUnitsAtLoc(3, 'uskm', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
    endif
    call TriggerSleepAction(3.)
    if(b1())then
        if(N1())then
            if(A1())then
                call CreateNUnitsAtLoc(2, 'nfel', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'n007', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                set px[(12 + 1)] = true
            else
                call CreateNUnitsAtLoc(3, 'ugho', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                call CreateNUnitsAtLoc(1, 'u002', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
                set px[(12 + 1)] = false
            endif
        else
            call CreateNUnitsAtLoc(3, 'ugho', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
            call CreateNUnitsAtLoc(1, 'u002', Player(11), GetRectCenter(HD), bj_UNIT_FACING)
        endif
    endif
endfunction
function c1 takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit()) == Player(11))
endfunction
function C1 takes nothing returns nothing
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(cC))
endfunction
function d1 takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit()) == Player(11))
endfunction
function D1 takes nothing returns nothing
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(jD))
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(cC))
endfunction
function f1 takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit()) == Player(11))
endfunction
function F1 takes nothing returns nothing
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(gD))
endfunction
function g1 takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit()) == Player(11))
endfunction
function G1 takes nothing returns nothing
    call IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetRectCenter(hD))
endfunction
function h1 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I00M')
endfunction
function H1 takes nothing returns nothing
    // call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ("Player " + (GetPlayerName(GetTriggerPlayer()) + StringCase(" JUST GOT ZALMOXES ! BEWARE !", false))))
endfunction
function j1 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I00N')
endfunction
function J1 takes nothing returns nothing
    // call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ("Player " + (GetPlayerName(GetTriggerPlayer()) + StringCase(" JUST GOT ATTILA ! BEWARE !", false))))
endfunction
function k1 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I00V')
endfunction
function K1 takes nothing returns nothing
    // call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ("Player " + (GetPlayerName(GetTriggerPlayer()) + StringCase(" JUST USED THE POWER OF THE ANK'S. ALL MORTALS BOW TO HIM !", true))))
endfunction
function L1 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I00S')
endfunction
function m1 takes nothing returns nothing
    // call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ("Player " + (GetPlayerName(GetTriggerPlayer()) + StringCase(" JUST GOT ARMOUR OF GODS ! BEWARE !", false))))
endfunction
function M1 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I00R')
endfunction
function p1 takes nothing returns nothing
    // call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ("Player " + (GetPlayerName(GetTriggerPlayer()) + StringCase(" JUST GOT ARMOUR OF ROCK ! BEWARE !", false))))
endfunction
function P1 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I002')
endfunction
function q1 takes nothing returns nothing
    // call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ("Player " + (GetPlayerName(GetTriggerPlayer()) + StringCase(" JUST GOT STEELSKIN ! BEWARE !", false))))
endfunction
function Q1 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I000')
endfunction
function s1 takes nothing returns nothing
    // call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ("Player " + (GetPlayerName(GetTriggerPlayer()) + StringCase(" JUST GOT FANATICISM ! BEWARE !", false))))
endfunction
function S1 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'IC13')
endfunction
function T1 takes nothing returns nothing
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ("Player " + (GetPlayerName(GetTriggerPlayer()) + StringCase(" JUST GOT WIRT'S LEG ! BEWARE !", false))))
endfunction
function U1 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'modt')
endfunction
function w1 takes nothing returns nothing
    // call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, ("Player " + (GetPlayerName(GetTriggerPlayer()) + StringCase(" JUST GOT VAMPIRIC POWER ! BEWARE !", false))))
endfunction
function W1 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I01I')and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function yyy1 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00M')
endfunction
function Y1 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01K')
endfunction
function zzz1 takes nothing returns boolean
    return(ir >= 1)and(ar >= 1)
endfunction
function Z1 takes nothing returns nothing
    set ir = 0
    set ar = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(yyy1())then
            set ir = (ir + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Y1())then
            set ar = (ar + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(zzz1())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I00M'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01K'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01I'))
        call UnitAddItemByIdSwapped('I01H', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01I'))
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    endif
endfunction
function v2 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I01J')and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function e2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00N')
endfunction
function xxx2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I02M')
endfunction
function o2 takes nothing returns boolean
    return(ir >= 1)and(ar >= 1)
endfunction
function rrr2 takes nothing returns nothing
    set ir = 0
    set ar = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(e2())then
            set ir = (ir + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(xxx2())then
            set ar = (ar + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(o2())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I00N'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02M'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01J'))
        call UnitAddItemByIdSwapped('I01P', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01J'))
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    endif
endfunction
function a2 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I027')and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function n2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00L')
endfunction
function V2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01U')
endfunction
function E2 takes nothing returns boolean
    return(ir >= 1)and(ar >= 1)
endfunction
function X2 takes nothing returns nothing
    set ir = 0
    set ar = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(n2())then
            set ir = (ir + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(V2())then
            set ar = (ar + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(E2())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I00L'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01U'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I027'))
        call UnitAddItemByIdSwapped('I026', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I027'))
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    endif
endfunction
function O2 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I02B')
endfunction
function R2 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetManipulatingUnit(), 'IC16')) == 'IC16')and(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetManipulatingUnit(), 'I00R')) == 'I00R')
endfunction
function I2 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetManipulatingUnit(), 'IC03')) == 'IC03')and(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetManipulatingUnit(), 'I00R')) == 'I00R')
endfunction
function A2 takes nothing returns nothing
    if(I2())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetManipulatingUnit(), 'IC03'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetManipulatingUnit(), 'I00R'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetManipulatingUnit(), 'I02B'))
        call UnitAddItemByIdSwapped('I02C', GetManipulatingUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
        if(R2())then
            call RemoveItem(GetItemOfTypeFromUnitBJ(GetManipulatingUnit(), 'IC16'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(GetManipulatingUnit(), 'I00R'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(GetManipulatingUnit(), 'I02B'))
            call UnitAddItemByIdSwapped('I02A', GetManipulatingUnit())
            call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
        else
            call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetManipulatingUnit()), PLAYER_STATE_RESOURCE_GOLD)
            call AdjustPlayerStateBJ(10, GetOwningPlayer(GetManipulatingUnit()), PLAYER_STATE_RESOURCE_LUMBER)
            call RemoveItem(GetItemOfTypeFromUnitBJ(GetManipulatingUnit(), 'I02B'))
            call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
            call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
        endif
    endif
endfunction
function N2 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I02D')and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function b2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'IC15')
endfunction
function B2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00T')
endfunction
function c2 takes nothing returns boolean
    return(ir >= 1)and(ar >= 1)
endfunction
function C2 takes nothing returns nothing
    set ir = 0
    set ar = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(b2())then
            set ir = (ir + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(B2())then
            set ar = (ar + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(c2())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'IC15'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I00T'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02D'))
        call UnitAddItemByIdSwapped('I02N', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02D'))
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    endif
endfunction
function d2 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I02O')and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function D2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I025')
endfunction
function f2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'evtl')
endfunction
function F2 takes nothing returns boolean
    return(ir >= 1)and(ar >= 1)
endfunction
function g2 takes nothing returns nothing
    set ir = 0
    set ar = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(D2())then
            set ir = (ir + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(f2())then
            set ar = (ar + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(F2())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I025'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'evtl'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02O'))
        call UnitAddItemByIdSwapped('I02P', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02O'))
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    endif
endfunction
function G2 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I01Q')and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function h2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00S')
endfunction
function H2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I002')
endfunction
function j2 takes nothing returns boolean
    return(ir >= 1)and(ar >= 1)
endfunction
function J2 takes nothing returns nothing
    set ir = 0
    set ar = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(h2())then
            set ir = (ir + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(H2())then
            set ar = (ar + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(j2())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I00S'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I002'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01Q'))
        call UnitAddItemByIdSwapped('I01R', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01Q'))
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    endif
endfunction
function k2 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I02F')and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function K2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'modt')
endfunction
function L2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I000')
endfunction
function m2 takes nothing returns boolean
    return(ir >= 1)and(ar >= 1)
endfunction
function M2 takes nothing returns nothing
    set ir = 0
    set ar = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(K2())then
            set ir = (ir + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(L2())then
            set ar = (ar + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(m2())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'modt'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I000'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02F'))
        call UnitAddItemByIdSwapped('I02E', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02F'))
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    endif
endfunction
function p2 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I01T')and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function P2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I01F')
endfunction
function q2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'brac')
endfunction
function Q2 takes nothing returns boolean
    return(ir >= 1)and(ar >= 1)
endfunction
function s2 takes nothing returns nothing
    set ir = 0
    set ar = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(P2())then
            set ir = (ir + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(q2())then
            set ar = (ar + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(Q2())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01F'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'brac'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01T'))
        call UnitAddItemByIdSwapped('I01S', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01T'))
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    endif
endfunction
function S2 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I029')and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function T2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'rhth')
endfunction
function U2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'pmna')
endfunction
function w2 takes nothing returns boolean
    return(ir >= 1)and(ar >= 1)
endfunction
function W2 takes nothing returns nothing
    set ir = 0
    set ar = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(T2())then
            set ir = (ir + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(U2())then
            set ar = (ar + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(w2())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'rhth'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'pmna'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I029'))
        call UnitAddItemByIdSwapped('I028', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I029'))
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    endif
endfunction
function yyy2 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I02G')and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function Y2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00U')
endfunction
function zzz2 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00Z')
endfunction
function Z2 takes nothing returns boolean
    return(ir >= 1)and(ar >= 1)
endfunction
function v3 takes nothing returns nothing
    set ir = 0
    set ar = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(Y2())then
            set ir = (ir + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(zzz2())then
            set ar = (ar + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(Z2())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I00U'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I00Z'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02G'))
        call UnitAddItemByIdSwapped('I02H', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02G'))
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    endif
endfunction
function e3 takes nothing returns boolean
    return(GetItemTypeId(GetManipulatedItem()) == 'I02I')and(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO))
endfunction
function xxx3 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00U')
endfunction
function o3 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(), bj_forLoopAIndex)) == 'I00Y')
endfunction
function rrr3 takes nothing returns boolean
    return(ir >= 1)and(ar >= 1)
endfunction
function a3 takes nothing returns nothing
    set ir = 0
    set ar = 0
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(xxx3())then
            set ir = (ir + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(o3())then
            set ar = (ar + 1)
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if(rrr3())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I00U'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I00Y'))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02I'))
        call UnitAddItemByIdSwapped('I02J', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02I'))
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    endif
endfunction
function n3 takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function V3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01L')) == 'I01L')and(GetHeroLevel(GetTriggerUnit()) >= 15)
endfunction
function E3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01M')) == 'I01M')and(GetHeroLevel(GetTriggerUnit()) >= 10)
endfunction
function X3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'ratf')) == 'ratf')and(GetHeroLevel(GetTriggerUnit()) >= 5)
endfunction
function O3 takes nothing returns nothing
    if(X3())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'ratf'))
        call UnitAddItemByIdSwapped('I01M', GetTriggerUnit())
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Claws of Attack have upgraded ...")
    else
        if(E3())then
            call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01M'))
            call UnitAddItemByIdSwapped('I01L', GetTriggerUnit())
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Claws of Attack have upgraded ...")
        else
            if(V3())then
                call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01L'))
                call UnitAddItemByIdSwapped('I01F', GetTriggerUnit())
                call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Claws of Attack have upgraded ...")
            endif
        endif
    endif
endfunction
function R3 takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function I3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02L')) == 'I02L')and(GetHeroLevel(GetTriggerUnit()) >= 15)
endfunction
function A3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02K')) == 'I02K')and(GetHeroLevel(GetTriggerUnit()) >= 10)
endfunction
function N3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'clfm')) == 'clfm')and(GetHeroLevel(GetTriggerUnit()) >= 5)
endfunction
function b3 takes nothing returns nothing
    if(N3())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'clfm'))
        call UnitAddItemByIdSwapped('I02K', GetTriggerUnit())
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Cloak of Flames has upgraded ...")
    else
        if(A3())then
            call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02K'))
            call UnitAddItemByIdSwapped('I02L', GetTriggerUnit())
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Cloak of Flames has upgraded ...")
        else
            if(I3())then
                call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02L'))
                call UnitAddItemByIdSwapped('I02M', GetTriggerUnit())
                call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Cloak of Flames has upgraded ...")
            endif
        endif
    endif
endfunction
function B3 takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function c3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01N')) == 'I01N')and(GetHeroLevel(GetTriggerUnit()) >= 15)
endfunction
function C3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01O')) == 'I01O')and(GetHeroLevel(GetTriggerUnit()) >= 10)
endfunction
function d3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01G')) == 'I01G')and(GetHeroLevel(GetTriggerUnit()) >= 5)
endfunction
function D3 takes nothing returns nothing
    if(d3())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01G'))
        call UnitAddItemByIdSwapped('I01O', GetTriggerUnit())
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Lightning has upgraded ...")
    else
        if(C3())then
            call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01O'))
            call UnitAddItemByIdSwapped('I01N', GetTriggerUnit())
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Lightning has upgraded ...")
        else
            if(c3())then
                call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01N'))
                call UnitAddItemByIdSwapped('I01K', GetTriggerUnit())
                call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Lightning has upgraded ...")
            endif
        endif
    endif
endfunction
function f3 takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function F3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01Z')) == 'I01Z')and(GetHeroLevel(GetTriggerUnit()) >= 12)
endfunction
function g3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I021')) == 'I021')and(GetHeroLevel(GetTriggerUnit()) >= 8)
endfunction
function G3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I020')) == 'I020')and(GetHeroLevel(GetTriggerUnit()) >= 4)
endfunction
function h3 takes nothing returns nothing
    if(G3())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I020'))
        call UnitAddItemByIdSwapped('I021', GetTriggerUnit())
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Fire has upgraded ...")
    else
        if(g3())then
            call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I021'))
            call UnitAddItemByIdSwapped('I01Z', GetTriggerUnit())
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Fire has upgraded ...")
        else
            if(F3())then
                call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01Z'))
                call UnitAddItemByIdSwapped('I01Y', GetTriggerUnit())
                call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Fire has upgraded ...")
            endif
        endif
    endif
endfunction
function H3 takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function j3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01W')) == 'I01W')and(GetHeroLevel(GetTriggerUnit()) >= 15)
endfunction
function J3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01V')) == 'I01V')and(GetHeroLevel(GetTriggerUnit()) >= 10)
endfunction
function k3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01X')) == 'I01X')and(GetHeroLevel(GetTriggerUnit()) >= 5)
endfunction
function K3 takes nothing returns nothing
    if(k3())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01X'))
        call UnitAddItemByIdSwapped('I01V', GetTriggerUnit())
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Frost has upgraded ...")
    else
        if(J3())then
            call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01V'))
            call UnitAddItemByIdSwapped('I01W', GetTriggerUnit())
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Frost has upgraded ...")
        else
            if(j3())then
                call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I01W'))
                call UnitAddItemByIdSwapped('I01U', GetTriggerUnit())
                call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Frost has upgraded ...")
            endif
        endif
    endif
endfunction
function L3 takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function m3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I022')) == 'I022')and(GetHeroLevel(GetTriggerUnit()) >= 12)
endfunction
function M3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I024')) == 'I024')and(GetHeroLevel(GetTriggerUnit()) >= 8)
endfunction
function p3 takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I023')) == 'I023')and(GetHeroLevel(GetTriggerUnit()) >= 4)
endfunction
function P3 takes nothing returns nothing
    if(p3())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I023'))
        call UnitAddItemByIdSwapped('I024', GetTriggerUnit())
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Corruption has upgraded ...")
    else
        if(M3())then
            call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I024'))
            call UnitAddItemByIdSwapped('I022', GetTriggerUnit())
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Corruption has upgraded ...")
        else
            if(m3())then
                call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I022'))
                call UnitAddItemByIdSwapped('I025', GetTriggerUnit())
                call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Corruption has upgraded ...")
            endif
        endif
    endif
endfunction
function q3 takes nothing returns nothing
    local weathereffect we
    local player p
    local unit u
    local integer unitID
    local trigger t
    local real life
    local integer i
    local trigger t1
    local trigger t2
    local trigger g
    call SetDayNightModels("Environment\\DNC\\DNCDalaran\\DNCDalaranTerrain\\DNCDalaranTerrain.mdl", "Environment\\DNC\\DNCDalaran\\DNCDalaranUnit\\DNCDalaranUnit.mdl")
    set we = AddWeatherEffect(Rect(- 8192., - 6144., 8192., 6144.), 'FDwl')
    call EnableWeatherEffect(we, true)
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("DalaranDay")
    call SetAmbientNightSound("DalaranNight")
    call SetMapMusic("Music", true, 0)
    set Sr = CreateSound("war3mapImported\\cheer.wav", false, false, false, 10, 10, "DefaultEAXON")
    call SetSoundChannel(Sr, 0)
    call SetSoundVolume(Sr, 64)
    call SetSoundPitch(Sr, 1.)
    set tr = CreateSound("Units\\Human\\HeroBloodElf\\BloodElfMagePissed1.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(tr, "BloodElfSorcerorPissed")
    call SetSoundDuration(tr, 2949)
    set Tr = CreateSound("Units\\Human\\HeroBloodElf\\BloodElfMagePissed2.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(Tr, "BloodElfSorcerorPissed")
    call SetSoundDuration(Tr, 3756)
    set ur = CreateSound("Units\\Human\\HeroBloodElf\\BloodElfMagePissed6.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(ur, "BloodElfSorcerorPissed")
    call SetSoundDuration(ur, 16158)
    set Ur = CreateSound("Units\\Human\\HeroBloodElf\\BloodElfMageWarcry1.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(Ur, "BloodElfSorcerorWarcry")
    call SetSoundDuration(Ur, 2003)
    set wr = CreateSound("Units\\Human\\HeroBloodElf\\BloodElfMageYesAttack2.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(wr, "BloodElfSorcerorYesAttack")
    call SetSoundDuration(wr, 1509)
    set Wr = CreateSound("Units\\Human\\HeroBloodElf\\BloodElfMageYesAttack3.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(Wr, "BloodElfSorcerorYesAttack")
    call SetSoundDuration(Wr, 1939)
    set yr = CreateSound("Sound\\Music\\mp3Music\\Credits.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(yr, "CreditsMusic")
    call SetSoundDuration(yr, 83017)
    set Yr = CreateSound("Abilities\\Spells\\Human\\Defend\\DefendCaster.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(Yr, "Defend")
    call SetSoundDuration(Yr, 1167)
    set zr = CreateSound("Units\\NightElf\\HeroDemonHunter\\DemonHunterMorphedPissed4.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(zr, "HeroDemonHunterMorphedPissed")
    call SetSoundDuration(zr, 4539)
    set Zr = CreateSound("Units\\Human\\BloodElfDragonHawk\\DragonHawkWarcry1.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(Zr, "BloodElfDragonHawkWarcry")
    call SetSoundDuration(Zr, 4412)
    set vi = CreateSound("Abilities\\Spells\\Other\\HowlOfTerror\\HowlOfTerror.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(vi, "HowlOfTerror")
    call SetSoundDuration(vi, 3065)
    set ei = CreateSound("Units\\Demon\\HeroPitLord\\HPitLordPissed4.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(ei, "HeroPitLordPissed")
    call SetSoundDuration(ei, 8487)
    set xi = CreateSound("Units\\Demon\\HeroPitLord\\HPitLordReady1.wav", false, true, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(xi, "HeroPitLordReady")
    call SetSoundDuration(xi, 3019)
    set ri = CreateSound("Sound\\Dialogue\\UndeadExpCamp\\Undead08x\\L08LadyVashj05.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(ri, "L08LadyVashj05")
    call SetSoundDuration(ri, 5172)
    set ii = CreateSound("Doodads\\Cinematic\\Lightningbolt\\LightningBolt1.wav", false, false, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(ii, "CinematicLightningBolt")
    call SetSoundDuration(ii, 3001)
    call SetSoundChannel(ii, 0)
    set ai = CreateSound("Doodads\\Cinematic\\Lightningbolt\\LightningBolt1.wav", false, false, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(ai, "CinematicLightningBolt")
    call SetSoundDuration(ai, 3001)
    call SetSoundChannel(ai, 0)
    set ni = CreateSound("Sound\\Units\\Combat\\MetalHeavySliceFlesh2.wav", false, true, true, 10, 10, "CombatSoundsEAX")
    call SetSoundParamsFromLabel(ni, "MetalHeavySliceFlesh")
    call SetSoundDuration(ni, 946)
    set Ei = CreateSound("Sound\\Music\\mp3Music\\PH1.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(Ei, "PHMusic")
    call SetSoundDuration(Ei, 281582)
    set Xi = CreateSound("Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireLoop1.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(Xi, "RainOfFireLoop")
    call SetSoundDuration(Xi, 4000)
    set Oi = CreateSound("Units\\Human\\Rifleman\\RiflemanPissed5.wav", false, false, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(Oi, "RiflemanPissed")
    call SetSoundDuration(Oi, 4168)
    set Ri = CreateSound("Units\\Human\\Rifleman\\RiflemanPissed5.wav", false, false, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(Ri, "RiflemanPissed")
    call SetSoundDuration(Ri, 4168)
    set Ii = CreateSound("war3mapImported\\applau11.wav", false, false, false, 10, 10, "DefaultEAXON")
    call SetSoundChannel(Ii, 0)
    call SetSoundVolume(Ii, 64)
    call SetSoundPitch(Ii, 1.)
    set Ai = CreateSound("Sound\\Ambient\\DoodadEffects\\TheHornOfCenarius.wav", false, false, false, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(Ai, "HornOfCenariusSound")
    call SetSoundDuration(Ai, 12121)
    set Ni = CreateSound("Units\\Undead\\Tichondrius\\TichondriusPissed3.wav", false, true, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(Ni, "TichondriusPissed")
    call SetSoundDuration(Ni, 2484)
    set bi = CreateSound("Sound\\Dialogue\\UndeadCampaign\\Undead08\\U08Archimonde19.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(bi, "U08Archimonde19")
    call SetSoundDuration(bi, 7549)
    set Bi = CreateSound("Units\\Undead\\Varimathras\\VarimathrasPissed5.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(Bi, "VarimathrasPissed")
    call SetSoundDuration(Bi, 2672)
    set ci = CreateSound("Units\\Undead\\Varimathras\\VarimathrasPissed6.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(ci, "VarimathrasPissed")
    call SetSoundDuration(ci, 2885)
    set Ci = CreateSound("Units\\Undead\\Varimathras\\VarimathrasPissed8.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(Ci, "VarimathrasPissed")
    call SetSoundDuration(Ci, 8906)
    set di = CreateSound("Units\\Undead\\Varimathras\\VarimathrasWarcry1.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(di, "VarimathrasWarcry")
    call SetSoundDuration(di, 1937)
    set Di = CreateSound("Units\\Undead\\Varimathras\\VarimathrasYes2.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(Di, "VarimathrasYes")
    call SetSoundDuration(Di, 2023)
    set fi = CreateSound("Units\\Undead\\Varimathras\\VarimathrasYesAttack1.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(fi, "VarimathrasYesAttack")
    call SetSoundDuration(fi, 2171)
    set Fi = CreateSound("Units\\Undead\\Varimathras\\VarimathrasYesAttack2.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(Fi, "VarimathrasYesAttack")
    call SetSoundDuration(Fi, 1959)
    set gi = CreateSound("Units\\Undead\\Varimathras\\VarimathrasYesAttack4.wav", false, false, true, 10, 10, "HeroAcksEAX")
    call SetSoundParamsFromLabel(gi, "VarimathrasYesAttack")
    call SetSoundDuration(gi, 1829)
    set Gi = CreateSound("Sound\\Music\\mp3Music\\War2IntroMusic.mp3", false, false, false, 10, 10, "")
    call SetSoundParamsFromLabel(Gi, "War2Intro")
    call SetSoundDuration(Gi, 81136)
    set hi = CreateSound("Sound\\Units\\Undead\\Dissipate\\UndeadDissipate2.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(hi, "UndeadDissipate")
    call SetSoundDuration(hi, 3613)
    set Hi = CreateSound("Abilities\\Spells\\Human\\Invisibility\\InvisibilityTarget.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(Hi, "Invisibility")
    call SetSoundDuration(Hi, 2043)
    set ji = CreateSound("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(ji, "MassTeleport")
    call SetSoundDuration(ji, 4899)
    set Ji = CreateSound("war3mapImported\\Nuke2.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(Ji, 2239)
    call SetSoundChannel(Ji, 0)
    call SetSoundVolume(Ji, 127)
    call SetSoundPitch(Ji, 1.)
    set ki = CreateSound("Abilities\\Spells\\Items\\ResourceItems\\ReceiveGold.wav", false, true, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(ki, "ReceiveGold")
    call SetSoundDuration(ki, 589)
    call SetSoundChannel(ki, 0)
    set Ki = CreateSound("Sound\\Ambient\\DoodadEffects\\FrostmourneChant1.wav", false, false, false, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(Ki, "FrostmourneChantSound")
    call SetSoundDuration(Ki, 5039)
    call SetSoundChannel(Ki, 0)
    call SetSoundVolume(Ki, 127)
    set li = CreateSound("Sound\\Ambient\\DoodadEffects\\ShimmeringPortalBirth.wav", false, false, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(li, "ShimmeringPortalBirth")
    call SetSoundDuration(li, 8529)
    call SetSoundChannel(li, 0)
    set Li = CreateSound("Sound\\Ambient\\DoodadEffects\\ShimmeringPortalDeath.wav", false, false, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(Li, "ShimmeringPortalDeath")
    call SetSoundDuration(Li, 4783)
    call SetSoundChannel(Li, 0)
    set mi = CreateSound("Sound\\Ambient\\DoodadEffects\\WarlockAppears.wav", false, false, false, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(mi, "ArchimondeAppearsSound")
    call SetSoundDuration(mi, 7361)
    call SetSoundChannel(mi, 0)
    set Mi = CreateSound("Abilities\\Spells\\Orc\\LightningBolt\\LightningBolt.wav", false, false, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(Mi, "LightningBolt")
    call SetSoundDuration(Mi, 2136)
    call SetSoundChannel(Mi, 0)
    set pi = CreateSound("Sound\\Dialogue\\NightElfCampaign\\NightElf01\\N01Archimonde30.mp3", false, false, false, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(pi, "N01Archimonde30")
    call SetSoundDuration(pi, 3918)
    call SetSoundVolume(pi, 126)
    call SetPlayerTechResearched(Player(0), 'Remg', 1)
    call SetPlayerTechResearched(Player(0), 'Rhhb', 1)
    call SetPlayerTechResearched(Player(0), 'Roen', 1)
    call SetPlayerTechResearched(Player(0), 'Redc', 2)
    call SetPlayerTechResearched(Player(0), 'Recb', 1)
    call SetPlayerTechResearched(Player(0), 'Rost', 2)
    call SetPlayerTechResearched(Player(0), 'Rhpm', 1)
    call SetPlayerTechResearched(Player(0), 'Rhss', 1)
    call SetPlayerTechResearched(Player(0), 'Robf', 1)
    call SetPlayerTechResearched(Player(1), 'Remg', 1)
    call SetPlayerTechResearched(Player(1), 'Roen', 1)
    call SetPlayerTechResearched(Player(1), 'Redc', 2)
    call SetPlayerTechResearched(Player(1), 'Recb', 1)
    call SetPlayerTechResearched(Player(1), 'Rost', 2)
    call SetPlayerTechResearched(Player(1), 'Rhpm', 1)
    call SetPlayerTechResearched(Player(1), 'Rhss', 1)
    call SetPlayerTechResearched(Player(1), 'Robf', 1)
    call SetPlayerTechResearched(Player(2), 'Remg', 1)
    call SetPlayerTechResearched(Player(2), 'Roen', 1)
    call SetPlayerTechResearched(Player(2), 'Redc', 2)
    call SetPlayerTechResearched(Player(2), 'Recb', 1)
    call SetPlayerTechResearched(Player(2), 'Rost', 2)
    call SetPlayerTechResearched(Player(2), 'Rhpm', 1)
    call SetPlayerTechResearched(Player(2), 'Rhss', 1)
    call SetPlayerTechResearched(Player(2), 'Robf', 1)
    call SetPlayerTechResearched(Player(3), 'Remg', 1)
    call SetPlayerTechResearched(Player(3), 'Roen', 1)
    call SetPlayerTechResearched(Player(3), 'Redc', 2)
    call SetPlayerTechResearched(Player(3), 'Recb', 1)
    call SetPlayerTechResearched(Player(3), 'Rost', 2)
    call SetPlayerTechResearched(Player(3), 'Rhpm', 1)
    call SetPlayerTechResearched(Player(3), 'Rhss', 1)
    call SetPlayerTechResearched(Player(3), 'Robf', 1)
    call SetPlayerTechResearched(Player(4), 'Remg', 1)
    call SetPlayerTechResearched(Player(4), 'Roen', 1)
    call SetPlayerTechResearched(Player(4), 'Redc', 2)
    call SetPlayerTechResearched(Player(4), 'Recb', 1)
    call SetPlayerTechResearched(Player(4), 'Rost', 2)
    call SetPlayerTechResearched(Player(4), 'Rhpm', 1)
    call SetPlayerTechResearched(Player(4), 'Rhss', 1)
    call SetPlayerTechResearched(Player(4), 'Robf', 1)
    call SetPlayerTechResearched(Player(5), 'Redc', 2)
    call SetPlayerTechResearched(Player(5), 'Rwdm', 1)
    call SetPlayerTechResearched(Player(5), 'Recb', 1)
    call SetPlayerTechResearched(Player(5), 'Robf', 1)
    call SetPlayerTechResearched(Player(6), 'Rhhb', 1)
    call SetPlayerTechResearched(Player(6), 'Ruac', 1)
    call SetPlayerTechResearched(Player(6), 'Rusl', 1)
    call SetPlayerTechResearched(Player(6), 'Rupc', 1)
    call SetPlayerTechResearched(Player(6), 'Ruba', 1)
    call SetPlayerTechResearched(Player(6), 'Roen', 1)
    call SetPlayerTechResearched(Player(6), 'Redc', 2)
    call SetPlayerTechResearched(Player(6), 'Rufb', 1)
    call SetPlayerTechResearched(Player(6), 'Recb', 1)
    call SetPlayerTechResearched(Player(6), 'Rost', 2)
    call SetPlayerTechResearched(Player(6), 'Rune', 2)
    call SetPlayerTechResearched(Player(6), 'Rowd', 2)
    call SetPlayerTechResearched(Player(6), 'Rows', 1)
    call SetPlayerTechResearched(Player(6), 'Rhpm', 1)
    call SetPlayerTechResearched(Player(6), 'Rhss', 1)
    call SetPlayerTechResearched(Player(6), 'Robf', 1)
    call SetPlayerTechResearched(Player(7), 'Rhhb', 1)
    call SetPlayerTechResearched(Player(7), 'Ruac', 1)
    call SetPlayerTechResearched(Player(7), 'Rusl', 1)
    call SetPlayerTechResearched(Player(7), 'Rupc', 1)
    call SetPlayerTechResearched(Player(7), 'Ruba', 1)
    call SetPlayerTechResearched(Player(7), 'Roen', 1)
    call SetPlayerTechResearched(Player(7), 'Redc', 2)
    call SetPlayerTechResearched(Player(7), 'Rufb', 1)
    call SetPlayerTechResearched(Player(7), 'Recb', 1)
    call SetPlayerTechResearched(Player(7), 'Rost', 2)
    call SetPlayerTechResearched(Player(7), 'Rune', 2)
    call SetPlayerTechResearched(Player(7), 'Rowd', 2)
    call SetPlayerTechResearched(Player(7), 'Rows', 1)
    call SetPlayerTechResearched(Player(7), 'Rhpm', 1)
    call SetPlayerTechResearched(Player(7), 'Rhss', 1)
    call SetPlayerTechResearched(Player(7), 'Robf', 1)
    call SetPlayerTechResearched(Player(8), 'Rhhb', 1)
    call SetPlayerTechResearched(Player(8), 'Ruac', 1)
    call SetPlayerTechResearched(Player(8), 'Rusl', 1)
    call SetPlayerTechResearched(Player(8), 'Rupc', 1)
    call SetPlayerTechResearched(Player(8), 'Ruba', 1)
    call SetPlayerTechResearched(Player(8), 'Roen', 1)
    call SetPlayerTechResearched(Player(8), 'Redc', 2)
    call SetPlayerTechResearched(Player(8), 'Rufb', 1)
    call SetPlayerTechResearched(Player(8), 'Recb', 1)
    call SetPlayerTechResearched(Player(8), 'Rost', 2)
    call SetPlayerTechResearched(Player(8), 'Rune', 2)
    call SetPlayerTechResearched(Player(8), 'Rowd', 2)
    call SetPlayerTechResearched(Player(8), 'Rows', 1)
    call SetPlayerTechResearched(Player(8), 'Rhpm', 1)
    call SetPlayerTechResearched(Player(8), 'Rhss', 1)
    call SetPlayerTechResearched(Player(8), 'Robf', 1)
    call SetPlayerTechResearched(Player(9), 'Rhhb', 1)
    call SetPlayerTechResearched(Player(9), 'Ruac', 1)
    call SetPlayerTechResearched(Player(9), 'Rusl', 1)
    call SetPlayerTechResearched(Player(9), 'Rupc', 1)
    call SetPlayerTechResearched(Player(9), 'Ruba', 1)
    call SetPlayerTechResearched(Player(9), 'Roen', 1)
    call SetPlayerTechResearched(Player(9), 'Redc', 2)
    call SetPlayerTechResearched(Player(9), 'Rufb', 1)
    call SetPlayerTechResearched(Player(9), 'Recb', 1)
    call SetPlayerTechResearched(Player(9), 'Rost', 2)
    call SetPlayerTechResearched(Player(9), 'Rune', 2)
    call SetPlayerTechResearched(Player(9), 'Rowd', 2)
    call SetPlayerTechResearched(Player(9), 'Rows', 1)
    call SetPlayerTechResearched(Player(9), 'Rhpm', 1)
    call SetPlayerTechResearched(Player(9), 'Rhss', 1)
    call SetPlayerTechResearched(Player(9), 'Robf', 1)
    call SetPlayerTechResearched(Player(10), 'Rhhb', 1)
    call SetPlayerTechResearched(Player(10), 'Ruac', 1)
    call SetPlayerTechResearched(Player(10), 'Rusl', 1)
    call SetPlayerTechResearched(Player(10), 'Rupc', 1)
    call SetPlayerTechResearched(Player(10), 'Ruba', 1)
    call SetPlayerTechResearched(Player(10), 'Roen', 1)
    call SetPlayerTechResearched(Player(10), 'Redc', 2)
    call SetPlayerTechResearched(Player(10), 'Rufb', 1)
    call SetPlayerTechResearched(Player(10), 'Recb', 1)
    call SetPlayerTechResearched(Player(10), 'Rost', 2)
    call SetPlayerTechResearched(Player(10), 'Rune', 2)
    call SetPlayerTechResearched(Player(10), 'Rowd', 2)
    call SetPlayerTechResearched(Player(10), 'Rows', 1)
    call SetPlayerTechResearched(Player(10), 'Rhpm', 1)
    call SetPlayerTechResearched(Player(10), 'Rhss', 1)
    call SetPlayerTechResearched(Player(10), 'Robf', 1)
    call SetPlayerTechResearched(Player(11), 'Roen', 1)
    call SetPlayerTechResearched(Player(11), 'Rwdm', 1)
    call SetPlayerTechResearched(Player(11), 'Rufb', 1)
    call SetPlayerTechResearched(Player(11), 'Recb', 1)
    call SetPlayerTechResearched(Player(11), 'Robf', 1)
    set qb = hF
    set hb = gF
    set Db = GF
    set Gb = HF
    set Tb = jF
    set gb = JF
    set Mb = kF
    set Sb = KF
    set Hb = lF
    set jb = LF
    set Qb = YF
    set Pb = pF
    set lb = mF
    set pb = MF
    set ub = qF
    set fb = QF
    set Kb = PF
    set kb = sF
    set tb = SF
    set Lb = tF
    set mb = TF
    set Jb = zF
    set Fb = UF
    set Ub = uF
    set Wb = wF
    set wb = WF
    set sb = yF
    set i = 0
    set i = 0
    loop
        exitwhen(i > 12)
        set Re[i] = false
        set Ne[i] = ""
        set Be[i] = 0
        set ex[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 20)
        set Ae[i] = ""
        set bx[i] = 0
        set Dx[i] = true
        set Fx[i] = false
        set gx[i] = false
        set Gx[i] = 0
        set hx[i] = 0
        set Mx[i] = false
        set px[i] = false
        set Eo[i] = 0
        set i = i + 1
    endloop
    set ce = DialogCreate()
    set i = 0
    loop
        exitwhen(i > rC)
        set De[i] = false
        set ge[i] = 0
        set he[i] = false
        set He[i] = 0
        set mo[i] = true
        set Qo[i] = true
        set i = i + 1
    endloop
    set qx = DialogCreate()
    set i = 0
    loop
        exitwhen(i > 1)
        set Sx[i] = false
        set tx[i] = 0
        set Tx[i] = false
        set ux[i] = CreateTrigger()
        set Wx[i] = false
        set To[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 2)
        set ao[i] = 0
        set i = i + 1
    endloop
    call TriggerRegisterTimerEventSingle(Pi, 1.)
    call TriggerAddAction(Pi, function Yj)
    call TriggerAddAction(qi, function zj)
    call TriggerAddAction(Ti, function Zj)
    call TriggerAddAction(ui, function vJ)
    call TriggerRegisterPlayerChatEvent(Ui, Player(0), "-rs", true)
    call TriggerRegisterPlayerChatEvent(Ui, Player(6), "-rs", true)
    call TriggerAddAction(Ui, function eJ)
    call TriggerRegisterTimerEventSingle(wi, 15.)
    call TriggerAddAction(wi, function xJ)
    call TriggerRegisterPlayerChatEvent(Wi, Player(0), "-nr", true)
    call TriggerRegisterPlayerChatEvent(Wi, Player(6), "-nr", true)
    call TriggerAddAction(Wi, function oJ)
    call TriggerRegisterTimerEventSingle(yi, 15.)
    call TriggerAddAction(yi, function rJ)
    call TriggerRegisterPlayerChatEvent(Yi, Player(0), "-nf", true)
    call TriggerRegisterPlayerChatEvent(Yi, Player(6), "-nf", true)
    call TriggerAddAction(Yi, function iJ)
    call TriggerRegisterTimerEventSingle(zi, 15.)
    call TriggerAddAction(zi, function aJ)
    call TriggerRegisterPlayerChatEvent(Zi, Player(0), "-tr", true)
    call TriggerRegisterPlayerChatEvent(Zi, Player(6), "-tr", true)
    call TriggerAddAction(Zi, function nJ)
    call TriggerRegisterTimerEventSingle(va, 20.)
    call TriggerAddAction(va, function VJ)
    call TriggerRegisterPlayerChatEvent(ea, Player(0), "-ob", true)
    call TriggerRegisterPlayerChatEvent(ea, Player(1), "-ob", true)
    call TriggerRegisterPlayerChatEvent(ea, Player(2), "-ob", true)
    call TriggerRegisterPlayerChatEvent(ea, Player(3), "-ob", true)
    call TriggerRegisterPlayerChatEvent(ea, Player(4), "-ob", true)
    call TriggerRegisterPlayerChatEvent(ea, Player(6), "-ob", true)
    call TriggerRegisterPlayerChatEvent(ea, Player(7), "-ob", true)
    call TriggerRegisterPlayerChatEvent(ea, Player(8), "-ob", true)
    call TriggerRegisterPlayerChatEvent(ea, Player(9), "-ob", true)
    call TriggerRegisterPlayerChatEvent(ea, Player(10), "-ob", true)
    call TriggerAddCondition(ea, Condition(function EJ))
    call TriggerAddAction(ea, function OJ)
    call TriggerRegisterTimerEventSingle(xa, 15.)
    call TriggerAddAction(xa, function RJ)
    call TriggerRegisterPlayerChatEvent(oa, Player(0), "-na", true)
    call TriggerRegisterPlayerChatEvent(oa, Player(6), "-na", true)
    call TriggerAddAction(oa, function IJ)
    call TriggerRegisterTimerEventSingle(ra, 15.)
    call TriggerAddAction(ra, function AJ)
    call TriggerRegisterPlayerChatEvent(ia, Player(0), "-mod", true)
    call TriggerRegisterPlayerChatEvent(ia, Player(1), "-mod", true)
    call TriggerRegisterPlayerChatEvent(ia, Player(2), "-mod", true)
    call TriggerRegisterPlayerChatEvent(ia, Player(3), "-mod", true)
    call TriggerRegisterPlayerChatEvent(ia, Player(4), "-mod", true)
    call TriggerRegisterPlayerChatEvent(ia, Player(6), "-mod", true)
    call TriggerRegisterPlayerChatEvent(ia, Player(7), "-mod", true)
    call TriggerRegisterPlayerChatEvent(ia, Player(8), "-mod", true)
    call TriggerRegisterPlayerChatEvent(ia, Player(9), "-mod", true)
    call TriggerRegisterPlayerChatEvent(ia, Player(10), "-mod", true)
    call TriggerAddAction(ia, function cJ)
    call TriggerRegisterPlayerChatEvent(aa, Player(0), "-p1", true)
    call TriggerRegisterPlayerChatEvent(aa, Player(1), "-p1", true)
    call TriggerRegisterPlayerChatEvent(aa, Player(2), "-p1", true)
    call TriggerRegisterPlayerChatEvent(aa, Player(3), "-p1", true)
    call TriggerRegisterPlayerChatEvent(aa, Player(4), "-p1", true)
    call TriggerRegisterPlayerChatEvent(aa, Player(6), "-p1", true)
    call TriggerRegisterPlayerChatEvent(aa, Player(7), "-p1", true)
    call TriggerRegisterPlayerChatEvent(aa, Player(8), "-p1", true)
    call TriggerRegisterPlayerChatEvent(aa, Player(9), "-p1", true)
    call TriggerRegisterPlayerChatEvent(aa, Player(10), "-p1", true)
    call TriggerAddCondition(aa, Condition(function CJ))
    call TriggerAddAction(aa, function fJ)
    call TriggerRegisterPlayerChatEvent(na, Player(0), "-p2", true)
    call TriggerRegisterPlayerChatEvent(na, Player(1), "-p2", true)
    call TriggerRegisterPlayerChatEvent(na, Player(2), "-p2", true)
    call TriggerRegisterPlayerChatEvent(na, Player(3), "-p2", true)
    call TriggerRegisterPlayerChatEvent(na, Player(4), "-p2", true)
    call TriggerRegisterPlayerChatEvent(na, Player(6), "-p2", true)
    call TriggerRegisterPlayerChatEvent(na, Player(7), "-p2", true)
    call TriggerRegisterPlayerChatEvent(na, Player(8), "-p2", true)
    call TriggerRegisterPlayerChatEvent(na, Player(9), "-p2", true)
    call TriggerRegisterPlayerChatEvent(na, Player(10), "-p2", true)
    call TriggerAddCondition(na, Condition(function FJ))
    call TriggerAddAction(na, function hJ)
    call TriggerRegisterPlayerChatEvent(Va, Player(0), "-p3", true)
    call TriggerRegisterPlayerChatEvent(Va, Player(1), "-p3", true)
    call TriggerRegisterPlayerChatEvent(Va, Player(2), "-p3", true)
    call TriggerRegisterPlayerChatEvent(Va, Player(3), "-p3", true)
    call TriggerRegisterPlayerChatEvent(Va, Player(4), "-p3", true)
    call TriggerRegisterPlayerChatEvent(Va, Player(6), "-p3", true)
    call TriggerRegisterPlayerChatEvent(Va, Player(7), "-p3", true)
    call TriggerRegisterPlayerChatEvent(Va, Player(8), "-p3", true)
    call TriggerRegisterPlayerChatEvent(Va, Player(9), "-p3", true)
    call TriggerRegisterPlayerChatEvent(Va, Player(10), "-p3", true)
    call TriggerAddCondition(Va, Condition(function HJ))
    call TriggerAddAction(Va, function kJ)
    call TriggerRegisterPlayerChatEvent(Ea, Player(0), "-p4", true)
    call TriggerRegisterPlayerChatEvent(Ea, Player(1), "-p4", true)
    call TriggerRegisterPlayerChatEvent(Ea, Player(2), "-p4", true)
    call TriggerRegisterPlayerChatEvent(Ea, Player(3), "-p4", true)
    call TriggerRegisterPlayerChatEvent(Ea, Player(4), "-p4", true)
    call TriggerRegisterPlayerChatEvent(Ea, Player(6), "-p4", true)
    call TriggerRegisterPlayerChatEvent(Ea, Player(7), "-p4", true)
    call TriggerRegisterPlayerChatEvent(Ea, Player(8), "-p4", true)
    call TriggerRegisterPlayerChatEvent(Ea, Player(9), "-p4", true)
    call TriggerRegisterPlayerChatEvent(Ea, Player(10), "-p4", true)
    call TriggerAddCondition(Ea, Condition(function KJ))
    call TriggerAddAction(Ea, function mJ)
    call TriggerRegisterPlayerChatEvent(Xa, Player(0), "-p5", true)
    call TriggerRegisterPlayerChatEvent(Xa, Player(1), "-p5", true)
    call TriggerRegisterPlayerChatEvent(Xa, Player(2), "-p5", true)
    call TriggerRegisterPlayerChatEvent(Xa, Player(3), "-p5", true)
    call TriggerRegisterPlayerChatEvent(Xa, Player(4), "-p5", true)
    call TriggerRegisterPlayerChatEvent(Xa, Player(6), "-p5", true)
    call TriggerRegisterPlayerChatEvent(Xa, Player(7), "-p5", true)
    call TriggerRegisterPlayerChatEvent(Xa, Player(8), "-p5", true)
    call TriggerRegisterPlayerChatEvent(Xa, Player(9), "-p5", true)
    call TriggerRegisterPlayerChatEvent(Xa, Player(10), "-p5", true)
    call TriggerAddCondition(Xa, Condition(function MJ))
    call TriggerAddAction(Xa, function qJ)
    call TriggerRegisterPlayerChatEvent(Oa, Player(0), "-p7", true)
    call TriggerRegisterPlayerChatEvent(Oa, Player(1), "-p7", true)
    call TriggerRegisterPlayerChatEvent(Oa, Player(2), "-p7", true)
    call TriggerRegisterPlayerChatEvent(Oa, Player(3), "-p7", true)
    call TriggerRegisterPlayerChatEvent(Oa, Player(4), "-p7", true)
    call TriggerRegisterPlayerChatEvent(Oa, Player(6), "-p7", true)
    call TriggerRegisterPlayerChatEvent(Oa, Player(7), "-p7", true)
    call TriggerRegisterPlayerChatEvent(Oa, Player(8), "-p7", true)
    call TriggerRegisterPlayerChatEvent(Oa, Player(9), "-p7", true)
    call TriggerRegisterPlayerChatEvent(Oa, Player(10), "-p7", true)
    call TriggerAddCondition(Oa, Condition(function QJ))
    call TriggerAddAction(Oa, function tJ)
    call TriggerRegisterPlayerChatEvent(Ra, Player(0), "-p8", true)
    call TriggerRegisterPlayerChatEvent(Ra, Player(1), "-p8", true)
    call TriggerRegisterPlayerChatEvent(Ra, Player(2), "-p8", true)
    call TriggerRegisterPlayerChatEvent(Ra, Player(3), "-p8", true)
    call TriggerRegisterPlayerChatEvent(Ra, Player(4), "-p8", true)
    call TriggerRegisterPlayerChatEvent(Ra, Player(6), "-p8", true)
    call TriggerRegisterPlayerChatEvent(Ra, Player(7), "-p8", true)
    call TriggerRegisterPlayerChatEvent(Ra, Player(8), "-p8", true)
    call TriggerRegisterPlayerChatEvent(Ra, Player(9), "-p8", true)
    call TriggerRegisterPlayerChatEvent(Ra, Player(10), "-p8", true)
    call TriggerAddCondition(Ra, Condition(function TJ))
    call TriggerAddAction(Ra, function wJ)
    call TriggerRegisterPlayerChatEvent(Ia, Player(0), "-p9", true)
    call TriggerRegisterPlayerChatEvent(Ia, Player(1), "-p9", true)
    call TriggerRegisterPlayerChatEvent(Ia, Player(2), "-p9", true)
    call TriggerRegisterPlayerChatEvent(Ia, Player(3), "-p9", true)
    call TriggerRegisterPlayerChatEvent(Ia, Player(4), "-p9", true)
    call TriggerRegisterPlayerChatEvent(Ia, Player(6), "-p9", true)
    call TriggerRegisterPlayerChatEvent(Ia, Player(7), "-p9", true)
    call TriggerRegisterPlayerChatEvent(Ia, Player(8), "-p9", true)
    call TriggerRegisterPlayerChatEvent(Ia, Player(9), "-p9", true)
    call TriggerRegisterPlayerChatEvent(Ia, Player(10), "-p9", true)
    call TriggerAddCondition(Ia, Condition(function WJ))
    call TriggerAddAction(Ia, function zJ)
    call TriggerRegisterPlayerChatEvent(Aa, Player(0), "-p10", true)
    call TriggerRegisterPlayerChatEvent(Aa, Player(1), "-p10", true)
    call TriggerRegisterPlayerChatEvent(Aa, Player(2), "-p10", true)
    call TriggerRegisterPlayerChatEvent(Aa, Player(3), "-p10", true)
    call TriggerRegisterPlayerChatEvent(Aa, Player(4), "-p10", true)
    call TriggerRegisterPlayerChatEvent(Aa, Player(6), "-p10", true)
    call TriggerRegisterPlayerChatEvent(Aa, Player(7), "-p10", true)
    call TriggerRegisterPlayerChatEvent(Aa, Player(8), "-p10", true)
    call TriggerRegisterPlayerChatEvent(Aa, Player(9), "-p10", true)
    call TriggerRegisterPlayerChatEvent(Aa, Player(10), "-p10", true)
    call TriggerAddCondition(Aa, Condition(function ZJ))
    call TriggerAddAction(Aa, function xk)
    call TriggerRegisterPlayerChatEvent(Na, Player(0), "-p11", true)
    call TriggerRegisterPlayerChatEvent(Na, Player(1), "-p11", true)
    call TriggerRegisterPlayerChatEvent(Na, Player(2), "-p11", true)
    call TriggerRegisterPlayerChatEvent(Na, Player(3), "-p11", true)
    call TriggerRegisterPlayerChatEvent(Na, Player(4), "-p11", true)
    call TriggerRegisterPlayerChatEvent(Na, Player(6), "-p11", true)
    call TriggerRegisterPlayerChatEvent(Na, Player(7), "-p11", true)
    call TriggerRegisterPlayerChatEvent(Na, Player(8), "-p11", true)
    call TriggerRegisterPlayerChatEvent(Na, Player(9), "-p11", true)
    call TriggerRegisterPlayerChatEvent(Na, Player(10), "-p11", true)
    call TriggerAddCondition(Na, Condition(function ok))
    call TriggerAddAction(Na, function ak)
    call TriggerRegisterTimerEventSingle(ba, 30.)
    call TriggerAddAction(ba, function nk)
    call TriggerRegisterEnterRectSimple(Ba, BD)
    call TriggerAddAction(Ba, function Vk)
    call TriggerRegisterTimerEventSingle(ca, 5.)
    call TriggerAddAction(ca, function Ek)
    call TriggerAddAction(Ca, function Xk)
    call TriggerAddAction(da, function Ok)
    call TriggerRegisterTimerEventPeriodic(Da, 1.)
    call TriggerAddAction(Da, function Rk)
    call TriggerAddAction(fa, function Ik)
    call TriggerRegisterTimerEventSingle(Fa, 55.)
    call TriggerAddAction(Fa, function Ak)
    call TriggerAddAction(ga, function Ck)
    call TriggerAddAction(Ga, function dk)
    call TriggerAddAction(ha, function fk)
    call TriggerRegisterTimerEventSingle(Ha, .01)
    call TriggerAddAction(Ha, function Hk)
    call TriggerAddAction(ja, function kk)
    call TriggerAddAction(Ja, function Lk)
    call TriggerAddAction(ka, function Mk)
    call TriggerAddAction(Ka, function Qk)
    call TriggerRegisterUnitEvent(ma, sb, EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(ma, Condition(function sk))
    call TriggerAddAction(ma, function Sk)
    call TriggerRegisterUnitEvent(Ma, sb, EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(Ma, Condition(function tk))
    call TriggerAddAction(Ma, function Tk)
    call TriggerRegisterUnitEvent(pa, sb, EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddCondition(pa, Condition(function uk))
    call TriggerAddAction(pa, function Uk)
    call TriggerRegisterUnitEvent(Pa, wb, EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(Pa, Condition(function wk))
    call TriggerAddAction(Pa, function Wk)
    call TriggerRegisterTimerEventSingle(qa, 1920.)
    call TriggerAddAction(qa, function vK)
    call TriggerRegisterTimerEventSingle(Qa, 1920.)
    call TriggerAddAction(Qa, function iK)
    call TriggerRegisterPlayerUnitEventSimple(Sa, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Sa, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Sa, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Sa, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Sa, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Sa, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Sa, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Sa, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Sa, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Sa, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Sa, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Sa, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Sa, Condition(function aK))
    call TriggerAddAction(Sa, function EK)
    call TriggerRegisterPlayerUnitEventSimple(ta, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ta, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ta, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ta, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ta, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ta, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ta, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ta, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ta, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ta, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ta, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ta, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(ta, Condition(function XK))
    call TriggerAddAction(ta, function IK)
    call TriggerRegisterPlayerUnitEventSimple(Ta, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ta, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ta, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ta, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ta, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ta, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ta, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ta, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ta, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ta, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ta, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ta, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Ta, Condition(function AK))
    call TriggerAddAction(Ta, function cK)
    call TriggerRegisterPlayerUnitEventSimple(ua, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ua, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ua, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ua, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ua, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ua, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ua, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ua, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ua, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ua, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ua, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ua, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(ua, Condition(function CK))
    call TriggerAddAction(ua, function FK)
    call TriggerRegisterPlayerUnitEventSimple(Ua, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ua, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ua, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ua, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ua, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ua, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ua, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ua, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ua, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ua, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ua, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ua, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Ua, Condition(function gK))
    call TriggerAddAction(Ua, function HK)
    call TriggerRegisterPlayerUnitEventSimple(wa, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(wa, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(wa, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(wa, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(wa, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(wa, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(wa, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(wa, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(wa, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(wa, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(wa, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(wa, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(wa, Condition(function jK))
    call TriggerAddAction(wa, function QK)
    call TriggerRegisterPlayerUnitEventSimple(Wa, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Wa, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Wa, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Wa, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Wa, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Wa, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Wa, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Wa, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Wa, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Wa, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Wa, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Wa, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Wa, Condition(function sK))
    call TriggerAddAction(Wa, function ZK)
    call TriggerRegisterPlayerUnitEventSimple(ya, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ya, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ya, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ya, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ya, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ya, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ya, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ya, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ya, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ya, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ya, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ya, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(ya, Condition(function vl))
    call TriggerAddAction(ya, function Ol)
    call TriggerRegisterPlayerUnitEventSimple(Ya, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ya, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ya, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ya, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ya, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ya, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ya, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ya, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ya, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ya, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ya, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Ya, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Ya, Condition(function Rl))
    call TriggerAddAction(Ya, function Fl)
    call TriggerRegisterPlayerUnitEventSimple(za, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(za, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(za, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(za, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(za, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(za, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(za, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(za, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(za, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(za, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(za, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(za, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(za, Condition(function gl))
    call TriggerAddAction(za, function Ml)
    call TriggerRegisterPlayerUnitEventSimple(Za, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Za, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Za, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Za, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Za, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Za, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Za, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Za, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Za, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Za, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Za, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Za, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Za, Condition(function Pl))
    call TriggerAddAction(Za, function yl)
    call TriggerRegisterPlayerUnitEventSimple(vn, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(vn, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(vn, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(vn, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(vn, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(vn, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(vn, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(vn, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(vn, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(vn, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(vn, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(vn, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(vn, Condition(function Yl))
    call TriggerAddAction(vn, function VL)
    call TriggerRegisterPlayerUnitEventSimple(en, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(en, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(en, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(en, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(en, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(en, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(en, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(en, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(en, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(en, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(en, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(en, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(en, Condition(function EL))
    call TriggerAddAction(en, function dL)
    call TriggerRegisterPlayerUnitEventSimple(xn, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xn, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xn, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xn, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xn, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xn, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xn, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xn, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xn, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xn, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xn, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xn, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(xn, Condition(function DL))
    call TriggerAddAction(xn, function kL)
    call TriggerRegisterPlayerUnitEventSimple(on, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(on, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(on, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(on, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(on, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(on, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(on, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(on, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(on, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(on, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(on, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(on, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(on, Condition(function KL))
    call TriggerAddAction(on, function tL)
    call TriggerRegisterPlayerUnitEventSimple(rn, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rn, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rn, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rn, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rn, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rn, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rn, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rn, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rn, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rn, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rn, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rn, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(rn, Condition(function TL))
    call TriggerAddAction(rn, function ZL)
    call TriggerRegisterPlayerUnitEventSimple(in, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(in, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(in, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(in, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(in, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(in, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(in, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(in, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(in, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(in, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(in, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(in, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(in, Condition(function vm))
    call TriggerAddAction(in, function Vm)
    call TriggerRegisterPlayerUnitEventSimple(an, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(an, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(an, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(an, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(an, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(an, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(an, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(an, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(an, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(an, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(an, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(an, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(an, Condition(function Em))
    call TriggerAddAction(an, function Bm)
    call TriggerRegisterPlayerUnitEventSimple(nn, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nn, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nn, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nn, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nn, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nn, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nn, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nn, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nn, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nn, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nn, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nn, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(nn, Condition(function cm))
    call TriggerAddAction(nn, function hm)
    call TriggerRegisterPlayerUnitEventSimple(Vn, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vn, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vn, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vn, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vn, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vn, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vn, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vn, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vn, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vn, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vn, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vn, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Vn, Condition(function Hm))
    call TriggerAddAction(Vn, function Mm)
    call TriggerRegisterPlayerUnitEventSimple(En, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(En, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(En, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(En, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(En, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(En, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(En, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(En, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(En, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(En, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(En, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(En, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(En, Condition(function pm))
    call TriggerAddAction(En, function Sm)
    call TriggerRegisterPlayerUnitEventSimple(Xn, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Xn, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Xn, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Xn, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Xn, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Xn, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Xn, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Xn, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Xn, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Xn, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Xn, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Xn, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Xn, Condition(function tm))
    call TriggerAddAction(Xn, function Wm)
    call TriggerRegisterPlayerUnitEventSimple(On, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(On, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(On, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(On, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(On, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(On, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(On, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(On, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(On, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(On, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(On, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(On, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(On, Condition(function ym))
    call TriggerAddAction(On, function eM)
    call TriggerRegisterPlayerUnitEventSimple(Rn, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Rn, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Rn, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Rn, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Rn, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Rn, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Rn, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Rn, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Rn, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Rn, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Rn, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Rn, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Rn, Condition(function xM))
    call TriggerAddAction(Rn, function XM)
    call TriggerRegisterPlayerUnitEventSimple(In, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(In, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(In, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(In, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(In, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(In, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(In, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(In, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(In, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(In, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(In, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(In, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(In, Condition(function OM))
    call TriggerAddAction(In, function CM)
    call TriggerRegisterPlayerUnitEventSimple(An, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(An, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(An, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(An, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(An, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(An, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(An, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(An, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(An, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(An, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(An, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(An, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(An, Condition(function dM))
    call TriggerAddAction(An, function jM)
    call TriggerRegisterPlayerUnitEventSimple(Nn, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Nn, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Nn, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Nn, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Nn, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Nn, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Nn, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Nn, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Nn, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Nn, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Nn, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Nn, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Nn, Condition(function JM))
    call TriggerAddAction(Nn, function qM)
    call TriggerRegisterPlayerUnitEventSimple(bn, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(bn, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(bn, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(bn, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(bn, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(bn, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(bn, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(bn, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(bn, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(bn, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(bn, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(bn, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(bn, Condition(function QM))
    call TriggerAddAction(bn, function yM)
    call TriggerRegisterPlayerUnitEventSimple(Bn, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Bn, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Bn, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Bn, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Bn, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Bn, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Bn, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Bn, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Bn, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Bn, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Bn, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Bn, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Bn, Condition(function YM))
    call TriggerAddAction(Bn, function ap)
    call TriggerRegisterPlayerUnitEventSimple(cn, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(cn, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(cn, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(cn, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(cn, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(cn, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(cn, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(cn, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(cn, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(cn, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(cn, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(cn, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(cn, Condition(function np))
    call TriggerAddAction(cn, function Xp)
    call TriggerRegisterPlayerUnitEventSimple(Cn, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Cn, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Cn, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Cn, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Cn, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Cn, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Cn, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Cn, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Cn, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Cn, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Cn, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Cn, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Cn, Condition(function Op))
    call TriggerAddAction(Cn, function Ap)
    call TriggerRegisterPlayerUnitEventSimple(dn, Player(0), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerRegisterPlayerUnitEventSimple(dn, Player(1), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerRegisterPlayerUnitEventSimple(dn, Player(2), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerRegisterPlayerUnitEventSimple(dn, Player(3), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerRegisterPlayerUnitEventSimple(dn, Player(4), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerRegisterPlayerUnitEventSimple(dn, Player(6), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerRegisterPlayerUnitEventSimple(dn, Player(7), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerRegisterPlayerUnitEventSimple(dn, Player(8), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerRegisterPlayerUnitEventSimple(dn, Player(9), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerRegisterPlayerUnitEventSimple(dn, Player(10), EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(dn, Condition(function Np))
    call TriggerAddAction(dn, function bp)
    call TriggerRegisterAnyUnitEventBJ(Dn, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(Dn, Condition(function Dp))
    call TriggerAddAction(Dn, function fp)
    call TriggerRegisterPlayerUnitEventSimple(fn, Player(0), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(fn, Player(1), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(fn, Player(2), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(fn, Player(3), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(fn, Player(4), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(fn, Player(6), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(fn, Player(7), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(fn, Player(8), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(fn, Player(9), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(fn, Player(10), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(fn, Condition(function Fp))
    call TriggerAddAction(fn, function gp)
    call TriggerRegisterPlayerUnitEventSimple(Fn, Player(0), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Fn, Player(1), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Fn, Player(2), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Fn, Player(3), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Fn, Player(4), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Fn, Player(6), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Fn, Player(7), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Fn, Player(8), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Fn, Player(9), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Fn, Player(10), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(Fn, Condition(function Gp))
    call TriggerAddAction(Fn, function jp)
    call TriggerRegisterPlayerUnitEventSimple(gn, Player(0), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gn, Player(1), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gn, Player(2), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gn, Player(3), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gn, Player(4), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gn, Player(6), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gn, Player(7), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gn, Player(8), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gn, Player(9), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gn, Player(10), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(gn, Condition(function Kp))
    call TriggerAddAction(gn, function mp)
    call TriggerRegisterPlayerUnitEventSimple(Gn, Player(0), EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerRegisterPlayerUnitEventSimple(Gn, Player(1), EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerRegisterPlayerUnitEventSimple(Gn, Player(2), EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerRegisterPlayerUnitEventSimple(Gn, Player(3), EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerRegisterPlayerUnitEventSimple(Gn, Player(4), EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerRegisterPlayerUnitEventSimple(Gn, Player(6), EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerRegisterPlayerUnitEventSimple(Gn, Player(7), EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerRegisterPlayerUnitEventSimple(Gn, Player(8), EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerRegisterPlayerUnitEventSimple(Gn, Player(9), EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerRegisterPlayerUnitEventSimple(Gn, Player(10), EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(Gn, Condition(function Mp))
    call TriggerAddAction(Gn, function pp)
    call TriggerRegisterAnyUnitEventBJ(Hn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(Hn, Condition(function Pp))
    call TriggerAddAction(Hn, function qp)
    call TriggerRegisterAnyUnitEventBJ(jn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(jn, Condition(function Qp))
    call TriggerAddAction(jn, function Sp)
    call TriggerRegisterAnyUnitEventBJ(Jn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(Jn, Condition(function tp))
    call TriggerAddAction(Jn, function Tp)
    call TriggerRegisterAnyUnitEventBJ(kn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(kn, Condition(function Up))
    call TriggerAddAction(kn, function Wp)
    call TriggerRegisterPlayerUnitEventSimple(Kn, Player(0), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Kn, Player(1), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Kn, Player(2), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Kn, Player(3), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Kn, Player(4), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Kn, Player(6), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Kn, Player(7), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Kn, Player(8), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Kn, Player(9), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(Kn, Player(10), EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(Kn, Condition(function oP))
    call TriggerAddAction(Kn, function rP)
    call TriggerAddAction(ln, function VP)
    call TriggerAddAction(Ln, function EP)
    call TriggerRegisterAnyUnitEventBJ(mn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(mn, Condition(function XP))
    call TriggerAddAction(mn, function bP)
    call TriggerRegisterAnyUnitEventBJ(Mn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(Mn, Condition(function GP))
    call TriggerAddAction(Mn, function HP)
    call TriggerRegisterAnyUnitEventBJ(pn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(pn, Condition(function kP))
    call TriggerAddAction(pn, function lP)
    call TriggerRegisterAnyUnitEventBJ(Pn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(Pn, Condition(function sP))
    call TriggerAddAction(Pn, function WP)
    call TriggerRegisterAnyUnitEventBJ(qn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(qn, Condition(function YP))
    call TriggerAddAction(qn, function oq)
    call TriggerRegisterAnyUnitEventBJ(Qn, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    call TriggerAddCondition(Qn, Condition(function rq))
    call TriggerAddAction(Qn, function iq)
    call TriggerRegisterAnyUnitEventBJ(sn, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    call TriggerAddCondition(sn, Condition(function aq))
    call TriggerAddAction(sn, function nq)
    call TriggerRegisterEnterRectSimple(Sn, bj_mapInitialPlayableArea)
    call TriggerAddCondition(Sn, Condition(function Vq))
    call TriggerAddAction(Sn, function Oq)
    call TriggerRegisterAnyUnitEventBJ(tn, EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(tn, Condition(function Rq))
    call TriggerAddAction(tn, function Iq)
    call TriggerRegisterAnyUnitEventBJ(Tn, EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(Tn, Condition(function Bq))
    call TriggerAddAction(Tn, function cq)
    call TriggerRegisterEnterRectSimple(un, bj_mapInitialPlayableArea)
    call TriggerAddCondition(un, Condition(function gq))
    call TriggerAddAction(un, function Hq)
    call TriggerRegisterAnyUnitEventBJ(wn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(wn, Condition(function jq))
    call TriggerAddAction(wn, function Kq)
    call DisableTrigger(Wn)
    call TriggerRegisterTimerEventPeriodic(Wn, .03)
    call TriggerAddAction(Wn, function lq)
    call TriggerRegisterAnyUnitEventBJ(yn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(yn, Condition(function Lq))
    call TriggerAddAction(yn, function mq)
    call TriggerRegisterAnyUnitEventBJ(Yn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(Yn, Condition(function Qq))
    call TriggerAddAction(Yn, function sq)
    call TriggerRegisterAnyUnitEventBJ(zn, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(zn, Condition(function tq))
    call TriggerAddAction(zn, function yq)
    call TriggerRegisterAnyUnitEventBJ(Zn, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(Zn, Condition(function zq))
    call TriggerAddAction(Zn, function rQ)
    call TriggerAddAction(vV, function iQ)
    call TriggerRegisterAnyUnitEventBJ(eV, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddAction(eV, function aQ)
    call TriggerRegisterAnyUnitEventBJ(xV, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(xV, Condition(function nQ))
    call TriggerAddAction(xV, function EQ)
    call TriggerRegisterAnyUnitEventBJ(oV, EVENT_PLAYER_UNIT_USE_ITEM)
    call TriggerAddCondition(oV, Condition(function XQ))
    call TriggerAddAction(oV, function OQ)
    call TriggerRegisterAnyUnitEventBJ(rV, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddAction(rV, function RQ)
    call TriggerRegisterAnyUnitEventBJ(iV, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(iV, Condition(function IQ))
    call TriggerAddAction(iV, function NQ)
    call TriggerRegisterAnyUnitEventBJ(aV, EVENT_PLAYER_UNIT_USE_ITEM)
    call TriggerAddCondition(aV, Condition(function bQ))
    call TriggerAddAction(aV, function BQ)
    call TriggerRegisterAnyUnitEventBJ(nV, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddAction(nV, function cQ)
    call TriggerRegisterAnyUnitEventBJ(VV, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(VV, Condition(function CQ))
    call TriggerAddAction(VV, function DQ)
    call TriggerRegisterAnyUnitEventBJ(EV, EVENT_PLAYER_UNIT_USE_ITEM)
    call TriggerAddCondition(EV, Condition(function fQ))
    call TriggerAddAction(EV, function FQ)
    call TriggerRegisterAnyUnitEventBJ(XV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(XV, Condition(function gQ))
    call TriggerAddAction(XV, function sQ)
    call TriggerRegisterAnyUnitEventBJ(RV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(RV, Condition(function SQ))
    call TriggerAddAction(RV, function uQ)
    call TriggerRegisterAnyUnitEventBJ(NV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(NV, Condition(function UQ))
    call TriggerAddAction(NV, function yQ)
    call TriggerRegisterAnyUnitEventBJ(bV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(bV, Condition(function YQ))
    call TriggerAddAction(bV, function ZQ)
    call TriggerRegisterAnyUnitEventBJ(BV, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(BV, Condition(function es))
    call TriggerAddAction(BV, function ns)
    call TriggerAddAction(cV, function Vs)
    call TriggerRegisterAnyUnitEventBJ(CV, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddAction(CV, function Es)
    call TriggerRegisterAnyUnitEventBJ(dV, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(dV, Condition(function Xs))
    call TriggerAddAction(dV, function Rs)
    call TriggerRegisterAnyUnitEventBJ(DV, EVENT_PLAYER_UNIT_USE_ITEM)
    call TriggerAddCondition(DV, Condition(function Is))
    call TriggerAddAction(DV, function As)
    call TriggerRegisterAnyUnitEventBJ(fV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(fV, Condition(function Ns))
    call TriggerAddAction(fV, function cs)
    call TriggerRegisterAnyUnitEventBJ(HV, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(HV, Condition(function Cs))
    call TriggerAddAction(HV, function Ds)
    call TriggerRegisterAnyUnitEventBJ(jV, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(jV, Condition(function fs))
    call TriggerAddAction(jV, function Fs)
    call TriggerRegisterAnyUnitEventBJ(JV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(JV, Condition(function gs))
    call TriggerAddAction(JV, function Ks)
    call TriggerRegisterAnyUnitEventBJ(kV, EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(kV, Condition(function ls))
    call TriggerAddAction(kV, function ms)
    call TriggerRegisterAnyUnitEventBJ(KV, EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(KV, Condition(function Ms))
    call TriggerAddAction(KV, function ps)
    call TriggerRegisterAnyUnitEventBJ(lV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(lV, Condition(function Ps))
    call TriggerAddAction(lV, function qs)
    call TriggerRegisterAnyUnitEventBJ(LV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(LV, Condition(function Qs))
    call TriggerAddAction(LV, function ss)
    call TriggerRegisterAnyUnitEventBJ(mV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(mV, Condition(function Ss))
    call TriggerAddAction(mV, function ts)
    call TriggerRegisterAnyUnitEventBJ(MV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(MV, Condition(function Ts))
    call TriggerAddAction(MV, function us)
    call TriggerRegisterAnyUnitEventBJ(pV, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(pV, Condition(function ws))
    call TriggerAddAction(pV, function ys)
    call TriggerRegisterAnyUnitEventBJ(PV, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(PV, Condition(function zs))
    call TriggerAddAction(PV, function vS)
    call TriggerRegisterAnyUnitEventBJ(qV, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(qV, Condition(function xS))
    call TriggerAddAction(qV, function rS)
    call TriggerRegisterAnyUnitEventBJ(QV, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(QV, Condition(function aS))
    call TriggerAddAction(QV, function VS)
    call TriggerRegisterAnyUnitEventBJ(sV, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddCondition(sV, Condition(function ES))
    call TriggerAddAction(sV, function XS)
    call TriggerRegisterAnyUnitEventBJ(SV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(SV, Condition(function OS))
    call TriggerAddAction(SV, function RS)
    call TriggerRegisterAnyUnitEventBJ(tV, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    call TriggerAddCondition(tV, Condition(function NS))
    call TriggerAddAction(tV, function bS)
    call TriggerRegisterAnyUnitEventBJ(TV, EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(TV, Condition(function BS))
    call TriggerAddAction(TV, function cS)
    call TriggerRegisterAnyUnitEventBJ(uV, EVENT_PLAYER_UNIT_SPELL_FINISH)
    call TriggerAddCondition(uV, Condition(function CS))
    call TriggerAddAction(uV, function dS)
    call TriggerRegisterTimerEventPeriodic(UV, 1.)
    call TriggerAddCondition(UV, Condition(function DS))
    call TriggerAddAction(UV, function FS)
    call TriggerRegisterAnyUnitEventBJ(wV, EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterAnyUnitEventBJ(wV, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterAnyUnitEventBJ(wV, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterAnyUnitEventBJ(wV, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(wV, Condition(function gS))
    call TriggerAddAction(wV, function GS)
    call TriggerRegisterAnyUnitEventBJ(WV, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddCondition(WV, Condition(function hS))
    call TriggerAddAction(WV, function HS)
    call TriggerRegisterAnyUnitEventBJ(yV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(yV, Condition(function jS))
    call TriggerAddAction(yV, function kS)
    call TriggerRegisterAnyUnitEventBJ(YV, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddCondition(YV, Condition(function KS))
    call TriggerAddAction(YV, function lS)
    call TriggerRegisterAnyUnitEventBJ(zV, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(zV, Condition(function LS))
    call TriggerAddAction(zV, function mS)
    call TriggerRegisterAnyUnitEventBJ(ZV, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddCondition(ZV, Condition(function MS))
    call TriggerAddAction(ZV, function pS)
    call TriggerRegisterAnyUnitEventBJ(vE, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(vE, Condition(function PS))
    call TriggerAddAction(vE, function tS)
    call TriggerRegisterAnyUnitEventBJ(eE, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddAction(eE, function TS)
    call TriggerRegisterAnyUnitEventBJ(xE, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(xE, Condition(function uS))
    call TriggerAddAction(xE, function wS)
    call TriggerRegisterAnyUnitEventBJ(oE, EVENT_PLAYER_UNIT_USE_ITEM)
    call TriggerAddCondition(oE, Condition(function WS))
    call TriggerAddAction(oE, function yS)
    call TriggerRegisterAnyUnitEventBJ(rE, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddAction(rE, function YS)
    call TriggerRegisterAnyUnitEventBJ(iE, EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(iE, Condition(function zS))
    call TriggerAddAction(iE, function ZS)
    call TriggerRegisterAnyUnitEventBJ(aE, EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(aE, Condition(function vt))
    call TriggerAddAction(aE, function et)
    call TriggerRegisterAnyUnitEventBJ(nE, EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(nE, Condition(function xxxt))
    call TriggerAddAction(nE, function ot)
    call TriggerRegisterAnyUnitEventBJ(VE, EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(VE, Condition(function rt))
    call TriggerAddAction(VE, function ittt)
    call TriggerRegisterAnyUnitEventBJ(EE, EVENT_PLAYER_UNIT_USE_ITEM)
    call TriggerAddCondition(EE, Condition(function at))
    call TriggerAddAction(EE, function nt)
    call TriggerRegisterAnyUnitEventBJ(XE, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddCondition(XE, Condition(function Vt))
    call TriggerAddAction(XE, function Xt)
    call TriggerRegisterAnyUnitEventBJ(OE, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterAnyUnitEventBJ(OE, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterAnyUnitEventBJ(OE, EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerRegisterAnyUnitEventBJ(OE, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(OE, Condition(function Ot))
    call TriggerAddAction(OE, function Rt)
    call TriggerRegisterAnyUnitEventBJ(RE, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(RE, Condition(function It))
    call TriggerAddAction(RE, function At)
    call TriggerRegisterAnyUnitEventBJ(IE, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(IE, Condition(function Nt))
    call TriggerAddAction(IE, function bt)
    call TriggerRegisterAnyUnitEventBJ(AE, EVENT_PLAYER_UNIT_SPELL_ENDCAST)
    call TriggerAddCondition(AE, Condition(function Bt))
    call TriggerAddAction(AE, function ct)
    call TriggerRegisterAnyUnitEventBJ(NE, EVENT_PLAYER_UNIT_SPELL_ENDCAST)
    call TriggerAddCondition(NE, Condition(function Ct))
    call TriggerAddAction(NE, function dt)
    call TriggerRegisterEnterRectSimple(bE, bj_mapInitialPlayableArea)
    call TriggerAddCondition(bE, Condition(function Dt))
    call TriggerAddAction(bE, function ft)
    call TriggerRegisterAnyUnitEventBJ(BE, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerRegisterAnyUnitEventBJ(BE, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(BE, Condition(function gt))
    call TriggerAddAction(BE, function hhht)
    call TriggerRegisterAnyUnitEventBJ(cE, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(cE, Condition(function Ht))
    call TriggerAddAction(cE, function jt)
    call TriggerRegisterAnyUnitEventBJ(CE, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(CE, Condition(function Jt))
    call TriggerAddAction(CE, function mt)
    call TriggerRegisterAnyUnitEventBJ(dE, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(dE, Condition(function Mt))
    call TriggerAddAction(dE, function Pt)
    call TriggerRegisterAnyUnitEventBJ(DE, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(DE, Condition(function Qt))
    call TriggerAddAction(DE, function tttt)
    call TriggerRegisterAnyUnitEventBJ(fE, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(fE, Condition(function Tt))
    call TriggerAddAction(fE, function Yt)
    call TriggerRegisterAnyUnitEventBJ(FE, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(FE, Condition(function zt))
    call TriggerAddAction(FE, function VT)
    call TriggerAddAction(gE, function ET)
    call TriggerRegisterTimerEventPeriodic(GE, 780.)
    call TriggerAddAction(GE, function XT)
    call TriggerRegisterAnyUnitEventBJ(hE, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(hE, Condition(function OT))
    call TriggerAddAction(hE, function RT)
    call TriggerRegisterAnyUnitEventBJ(HE, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(HE, Condition(function IT))
    call TriggerAddAction(HE, function AT)
    call TriggerRegisterAnyUnitEventBJ(jE, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(jE, Condition(function NT))
    call TriggerAddAction(jE, function bT)
    call TriggerRegisterAnyUnitEventBJ(JE, EVENT_PLAYER_UNIT_SPELL_ENDCAST)
    call TriggerAddAction(JE, function BT)
    call TriggerRegisterAnyUnitEventBJ(kE, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddCondition(kE, Condition(function cT))
    call TriggerAddAction(kE, function CT)
    call DisableTrigger(KE)
    call TriggerRegisterPlayerUnitEventSimple(KE, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(KE, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(KE, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(KE, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(KE, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(KE, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(KE, Condition(function dT))
    call TriggerAddAction(KE, function DT)
    call DisableTrigger(lE)
    call TriggerRegisterPlayerUnitEventSimple(lE, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(lE, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(lE, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(lE, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(lE, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(lE, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(lE, Condition(function fT))
    call TriggerAddAction(lE, function FT)
    call TriggerRegisterPlayerUnitEventSimple(LE, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(LE, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(LE, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(LE, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(LE, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(LE, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(LE, Condition(function gT))
    call TriggerAddAction(LE, function HT)
    call TriggerRegisterPlayerUnitEventSimple(mE, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(mE, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(mE, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(mE, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(mE, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(mE, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(mE, Condition(function jT))
    call TriggerAddAction(mE, function KT)
    call TriggerAddAction(ME, function lT)
    call TriggerAddAction(pE, function LT)
    call TriggerRegisterTimerEventSingle(PE, 210.)
    call TriggerAddAction(PE, function mT)
    call TriggerRegisterTimerEventSingle(qE, 610.)
    call TriggerAddAction(qE, function MT)
    call TriggerRegisterTimerEventSingle(QE, 1610.)
    call TriggerAddAction(QE, function pT)
    call TriggerRegisterTimerEventSingle(sE, 2010.)
    call TriggerAddAction(sE, function PT)
    call TriggerRegisterTimerEventSingle(SE, 2510.)
    call TriggerAddAction(SE, function qT)
    call TriggerRegisterTimerEventSingle(tE, 15.)
    call TriggerAddAction(tE, function QT)
    call TriggerRegisterTimerEventSingle(TE, 70.)
    call TriggerAddAction(TE, function sT)
    call TriggerRegisterTimerEventSingle(uE, 120.)
    call TriggerAddAction(uE, function ST)
    call TriggerRegisterTimerEventSingle(UE, 350.)
    call TriggerAddAction(UE, function tT)
    call TriggerRegisterTimerEventSingle(wE, 500.)
    call TriggerAddAction(wE, function TT)
    call TriggerRegisterTimerEventSingle(WE, 700.)
    call TriggerAddAction(WE, function uT)
    call TriggerRegisterTimerEventSingle(yE, 900.)
    call TriggerAddAction(yE, function UT)
    call TriggerRegisterTimerEventSingle(YE, 1100.)
    call TriggerAddAction(YE, function wT)
    call TriggerRegisterTimerEventSingle(zE, 1300.)
    call TriggerAddAction(zE, function WT)
    call TriggerRegisterTimerEventSingle(ZE, 15.)
    call TriggerAddAction(ZE, function yT)
    call TriggerRegisterTimerEventSingle(vX, 70.)
    call TriggerAddAction(vX, function YT)
    call TriggerRegisterTimerEventSingle(eX, 120.)
    call TriggerAddAction(eX, function zT)
    call TriggerRegisterTimerEventSingle(xX, 350.)
    call TriggerAddAction(xX, function ZT)
    call TriggerRegisterTimerEventSingle(oX, 500.)
    call TriggerAddAction(oX, function vu)
    call TriggerRegisterTimerEventSingle(rX, 700.)
    call TriggerAddAction(rX, function eu)
    call TriggerRegisterTimerEventSingle(iX, 900.)
    call TriggerAddAction(iX, function xu)
    call TriggerRegisterTimerEventSingle(aX, 1100.)
    call TriggerAddAction(aX, function ou)
    call TriggerRegisterTimerEventSingle(nX, 1300.)
    call TriggerAddAction(nX, function ru)
    call TriggerRegisterTimerEventSingle(VX, 1500.)
    call TriggerAddAction(VX, function iu)
    call TriggerRegisterTimerEventSingle(EX, 1800.)
    call TriggerAddAction(EX, function au)
    call TriggerRegisterTimerEventSingle(XX, 1805.)
    call TriggerAddAction(XX, function nu)
    call TriggerRegisterTimerEventSingle(OX, 2150.)
    call TriggerAddAction(OX, function Ru)
    call TriggerRegisterTimerEventSingle(RX, 2300.)
    call TriggerAddAction(RX, function Iu)
    call TriggerRegisterTimerEventSingle(IX, 2500.)
    call TriggerAddAction(IX, function Au)
    call TriggerRegisterTimerEventSingle(AX, 2700.)
    call TriggerAddAction(AX, function Nu)
    call TriggerRegisterTimerEventSingle(NX, 3000.)
    call TriggerAddAction(NX, function bu)
    call TriggerRegisterTimerEventSingle(bX, 2300.)
    call TriggerAddAction(bX, function Bu)
    call TriggerRegisterTimerEventSingle(BX, 2500.)
    call TriggerAddAction(BX, function cu)
    call TriggerRegisterTimerEventSingle(cX, 2700.)
    call TriggerAddAction(cX, function Cu)
    call TriggerRegisterTimerEventSingle(CX, 3000.)
    call TriggerAddAction(CX, function du)
    call TriggerRegisterTimerEventSingle(dX, 2600.)
    call TriggerAddAction(dX, function Du)
    call TriggerRegisterAnyUnitEventBJ(fX, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(fX, Condition(function fu))
    call TriggerAddAction(fX, function Fu)
    call TriggerRegisterTimerEventSingle(FX, 200.)
    call TriggerAddAction(FX, function gu)
    call TriggerRegisterTimerEventSingle(gX, 400.)
    call TriggerAddAction(gX, function Gu)
    call TriggerRegisterTimerEventSingle(GX, 200.)
    call TriggerAddAction(GX, function hu)
    call TriggerRegisterTimerEventSingle(hX, 400.)
    call TriggerAddAction(hX, function Hu)
    call TriggerRegisterAnyUnitEventBJ(HX, EVENT_PLAYER_UNIT_SELL_ITEM)
    call TriggerAddCondition(HX, Condition(function ju))
    call TriggerAddAction(HX, function Ju)
    call TriggerRegisterAnyUnitEventBJ(jX, EVENT_PLAYER_UNIT_SELL_ITEM)
    call TriggerAddCondition(jX, Condition(function ku))
    call TriggerAddAction(jX, function Ku)
    call TriggerRegisterAnyUnitEventBJ(JX, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(JX, Condition(function lu))
    call TriggerAddAction(JX, function Lu)
    call TriggerAddAction(kX, function mu)
    call TriggerRegisterTimerEventSingle(WX, 2250.)
    call TriggerAddAction(WX, function Mu)
    call TriggerRegisterTimerEventSingle(yX, 1923.)
    call TriggerAddAction(yX, function pu)
    call TriggerRegisterTimerEventSingle(YX, 1910.)
    call TriggerAddAction(YX, function Pu)
    call TriggerRegisterTimerEventSingle(zX, 1800.)
    call TriggerAddAction(zX, function qu)
    call TriggerRegisterTimerEventSingle(ZX, 1500.)
    call TriggerAddAction(ZX, function Qu)
    call TriggerRegisterTimerEventSingle(vO, 1200.)
    call TriggerAddAction(vO, function su)
    call TriggerRegisterTimerEventSingle(eO, 880.)
    call TriggerAddAction(eO, function tu)
    call TriggerRegisterTimerEventSingle(xO, 860.)
    call TriggerAddAction(xO, function uu)
    call TriggerRegisterTimerEventPeriodic(oO, 20.)
    call TriggerAddCondition(oO, Condition(function Uu))
    call TriggerAddAction(oO, function Zu)
    call TriggerRegisterPlayerUnitEventSimple(rO, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rO, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rO, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rO, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rO, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(rO, Condition(function vU))
    call TriggerAddAction(rO, function eU)
    call TriggerRegisterPlayerUnitEventSimple(iO, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(iO, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(iO, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(iO, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(iO, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(iO, Condition(function xU))
    call TriggerAddAction(iO, function oU)
    call TriggerRegisterPlayerUnitEventSimple(aO, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(aO, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(aO, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(aO, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(aO, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(aO, Condition(function rU))
    call TriggerAddAction(aO, function iU)
    call TriggerRegisterPlayerUnitEventSimple(nO, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nO, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nO, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nO, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nO, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(nO, Condition(function aU))
    call TriggerAddAction(nO, function nU)
    call TriggerRegisterPlayerUnitEventSimple(VO, Player(11), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(VO, Condition(function VU))
    call TriggerAddAction(VO, function EU)
    call TriggerRegisterPlayerUnitEventSimple(EO, Player(5), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(EO, Condition(function XU))
    call TriggerAddAction(EO, function OU)
    call TriggerRegisterTimerEventSingle(XO, 855.)
    call TriggerAddAction(XO, function IU)
    call TriggerRegisterTimerEventSingle(OO, 1725.)
    call TriggerAddAction(OO, function AU)
    call TriggerRegisterTimerEventSingle(RO, 1755.)
    call TriggerAddAction(RO, function bU)
    call TriggerRegisterTimerEventSingle(IO, 2355.)
    call TriggerAddAction(IO, function BU)
    call TriggerRegisterPlayerStateEvent(AO, Player(0), PLAYER_STATE_RESOURCE_GOLD, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(AO, Player(1), PLAYER_STATE_RESOURCE_GOLD, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(AO, Player(2), PLAYER_STATE_RESOURCE_GOLD, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(AO, Player(3), PLAYER_STATE_RESOURCE_GOLD, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(AO, Player(4), PLAYER_STATE_RESOURCE_GOLD, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(AO, Player(6), PLAYER_STATE_RESOURCE_GOLD, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(AO, Player(7), PLAYER_STATE_RESOURCE_GOLD, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(AO, Player(8), PLAYER_STATE_RESOURCE_GOLD, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(AO, Player(9), PLAYER_STATE_RESOURCE_GOLD, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(AO, Player(10), PLAYER_STATE_RESOURCE_GOLD, GREATER_THAN, .0)
    call TriggerAddCondition(AO, Condition(function dU))
    call TriggerAddAction(AO, function fU)
    call TriggerRegisterPlayerStateEvent(NO, Player(0), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(NO, Player(1), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(NO, Player(2), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(NO, Player(3), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(NO, Player(4), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(NO, Player(6), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(NO, Player(7), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(NO, Player(8), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(NO, Player(9), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN, .0)
    call TriggerRegisterPlayerStateEvent(NO, Player(10), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN, .0)
    call TriggerAddCondition(NO, Condition(function GU))
    call TriggerAddAction(NO, function HU)
    call TriggerRegisterPlayerUnitEventSimple(bO, Player(5), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(bO, Condition(function jU))
    call TriggerAddAction(bO, function JU)
    call TriggerRegisterPlayerUnitEventSimple(BO, Player(11), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(BO, Condition(function kU))
    call TriggerAddAction(BO, function KU)
    call TriggerRegisterPlayerUnitEventSimple(cO, Player(0), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(cO, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(cO, Player(2), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(cO, Player(3), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(cO, Player(4), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(cO, Player(6), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(cO, Player(7), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(cO, Player(8), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(cO, Player(9), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(cO, Player(10), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(cO, Condition(function lU))
    call TriggerAddAction(cO, function mU)
    call DisableTrigger(CO)
    call TriggerRegisterPlayerUnitEventSimple(CO, Player(0), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(CO, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(CO, Player(2), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(CO, Player(3), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(CO, Player(4), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(CO, Player(6), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(CO, Player(7), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(CO, Player(8), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(CO, Player(9), EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(CO, Player(10), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(CO, Condition(function MU))
    call TriggerAddAction(CO, function PU)
    call TriggerRegisterTimerEventPeriodic(dO, 5.)
    call TriggerAddAction(dO, function QU)
    call TriggerAddCondition(DO, Condition(function sU))
    call TriggerAddAction(DO, function xw)
    call TriggerRegisterUnitEvent(fO, lb, EVENT_UNIT_DEATH)
    call TriggerAddAction(fO, function iw)
    call TriggerRegisterUnitEvent(FO, hb, EVENT_UNIT_DEATH)
    call TriggerAddAction(FO, function Vw)
    call TriggerRegisterUnitEvent(gO, Hb, EVENT_UNIT_DEATH)
    call TriggerAddAction(gO, function Ew)
    call TriggerRegisterUnitEvent(GO, jb, EVENT_UNIT_DEATH)
    call TriggerAddAction(GO, function Xw)
    call TriggerRegisterUnitEvent(hO, Lb, EVENT_UNIT_DEATH)
    call TriggerAddAction(hO, function Ow)
    call TriggerRegisterUnitEvent(HO, mb, EVENT_UNIT_DEATH)
    call TriggerAddAction(HO, function Rw)
    call TriggerRegisterAnyUnitEventBJ(jO, EVENT_PLAYER_UNIT_SELL_ITEM)
    call TriggerAddCondition(jO, Condition(function Iw))
    call TriggerAddAction(jO, function Aw)
    call TriggerRegisterAnyUnitEventBJ(JO, EVENT_PLAYER_UNIT_SELL_ITEM)
    call TriggerAddCondition(JO, Condition(function Nw))
    call TriggerAddAction(JO, function bw)
    call TriggerRegisterAnyUnitEventBJ(kO, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(kO, Condition(function Bw))
    call TriggerAddAction(kO, function cw)
    call TriggerRegisterAnyUnitEventBJ(KO, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(KO, Condition(function Cw))
    call TriggerAddAction(KO, function dw)
    call TriggerRegisterAnyUnitEventBJ(lO, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(lO, Condition(function Dw))
    call TriggerAddAction(lO, function fw)
    call TriggerRegisterAnyUnitEventBJ(LO, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(LO, Condition(function Fw))
    call TriggerAddAction(LO, function gw)
    call TriggerRegisterAnyUnitEventBJ(mO, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(mO, Condition(function Gw))
    call TriggerAddAction(mO, function hw)
    call TriggerRegisterAnyUnitEventBJ(MO, EVENT_PLAYER_UNIT_SELL_ITEM)
    call TriggerAddCondition(MO, Condition(function Hw))
    call TriggerAddAction(MO, function jw)
    call TriggerRegisterAnyUnitEventBJ(pO, EVENT_PLAYER_UNIT_SELL_ITEM)
    call TriggerAddCondition(pO, Condition(function Jw))
    call TriggerAddAction(pO, function kw)
    call TriggerRegisterAnyUnitEventBJ(PO, EVENT_PLAYER_UNIT_SELL_ITEM)
    call TriggerAddCondition(PO, Condition(function Kw))
    call TriggerAddAction(PO, function lw)
    call TriggerRegisterAnyUnitEventBJ(qO, EVENT_PLAYER_UNIT_SELL_ITEM)
    call TriggerAddCondition(qO, Condition(function Lw))
    call TriggerAddAction(qO, function mw)
    call TriggerRegisterPlayerUnitEventSimple(QO, Player(0), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(QO, Condition(function Mw))
    call TriggerAddAction(QO, function Pw)
    call TriggerRegisterPlayerUnitEventSimple(sO, Player(1), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(sO, Condition(function qw))
    call TriggerAddAction(sO, function sw)
    call TriggerRegisterPlayerUnitEventSimple(SO, Player(2), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(SO, Condition(function Sw))
    call TriggerAddAction(SO, function Tw)
    call TriggerRegisterPlayerUnitEventSimple(tO, Player(3), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(tO, Condition(function uw))
    call TriggerAddAction(tO, function ww)
    call TriggerRegisterPlayerUnitEventSimple(TO, Player(4), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(TO, Condition(function Ww))
    call TriggerAddAction(TO, function Yw)
    call TriggerRegisterPlayerUnitEventSimple(uO, Player(6), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(uO, Condition(function zw))
    call TriggerAddAction(uO, function vW)
    call TriggerRegisterPlayerUnitEventSimple(UO, Player(7), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(UO, Condition(function eW))
    call TriggerAddAction(UO, function oW)
    call TriggerRegisterPlayerUnitEventSimple(wO, Player(8), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(wO, Condition(function rW))
    call TriggerAddAction(wO, function aW)
    call TriggerRegisterPlayerUnitEventSimple(WO, Player(9), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(WO, Condition(function nW))
    call TriggerAddAction(WO, function EW)
    call TriggerRegisterPlayerUnitEventSimple(yO, Player(10), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(yO, Condition(function XW))
    call TriggerAddAction(yO, function RW)
    call TriggerRegisterTimerExpireEvent(YO, ee)
    call TriggerAddAction(YO, function IW)
    call TriggerRegisterTimerExpireEvent(zO, xe)
    call TriggerAddAction(zO, function AW)
    call TriggerRegisterTimerExpireEvent(ZO, oe)
    call TriggerAddAction(ZO, function NW)
    call TriggerRegisterTimerExpireEvent(vR, re)
    call TriggerAddAction(vR, function bW)
    call TriggerRegisterTimerExpireEvent(eR, ie)
    call TriggerAddAction(eR, function BW)
    call TriggerRegisterTimerExpireEvent(xR, ae)
    call TriggerAddAction(xR, function cW)
    call TriggerRegisterTimerExpireEvent(oR, ne)
    call TriggerAddAction(oR, function CW)
    call TriggerRegisterTimerExpireEvent(rR, Ve)
    call TriggerAddAction(rR, function dW)
    call TriggerRegisterTimerExpireEvent(iR, Ee)
    call TriggerAddAction(iR, function DW)
    call TriggerRegisterTimerExpireEvent(aR, Xe)
    call TriggerAddAction(aR, function fW)
    call TriggerRegisterEnterRectSimple(PI, lC)
    call TriggerAddCondition(PI, Condition(function FW))
    call TriggerAddAction(PI, function gW)
    call TriggerRegisterTimerEventSingle(qI, 1.)
    call TriggerAddAction(qI, function GW)
    call TriggerAddAction(QI, function jW)
    call TriggerRegisterEnterRectSimple(sI, Fd)
    call TriggerAddCondition(sI, Condition(function JW))
    call TriggerAddAction(sI, function kW)
    call TriggerRegisterTimerEventSingle(SI, 1.)
    call TriggerAddAction(SI, function KW)
    call TriggerAddAction(tI, function mW)
    call TriggerRegisterEnterRectSimple(TI, fC)
    call TriggerAddCondition(TI, Condition(function MW))
    call TriggerAddAction(TI, function pW)
    call TriggerRegisterEnterRectSimple(uI, FC)
    call TriggerAddCondition(uI, Condition(function PW))
    call TriggerAddAction(uI, function qW)
    call TriggerRegisterEnterRectSimple(UI, gC)
    call TriggerRegisterEnterRectSimple(UI, GC)
    call TriggerAddCondition(UI, Condition(function SW))
    call TriggerAddAction(UI, function tW)
    call TriggerRegisterEnterRectSimple(wI, hC)
    call TriggerAddCondition(wI, Condition(function TW))
    call TriggerAddAction(wI, function uW)
    call TriggerRegisterEnterRectSimple(WI, HC)
    call TriggerAddCondition(WI, Condition(function UW))
    call TriggerAddAction(WI, function wW)
    call TriggerRegisterEnterRectSimple(yI, jC)
    call TriggerAddCondition(yI, Condition(function WW))
    call TriggerAddAction(yI, function yW)
    call TriggerRegisterEnterRectSimple(YI, JC)
    call TriggerAddCondition(YI, Condition(function YW))
    call TriggerAddAction(YI, function zW)
    call TriggerRegisterEnterRectSimple(zI, kC)
    call TriggerAddCondition(zI, Condition(function ZW))
    call TriggerAddAction(zI, function vy)
    call TriggerRegisterEnterRectSimple(ZI, KC)
    call TriggerAddCondition(ZI, Condition(function ey))
    call TriggerAddAction(ZI, function xy)
    call TriggerRegisterEnterRectSimple(vA, LC)
    call TriggerAddCondition(vA, Condition(function oy))
    call TriggerAddAction(vA, function ry)
    call TriggerRegisterEnterRectSimple(eA, mC)
    call TriggerAddCondition(eA, Condition(function iy))
    call TriggerAddAction(eA, function ay)
    call TriggerRegisterEnterRectSimple(xA, MC)
    call TriggerAddCondition(xA, Condition(function ny))
    call TriggerAddAction(xA, function Vy)
    call TriggerRegisterEnterRectSimple(oA, pC)
    call TriggerAddCondition(oA, Condition(function Ey))
    call TriggerAddAction(oA, function Xy)
    call TriggerRegisterEnterRectSimple(rA, PC)
    call TriggerAddCondition(rA, Condition(function Oy))
    call TriggerAddAction(rA, function Ry)
    call TriggerRegisterEnterRectSimple(iA, qC)
    call TriggerAddCondition(iA, Condition(function Iy))
    call TriggerAddAction(iA, function Ay)
    call TriggerRegisterEnterRectSimple(aA, QC)
    call TriggerAddCondition(aA, Condition(function Ny))
    call TriggerAddAction(aA, function by)
    call TriggerRegisterEnterRectSimple(nA, vd)
    call TriggerAddCondition(nA, Condition(function By))
    call TriggerAddAction(nA, function cy)
    call TriggerRegisterEnterRectSimple(VA, ZC)
    call TriggerAddCondition(VA, Condition(function Cy))
    call TriggerAddAction(VA, function dddy)
    call TriggerRegisterEnterRectSimple(EA, zC)
    call TriggerAddCondition(EA, Condition(function Dy))
    call TriggerAddAction(EA, function fy)
    call TriggerRegisterEnterRectSimple(XA, YC)
    call TriggerAddCondition(XA, Condition(function Fy))
    call TriggerAddAction(XA, function gy)
    call TriggerRegisterEnterRectSimple(OA, yC)
    call TriggerAddCondition(OA, Condition(function Gy))
    call TriggerAddAction(OA, function hy)
    call TriggerRegisterEnterRectSimple(RA, WC)
    call TriggerAddCondition(RA, Condition(function Hy))
    call TriggerAddAction(RA, function jy)
    call TriggerRegisterEnterRectSimple(IA, bd)
    call TriggerAddCondition(IA, Condition(function Jy))
    call TriggerAddAction(IA, function ky)
    call TriggerRegisterEnterRectSimple(AA, Nd)
    call TriggerAddCondition(AA, Condition(function Ky))
    call TriggerAddAction(AA, function ly)
    call TriggerRegisterEnterRectSimple(NA, Ad)
    call TriggerAddCondition(NA, Condition(function Ly))
    call TriggerAddAction(NA, function my)
    call TriggerRegisterEnterRectSimple(bA, Id)
    call TriggerAddCondition(bA, Condition(function My))
    call TriggerAddAction(bA, function py)
    call TriggerRegisterEnterRectSimple(BA, Rd)
    call TriggerAddCondition(BA, Condition(function Py))
    call TriggerAddAction(BA, function qy)
    call TriggerRegisterEnterRectSimple(cA, Od)
    call TriggerAddCondition(cA, Condition(function Qy))
    call TriggerAddAction(cA, function sy)
    call TriggerRegisterEnterRectSimple(CA, Xd)
    call TriggerAddCondition(CA, Condition(function Sy))
    call TriggerAddAction(CA, function ty)
    call TriggerRegisterEnterRectSimple(dA, Ed)
    call TriggerAddCondition(dA, Condition(function Ty))
    call TriggerAddAction(dA, function uy)
    call TriggerRegisterEnterRectSimple(DA, Vd)
    call TriggerAddCondition(DA, Condition(function Uy))
    call TriggerAddAction(DA, function wy)
    call TriggerRegisterEnterRectSimple(fA, nd)
    call TriggerAddCondition(fA, Condition(function Wy))
    call TriggerAddAction(fA, function yy)
    call TriggerRegisterEnterRectSimple(FA, ad)
    call TriggerAddCondition(FA, Condition(function Yy))
    call TriggerAddAction(FA, function zy)
    call TriggerRegisterEnterRectSimple(gA, rd)
    call TriggerAddCondition(gA, Condition(function Zy))
    call TriggerAddAction(gA, function vY)
    call TriggerRegisterEnterRectSimple(GA, od)
    call TriggerAddCondition(GA, Condition(function eY))
    call TriggerAddAction(GA, function xY)
    call TriggerRegisterEnterRectSimple(hA, xd)
    call TriggerAddCondition(hA, Condition(function oY))
    call TriggerAddAction(hA, function rY)
    call TriggerRegisterEnterRectSimple(HA, sC)
    call TriggerAddCondition(HA, Condition(function iY))
    call TriggerAddAction(HA, function aY)
    call TriggerRegisterEnterRectSimple(jA, SC)
    call TriggerAddCondition(jA, Condition(function nY))
    call TriggerAddAction(jA, function VY)
    call TriggerRegisterEnterRectSimple(JA, tC)
    call TriggerAddCondition(JA, Condition(function EY))
    call TriggerAddAction(JA, function XY)
    call TriggerRegisterEnterRectSimple(kA, TC)
    call TriggerAddCondition(kA, Condition(function OY))
    call TriggerAddAction(kA, function RY)
    call TriggerRegisterEnterRectSimple(KA, uC)
    call TriggerAddCondition(KA, Condition(function IY))
    call TriggerAddAction(KA, function AY)
    call TriggerRegisterEnterRectSimple(lA, UC)
    call TriggerAddCondition(lA, Condition(function NY))
    call TriggerAddAction(lA, function bY)
    call TriggerRegisterEnterRectSimple(LA, Bd)
    call TriggerAddCondition(LA, Condition(function BY))
    call TriggerAddAction(LA, function cY)
    call TriggerRegisterEnterRectSimple(mA, cd)
    call TriggerAddCondition(mA, Condition(function CY))
    call TriggerAddAction(mA, function dY)
    call TriggerRegisterEnterRectSimple(MA, Cd)
    call TriggerAddCondition(MA, Condition(function DY))
    call TriggerAddAction(MA, function fY)
    call TriggerRegisterEnterRectSimple(pA, dd)
    call TriggerAddCondition(pA, Condition(function FY))
    call TriggerAddAction(pA, function gY)
    call TriggerRegisterEnterRectSimple(PA, Dd)
    call TriggerAddCondition(PA, Condition(function GY))
    call TriggerAddAction(PA, function hY)
    call TriggerRegisterEnterRectSimple(qA, fd)
    call TriggerAddCondition(qA, Condition(function HY))
    call TriggerAddAction(qA, function jY)
    call TriggerRegisterEnterRectSimple(QA, gd)
    call TriggerAddCondition(QA, Condition(function JY))
    call TriggerAddAction(QA, function kY)
    call TriggerRegisterEnterRectSimple(sA, Gd)
    call TriggerAddCondition(sA, Condition(function KY))
    call TriggerAddAction(sA, function lY)
    call TriggerRegisterEnterRectSimple(SA, hd)
    call TriggerAddCondition(SA, Condition(function LY))
    call TriggerAddAction(SA, function mY)
    call TriggerRegisterEnterRectSimple(tA, Hd)
    call TriggerAddCondition(tA, Condition(function MY))
    call TriggerAddAction(tA, function pY)
    call TriggerRegisterEnterRectSimple(TA, jd)
    call TriggerAddCondition(TA, Condition(function PY))
    call TriggerAddAction(TA, function qY)
    call TriggerRegisterEnterRectSimple(uA, Jd)
    call TriggerAddCondition(uA, Condition(function QY))
    call TriggerAddAction(uA, function sY)
    call TriggerRegisterEnterRectSimple(UA, kd)
    call TriggerAddCondition(UA, Condition(function SY))
    call TriggerAddAction(UA, function tY)
    call TriggerRegisterEnterRectSimple(wA, Ud)
    call TriggerAddCondition(wA, Condition(function TY))
    call TriggerAddAction(wA, function uY)
    call TriggerRegisterEnterRectSimple(WA, Td)
    call TriggerAddCondition(WA, Condition(function UY))
    call TriggerAddAction(WA, function wY)
    call TriggerRegisterEnterRectSimple(yA, td)
    call TriggerAddCondition(yA, Condition(function WY))
    call TriggerAddAction(yA, function yY)
    call TriggerRegisterEnterRectSimple(YA, Sd)
    call TriggerAddCondition(YA, Condition(function YY))
    call TriggerAddAction(YA, function zY)
    call TriggerRegisterEnterRectSimple(zA, sd)
    call TriggerAddCondition(zA, Condition(function ZY))
    call TriggerAddAction(zA, function vz)
    call TriggerRegisterEnterRectSimple(ZA, Qd)
    call TriggerAddCondition(ZA, Condition(function ez))
    call TriggerAddAction(ZA, function xz)
    call TriggerRegisterEnterRectSimple(vN, VD)
    call TriggerAddCondition(vN, Condition(function oz))
    call TriggerAddAction(vN, function rz)
    call TriggerRegisterEnterRectSimple(eN, nD)
    call TriggerAddCondition(eN, Condition(function iz))
    call TriggerAddAction(eN, function az)
    call TriggerRegisterEnterRectSimple(xN, aD)
    call TriggerAddCondition(xN, Condition(function nz))
    call TriggerAddAction(xN, function Vz)
    call TriggerRegisterEnterRectSimple(oN, iD)
    call TriggerAddCondition(oN, Condition(function Ez))
    call TriggerAddAction(oN, function Xz)
    call TriggerRegisterEnterRectSimple(rN, rD)
    call TriggerAddCondition(rN, Condition(function Oz))
    call TriggerAddAction(rN, function Rz)
    call TriggerRegisterEnterRectSimple(iN, oD)
    call TriggerAddCondition(iN, Condition(function Iz))
    call TriggerAddAction(iN, function Az)
    call TriggerRegisterEnterRectSimple(aN, xD)
    call TriggerAddCondition(aN, Condition(function Nz))
    call TriggerAddAction(aN, function bz)
    call TriggerRegisterEnterRectSimple(nN, eD)
    call TriggerAddCondition(nN, Condition(function Bz))
    call TriggerAddAction(nN, function cz)
    call TriggerRegisterEnterRectSimple(VN, vD)
    call TriggerAddCondition(VN, Condition(function Cz))
    call TriggerAddAction(VN, function dz)
    call TriggerRegisterEnterRectSimple(EN, Zd)
    call TriggerAddCondition(EN, Condition(function Dz))
    call TriggerAddAction(EN, function fz)
    call TriggerRegisterEnterRectSimple(XN, zd)
    call TriggerAddCondition(XN, Condition(function Fz))
    call TriggerAddAction(XN, function gz)
    call TriggerRegisterEnterRectSimple(ON, Yd)
    call TriggerAddCondition(ON, Condition(function Gz))
    call TriggerAddAction(ON, function hz)
    call TriggerRegisterEnterRectSimple(RN, yd)
    call TriggerAddCondition(RN, Condition(function Hz))
    call TriggerAddAction(RN, function jz)
    call TriggerRegisterEnterRectSimple(IN, Wd)
    call TriggerAddCondition(IN, Condition(function Jz))
    call TriggerAddAction(IN, function kz)
    call TriggerRegisterEnterRectSimple(AN, Kd)
    call TriggerAddCondition(AN, Condition(function Kz))
    call TriggerAddAction(AN, function lz)
    call TriggerRegisterEnterRectSimple(NN, ld)
    call TriggerAddCondition(NN, Condition(function Lz))
    call TriggerAddAction(NN, function mz)
    call TriggerRegisterEnterRectSimple(bN, Ld)
    call TriggerAddCondition(bN, Condition(function Mz))
    call TriggerAddAction(bN, function pz)
    call TriggerRegisterEnterRectSimple(BN, md)
    call TriggerAddCondition(BN, Condition(function Pz))
    call TriggerAddAction(BN, function qz)
    call TriggerRegisterEnterRectSimple(cN, Md)
    call TriggerAddCondition(cN, Condition(function Qz))
    call TriggerAddAction(cN, function sz)
    call TriggerRegisterEnterRectSimple(CN, Pd)
    call TriggerAddCondition(CN, Condition(function Sz))
    call TriggerAddAction(CN, function tz)
    call TriggerRegisterTimerEventSingle(dN, 15.)
    call TriggerAddAction(dN, function Tz)
    call TriggerRegisterPlayerChatEvent(DN, Player(0), "-rg", false)
    call TriggerRegisterPlayerChatEvent(DN, Player(6), "-rg", false)
    call TriggerAddAction(DN, function wz)
    call TriggerRegisterEnterRectSimple(fN, RC)
    call TriggerAddCondition(fN, Condition(function Wz))
    call TriggerAddAction(fN, function yz)
    call TriggerRegisterEnterRectSimple(FN, ED)
    call TriggerAddCondition(FN, Condition(function Yz))
    call TriggerAddAction(FN, function zz)
    call TriggerRegisterEnterRectSimple(gN, hD)
    call TriggerAddCondition(gN, Condition(function Zz))
    call TriggerAddAction(gN, function vZ)
    call TriggerRegisterEnterRectSimple(GN, gD)
    call TriggerAddCondition(GN, Condition(function eZ))
    call TriggerAddAction(GN, function xZ)
    call TriggerRegisterEnterRectSimple(hN, GD)
    call TriggerAddCondition(hN, Condition(function oZ))
    call TriggerAddAction(hN, function rZ)
    call TriggerAddAction(HN, function DZ)
    call TriggerAddAction(jN, function QZ)
    call TriggerAddAction(JN, function n0)
    call TriggerRegisterEnterRectSimple(kN, JD)
    call TriggerRegisterEnterRectSimple(kN, HD)
    call TriggerAddCondition(kN, Condition(function V0))
    call TriggerAddAction(kN, function E0)
    call TriggerRegisterEnterRectSimple(KN, IC)
    call TriggerAddCondition(KN, Condition(function X0))
    call TriggerAddAction(KN, function O0)
    call TriggerRegisterEnterRectSimple(lN, XD)
    call TriggerAddCondition(lN, Condition(function R0))
    call TriggerAddAction(lN, function I0)
    call TriggerAddAction(LN, function k0)
    call TriggerAddAction(mN, function y0)
    call TriggerAddAction(MN, function B1)
    call TriggerRegisterEnterRectSimple(pN, hD)
    call TriggerRegisterEnterRectSimple(pN, gD)
    call TriggerAddCondition(pN, Condition(function c1))
    call TriggerAddAction(pN, function C1)
    call TriggerRegisterEnterRectSimple(PN, jD)
    call TriggerAddCondition(PN, Condition(function d1))
    call TriggerAddAction(PN, function D1)
    call TriggerRegisterEnterRectSimple(qN, HD)
    call TriggerAddCondition(qN, Condition(function f1))
    call TriggerAddAction(qN, function F1)
    call TriggerRegisterEnterRectSimple(QN, JD)
    call TriggerAddCondition(QN, Condition(function g1))
    call TriggerAddAction(QN, function G1)
    call TriggerRegisterAnyUnitEventBJ(sN, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(sN, Condition(function h1))
    call TriggerAddAction(sN, function H1)
    call TriggerRegisterAnyUnitEventBJ(SN, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(SN, Condition(function j1))
    call TriggerAddAction(SN, function J1)
    call TriggerRegisterAnyUnitEventBJ(tN, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(tN, Condition(function k1))
    call TriggerAddAction(tN, function K1)
    call TriggerRegisterAnyUnitEventBJ(TN, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(TN, Condition(function L1))
    call TriggerAddAction(TN, function m1)
    call TriggerRegisterAnyUnitEventBJ(uN, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(uN, Condition(function M1))
    call TriggerAddAction(uN, function p1)
    call TriggerRegisterAnyUnitEventBJ(UN, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(UN, Condition(function P1))
    call TriggerAddAction(UN, function q1)
    call TriggerRegisterAnyUnitEventBJ(wN, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(wN, Condition(function Q1))
    call TriggerAddAction(wN, function s1)
    call TriggerRegisterAnyUnitEventBJ(WN, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(WN, Condition(function S1))
    call TriggerAddAction(WN, function T1)
    call TriggerRegisterAnyUnitEventBJ(yN, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(yN, Condition(function U1))
    call TriggerAddAction(yN, function w1)
    call TriggerRegisterPlayerUnitEventSimple(YN, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(YN, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(YN, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(YN, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(YN, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(YN, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(YN, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(YN, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(YN, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(YN, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(YN, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(YN, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(YN, Condition(function W1))
    call TriggerAddAction(YN, function Z1)
    call TriggerRegisterPlayerUnitEventSimple(zN, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(zN, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(zN, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(zN, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(zN, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(zN, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(zN, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(zN, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(zN, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(zN, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(zN, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(zN, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(zN, Condition(function v2))
    call TriggerAddAction(zN, function rrr2)
    call TriggerRegisterPlayerUnitEventSimple(ZN, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ZN, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ZN, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ZN, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ZN, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ZN, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ZN, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ZN, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ZN, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ZN, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ZN, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ZN, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(ZN, Condition(function a2))
    call TriggerAddAction(ZN, function X2)
    call TriggerRegisterAnyUnitEventBJ(vb, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(vb, Condition(function O2))
    call TriggerAddAction(vb, function A2)
    call TriggerRegisterPlayerUnitEventSimple(eb, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(eb, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(eb, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(eb, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(eb, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(eb, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(eb, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(eb, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(eb, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(eb, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(eb, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(eb, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(eb, Condition(function N2))
    call TriggerAddAction(eb, function C2)
    call TriggerRegisterPlayerUnitEventSimple(xb, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xb, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xb, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xb, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xb, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xb, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xb, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xb, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xb, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xb, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xb, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(xb, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(xb, Condition(function d2))
    call TriggerAddAction(xb, function g2)
    call TriggerRegisterPlayerUnitEventSimple(ob, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ob, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ob, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ob, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ob, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ob, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ob, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ob, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ob, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ob, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ob, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ob, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(ob, Condition(function G2))
    call TriggerAddAction(ob, function J2)
    call TriggerRegisterPlayerUnitEventSimple(rb, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rb, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rb, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rb, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rb, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rb, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rb, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rb, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rb, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rb, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rb, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(rb, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(rb, Condition(function k2))
    call TriggerAddAction(rb, function M2)
    call TriggerRegisterPlayerUnitEventSimple(ib, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ib, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ib, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ib, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ib, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ib, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ib, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ib, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ib, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ib, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ib, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(ib, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(ib, Condition(function p2))
    call TriggerAddAction(ib, function s2)
    call TriggerRegisterPlayerUnitEventSimple(nb, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nb, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nb, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nb, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nb, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nb, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nb, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nb, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nb, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nb, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nb, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(nb, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(nb, Condition(function S2))
    call TriggerAddAction(nb, function W2)
    call TriggerRegisterPlayerUnitEventSimple(Vb, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vb, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vb, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vb, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vb, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vb, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vb, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vb, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vb, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vb, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vb, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Vb, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Vb, Condition(function yyy2))
    call TriggerAddAction(Vb, function v3)
    call TriggerRegisterPlayerUnitEventSimple(Eb, Player(0), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Eb, Player(1), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Eb, Player(2), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Eb, Player(3), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Eb, Player(4), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Eb, Player(5), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Eb, Player(6), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Eb, Player(7), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Eb, Player(8), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Eb, Player(9), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Eb, Player(10), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerRegisterPlayerUnitEventSimple(Eb, Player(11), EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(Eb, Condition(function e3))
    call TriggerAddAction(Eb, function a3)
    call TriggerRegisterAnyUnitEventBJ(Xb, EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddCondition(Xb, Condition(function n3))
    call TriggerAddAction(Xb, function O3)
    call TriggerRegisterAnyUnitEventBJ(Ob, EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddCondition(Ob, Condition(function R3))
    call TriggerAddAction(Ob, function b3)
    call TriggerRegisterAnyUnitEventBJ(Rb, EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddCondition(Rb, Condition(function B3))
    call TriggerAddAction(Rb, function D3)
    call TriggerRegisterAnyUnitEventBJ(Ib, EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddCondition(Ib, Condition(function f3))
    call TriggerAddAction(Ib, function h3)
    call TriggerRegisterAnyUnitEventBJ(Ab, EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddCondition(Ab, Condition(function H3))
    call TriggerAddAction(Ab, function K3)
    call TriggerRegisterAnyUnitEventBJ(Nb, EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddCondition(Nb, Condition(function L3))
    call TriggerAddAction(Nb, function P3)
    call ConditionalTriggerExecute(qi)
    call ConditionalTriggerExecute(Ti)
    call ConditionalTriggerExecute(ui)
    call ConditionalTriggerExecute(Ca)
    call ConditionalTriggerExecute(da)
    call ConditionalTriggerExecute(fa)
    call ConditionalTriggerExecute(ga)
    call ConditionalTriggerExecute(Ga)
    call ConditionalTriggerExecute(ha)
    call ConditionalTriggerExecute(ja)
    call ConditionalTriggerExecute(Ja)
    call ConditionalTriggerExecute(ka)
    call ConditionalTriggerExecute(Ka)
    call ConditionalTriggerExecute(gE)
endfunction
function Q3 takes nothing returns nothing
    set wx = CreateTrigger()
    set Pi = CreateTrigger()
    set qi = CreateTrigger()
    set Qi = CreateTrigger()
    set si = CreateTrigger()
    set Si = CreateTrigger()
    set ti = CreateTrigger()
    set Ti = CreateTrigger()
    set ui = CreateTrigger()
    set Ui = CreateTrigger()
    set wi = CreateTrigger()
    set Wi = CreateTrigger()
    set yi = CreateTrigger()
    set Yi = CreateTrigger()
    set zi = CreateTrigger()
    set Zi = CreateTrigger()
    set va = CreateTrigger()
    set ea = CreateTrigger()
    set xa = CreateTrigger()
    set oa = CreateTrigger()
    set ra = CreateTrigger()
    set ia = CreateTrigger()
    set aa = CreateTrigger()
    set na = CreateTrigger()
    set Va = CreateTrigger()
    set Ea = CreateTrigger()
    set Xa = CreateTrigger()
    set Oa = CreateTrigger()
    set Ra = CreateTrigger()
    set Ia = CreateTrigger()
    set Aa = CreateTrigger()
    set Na = CreateTrigger()
    set ba = CreateTrigger()
    set Ba = CreateTrigger()
    set ca = CreateTrigger()
    set Ca = CreateTrigger()
    set da = CreateTrigger()
    set Da = CreateTrigger()
    set fa = CreateTrigger()
    set Fa = CreateTrigger()
    set ga = CreateTrigger()
    set Ga = CreateTrigger()
    set ha = CreateTrigger()
    set Ha = CreateTrigger()
    set ja = CreateTrigger()
    set Ja = CreateTrigger()
    set ka = CreateTrigger()
    set Ka = CreateTrigger()
    set la = CreateTrigger()
    set La = CreateTrigger()
    set ma = CreateTrigger()
    set Ma = CreateTrigger()
    set pa = CreateTrigger()
    set Pa = CreateTrigger()
    set qa = CreateTrigger()
    set Qa = CreateTrigger()
    set sa = CreateTrigger()
    set Sa = CreateTrigger()
    set ta = CreateTrigger()
    set Ta = CreateTrigger()
    set ua = CreateTrigger()
    set Ua = CreateTrigger()
    set wa = CreateTrigger()
    set Wa = CreateTrigger()
    set ya = CreateTrigger()
    set Ya = CreateTrigger()
    set za = CreateTrigger()
    set Za = CreateTrigger()
    set vn = CreateTrigger()
    set en = CreateTrigger()
    set xn = CreateTrigger()
    set on = CreateTrigger()
    set rn = CreateTrigger()
    set in = CreateTrigger()
    set an = CreateTrigger()
    set nn = CreateTrigger()
    set Vn = CreateTrigger()
    set En = CreateTrigger()
    set Xn = CreateTrigger()
    set On = CreateTrigger()
    set Rn = CreateTrigger()
    set In = CreateTrigger()
    set An = CreateTrigger()
    set Nn = CreateTrigger()
    set bn = CreateTrigger()
    set Bn = CreateTrigger()
    set cn = CreateTrigger()
    set Cn = CreateTrigger()
    set dn = CreateTrigger()
    set Dn = CreateTrigger()
    set fn = CreateTrigger()
    set Fn = CreateTrigger()
    set gn = CreateTrigger()
    set Gn = CreateTrigger()
    set Hn = CreateTrigger()
    set jn = CreateTrigger()
    set Jn = CreateTrigger()
    set kn = CreateTrigger()
    set Kn = CreateTrigger()
    set ln = CreateTrigger()
    set Ln = CreateTrigger()
    set mn = CreateTrigger()
    set Mn = CreateTrigger()
    set pn = CreateTrigger()
    set Pn = CreateTrigger()
    set qn = CreateTrigger()
    set Qn = CreateTrigger()
    set sn = CreateTrigger()
    set Sn = CreateTrigger()
    set tn = CreateTrigger()
    set Tn = CreateTrigger()
    set un = CreateTrigger()
    set wn = CreateTrigger()
    set Wn = CreateTrigger()
    set yn = CreateTrigger()
    set Yn = CreateTrigger()
    set zn = CreateTrigger()
    set Zn = CreateTrigger()
    set vV = CreateTrigger()
    set eV = CreateTrigger()
    set xV = CreateTrigger()
    set oV = CreateTrigger()
    set rV = CreateTrigger()
    set iV = CreateTrigger()
    set aV = CreateTrigger()
    set nV = CreateTrigger()
    set VV = CreateTrigger()
    set EV = CreateTrigger()
    set XV = CreateTrigger()
    set RV = CreateTrigger()
    set NV = CreateTrigger()
    set bV = CreateTrigger()
    set BV = CreateTrigger()
    set cV = CreateTrigger()
    set CV = CreateTrigger()
    set dV = CreateTrigger()
    set DV = CreateTrigger()
    set fV = CreateTrigger()
    set HV = CreateTrigger()
    set jV = CreateTrigger()
    set JV = CreateTrigger()
    set kV = CreateTrigger()
    set KV = CreateTrigger()
    set lV = CreateTrigger()
    set LV = CreateTrigger()
    set mV = CreateTrigger()
    set MV = CreateTrigger()
    set pV = CreateTrigger()
    set PV = CreateTrigger()
    set qV = CreateTrigger()
    set QV = CreateTrigger()
    set sV = CreateTrigger()
    set SV = CreateTrigger()
    set tV = CreateTrigger()
    set TV = CreateTrigger()
    set uV = CreateTrigger()
    set UV = CreateTrigger()
    set wV = CreateTrigger()
    set WV = CreateTrigger()
    set yV = CreateTrigger()
    set YV = CreateTrigger()
    set zV = CreateTrigger()
    set ZV = CreateTrigger()
    set vE = CreateTrigger()
    set eE = CreateTrigger()
    set xE = CreateTrigger()
    set oE = CreateTrigger()
    set rE = CreateTrigger()
    set iE = CreateTrigger()
    set aE = CreateTrigger()
    set nE = CreateTrigger()
    set VE = CreateTrigger()
    set EE = CreateTrigger()
    set XE = CreateTrigger()
    set OE = CreateTrigger()
    set RE = CreateTrigger()
    set IE = CreateTrigger()
    set AE = CreateTrigger()
    set NE = CreateTrigger()
    set bE = CreateTrigger()
    set BE = CreateTrigger()
    set cE = CreateTrigger()
    set CE = CreateTrigger()
    set dE = CreateTrigger()
    set DE = CreateTrigger()
    set fE = CreateTrigger()
    set FE = CreateTrigger()
    set gE = CreateTrigger()
    set GE = CreateTrigger()
    set hE = CreateTrigger()
    set HE = CreateTrigger()
    set jE = CreateTrigger()
    set JE = CreateTrigger()
    set kE = CreateTrigger()
    set KE = CreateTrigger()
    set lE = CreateTrigger()
    set LE = CreateTrigger()
    set mE = CreateTrigger()
    set ME = CreateTrigger()
    set pE = CreateTrigger()
    set PE = CreateTrigger()
    set qE = CreateTrigger()
    set QE = CreateTrigger()
    set sE = CreateTrigger()
    set SE = CreateTrigger()
    set tE = CreateTrigger()
    set TE = CreateTrigger()
    set uE = CreateTrigger()
    set UE = CreateTrigger()
    set wE = CreateTrigger()
    set WE = CreateTrigger()
    set yE = CreateTrigger()
    set YE = CreateTrigger()
    set zE = CreateTrigger()
    set ZE = CreateTrigger()
    set vX = CreateTrigger()
    set eX = CreateTrigger()
    set xX = CreateTrigger()
    set oX = CreateTrigger()
    set rX = CreateTrigger()
    set iX = CreateTrigger()
    set aX = CreateTrigger()
    set nX = CreateTrigger()
    set VX = CreateTrigger()
    set EX = CreateTrigger()
    set XX = CreateTrigger()
    set OX = CreateTrigger()
    set RX = CreateTrigger()
    set IX = CreateTrigger()
    set AX = CreateTrigger()
    set NX = CreateTrigger()
    set bX = CreateTrigger()
    set BX = CreateTrigger()
    set cX = CreateTrigger()
    set CX = CreateTrigger()
    set dX = CreateTrigger()
    set fX = CreateTrigger()
    set FX = CreateTrigger()
    set gX = CreateTrigger()
    set GX = CreateTrigger()
    set hX = CreateTrigger()
    set HX = CreateTrigger()
    set jX = CreateTrigger()
    set JX = CreateTrigger()
    set kX = CreateTrigger()
    set WX = CreateTrigger()
    set yX = CreateTrigger()
    set YX = CreateTrigger()
    set zX = CreateTrigger()
    set ZX = CreateTrigger()
    set vO = CreateTrigger()
    set eO = CreateTrigger()
    set xO = CreateTrigger()
    set oO = CreateTrigger()
    set rO = CreateTrigger()
    set iO = CreateTrigger()
    set aO = CreateTrigger()
    set nO = CreateTrigger()
    set VO = CreateTrigger()
    set EO = CreateTrigger()
    set XO = CreateTrigger()
    set OO = CreateTrigger()
    set RO = CreateTrigger()
    set IO = CreateTrigger()
    set AO = CreateTrigger()
    set NO = CreateTrigger()
    set bO = CreateTrigger()
    set BO = CreateTrigger()
    set cO = CreateTrigger()
    set CO = CreateTrigger()
    set dO = CreateTrigger()
    set DO = CreateTrigger()
    set fO = CreateTrigger()
    set FO = CreateTrigger()
    set gO = CreateTrigger()
    set GO = CreateTrigger()
    set hO = CreateTrigger()
    set HO = CreateTrigger()
    set jO = CreateTrigger()
    set JO = CreateTrigger()
    set kO = CreateTrigger()
    set KO = CreateTrigger()
    set lO = CreateTrigger()
    set LO = CreateTrigger()
    set mO = CreateTrigger()
    set MO = CreateTrigger()
    set pO = CreateTrigger()
    set PO = CreateTrigger()
    set qO = CreateTrigger()
    set QO = CreateTrigger()
    set sO = CreateTrigger()
    set SO = CreateTrigger()
    set tO = CreateTrigger()
    set TO = CreateTrigger()
    set uO = CreateTrigger()
    set UO = CreateTrigger()
    set wO = CreateTrigger()
    set WO = CreateTrigger()
    set yO = CreateTrigger()
    set YO = CreateTrigger()
    set zO = CreateTrigger()
    set ZO = CreateTrigger()
    set vR = CreateTrigger()
    set eR = CreateTrigger()
    set xR = CreateTrigger()
    set oR = CreateTrigger()
    set rR = CreateTrigger()
    set iR = CreateTrigger()
    set aR = CreateTrigger()
    set PI = CreateTrigger()
    set qI = CreateTrigger()
    set QI = CreateTrigger()
    set sI = CreateTrigger()
    set SI = CreateTrigger()
    set tI = CreateTrigger()
    set TI = CreateTrigger()
    set uI = CreateTrigger()
    set UI = CreateTrigger()
    set wI = CreateTrigger()
    set WI = CreateTrigger()
    set yI = CreateTrigger()
    set YI = CreateTrigger()
    set zI = CreateTrigger()
    set ZI = CreateTrigger()
    set vA = CreateTrigger()
    set eA = CreateTrigger()
    set xA = CreateTrigger()
    set oA = CreateTrigger()
    set rA = CreateTrigger()
    set iA = CreateTrigger()
    set aA = CreateTrigger()
    set nA = CreateTrigger()
    set VA = CreateTrigger()
    set EA = CreateTrigger()
    set XA = CreateTrigger()
    set OA = CreateTrigger()
    set RA = CreateTrigger()
    set IA = CreateTrigger()
    set AA = CreateTrigger()
    set NA = CreateTrigger()
    set bA = CreateTrigger()
    set BA = CreateTrigger()
    set cA = CreateTrigger()
    set CA = CreateTrigger()
    set dA = CreateTrigger()
    set DA = CreateTrigger()
    set fA = CreateTrigger()
    set FA = CreateTrigger()
    set gA = CreateTrigger()
    set GA = CreateTrigger()
    set hA = CreateTrigger()
    set HA = CreateTrigger()
    set jA = CreateTrigger()
    set JA = CreateTrigger()
    set kA = CreateTrigger()
    set KA = CreateTrigger()
    set lA = CreateTrigger()
    set LA = CreateTrigger()
    set mA = CreateTrigger()
    set MA = CreateTrigger()
    set pA = CreateTrigger()
    set PA = CreateTrigger()
    set qA = CreateTrigger()
    set QA = CreateTrigger()
    set sA = CreateTrigger()
    set SA = CreateTrigger()
    set tA = CreateTrigger()
    set TA = CreateTrigger()
    set uA = CreateTrigger()
    set UA = CreateTrigger()
    set wA = CreateTrigger()
    set WA = CreateTrigger()
    set yA = CreateTrigger()
    set YA = CreateTrigger()
    set zA = CreateTrigger()
    set ZA = CreateTrigger()
    set vN = CreateTrigger()
    set eN = CreateTrigger()
    set xN = CreateTrigger()
    set oN = CreateTrigger()
    set rN = CreateTrigger()
    set iN = CreateTrigger()
    set aN = CreateTrigger()
    set nN = CreateTrigger()
    set VN = CreateTrigger()
    set EN = CreateTrigger()
    set XN = CreateTrigger()
    set ON = CreateTrigger()
    set RN = CreateTrigger()
    set IN = CreateTrigger()
    set AN = CreateTrigger()
    set NN = CreateTrigger()
    set bN = CreateTrigger()
    set BN = CreateTrigger()
    set cN = CreateTrigger()
    set CN = CreateTrigger()
    set dN = CreateTrigger()
    set DN = CreateTrigger()
    set fN = CreateTrigger()
    set FN = CreateTrigger()
    set gN = CreateTrigger()
    set GN = CreateTrigger()
    set hN = CreateTrigger()
    set HN = CreateTrigger()
    set jN = CreateTrigger()
    set JN = CreateTrigger()
    set kN = CreateTrigger()
    set KN = CreateTrigger()
    set lN = CreateTrigger()
    set LN = CreateTrigger()
    set mN = CreateTrigger()
    set MN = CreateTrigger()
    set pN = CreateTrigger()
    set PN = CreateTrigger()
    set qN = CreateTrigger()
    set QN = CreateTrigger()
    set sN = CreateTrigger()
    set SN = CreateTrigger()
    set tN = CreateTrigger()
    set TN = CreateTrigger()
    set uN = CreateTrigger()
    set UN = CreateTrigger()
    set wN = CreateTrigger()
    set WN = CreateTrigger()
    set yN = CreateTrigger()
    set YN = CreateTrigger()
    set zN = CreateTrigger()
    set ZN = CreateTrigger()
    set vb = CreateTrigger()
    set eb = CreateTrigger()
    set xb = CreateTrigger()
    set ob = CreateTrigger()
    set rb = CreateTrigger()
    set ib = CreateTrigger()
    set nb = CreateTrigger()
    set Vb = CreateTrigger()
    set Eb = CreateTrigger()
    set Xb = CreateTrigger()
    set Ob = CreateTrigger()
    set Rb = CreateTrigger()
    set Ib = CreateTrigger()
    set Ab = CreateTrigger()
    set Nb = CreateTrigger()
    set bj_lastCreatedGameCache = InitGameCache("MapName.w3v")
    call ExecuteFunc("q3")
endfunction
function s3 takes nothing returns boolean
    if(not(IsPlayerAlly(GetEnumPlayer(), Player(5)) == true))then
        return false
    endif
    return true
endfunction
function S3 takes nothing returns nothing
    if(s3())then
        call CreateFogModifierRectBJ(true, GetEnumPlayer(), FOG_OF_WAR_VISIBLE, GC)
    else
        call CreateFogModifierRectBJ(true, GetEnumPlayer(), FOG_OF_WAR_VISIBLE, gC)
    endif
endfunction
function t3 takes nothing returns nothing
    set oc = true
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cffffcc00All Pick Mode Enable.")
    call CreateDestructableLoc('OTsp', GetRectCenter(aC), 90.00, 0.70, 0)
    call CreateDestructableLoc('OTsp', GetRectCenter(nC), 90.00, 0.70, 0)
    call EnableTrigger(YD)
    call EnableTrigger(zD)
    call ForForce(GetPlayersAll(), function S3)
    call DisableTrigger(GetTriggeringTrigger())
endfunction
function T3 takes nothing returns nothing
    set WD = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(WD, Player(0), "-ap", true)
    call TriggerRegisterPlayerChatEvent(WD, Player(6), "-ap", true)
    call TriggerAddAction(WD, function t3)
endfunction
function U3 takes nothing returns boolean
    if(not(oc == false))then
        return false
    endif
    return true
endfunction
function w3 takes nothing returns nothing
    call TriggerSleepAction(15.00)
    if(U3())then
        call DisableTrigger(WD)
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cffffcc00AP Mode Has Been Disabled")
    else
    endif
endfunction
function W3 takes nothing returns nothing
    set yD = CreateTrigger()
    call TriggerAddAction(yD, function w3)
endfunction
function yyy3 takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == 'nshe'))then
        return false
    endif
    return true
endfunction
function Y3 takes nothing returns boolean
    if(not(rc == false))then
        return false
    endif
    return true
endfunction
function zzz3 takes nothing returns nothing
    call VG(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'npig', GetOwningPlayer(GetTriggerUnit()), GetRectCenter(ID), bj_UNIT_FACING)
    if(Y3())then
        call SelectUnitAddForPlayer(GetLastCreatedUnit(), GetOwningPlayer(GetTriggerUnit()))
        call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), GetRectCenter(ID), 0.25)
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNPig.blp"
    else
    endif
endfunction
function Z3 takes nothing returns nothing
    set YD = CreateTrigger()
    call DisableTrigger(YD)
    call TriggerRegisterEnterRectSimple(YD, aC)
    call TriggerAddCondition(YD, Condition(function yyy3))
    call TriggerAddAction(YD, function zzz3)
endfunction
function v4 takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == 'npig'))then
        return false
    endif
    return true
endfunction
function e4 takes nothing returns boolean
    if(not(rc == false))then
        return false
    endif
    return true
endfunction
function x4 takes nothing returns nothing
    call VG(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'nshe', GetOwningPlayer(GetTriggerUnit()), GetRectCenter(RD), bj_UNIT_FACING)
    if(e4())then
        call SelectUnitAddForPlayer(GetLastCreatedUnit(), GetOwningPlayer(GetTriggerUnit()))
        call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), GetRectCenter(RD), 0.25)
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNSheep.blp"
    else
    endif
endfunction
function o4 takes nothing returns nothing
    set zD = CreateTrigger()
    call DisableTrigger(zD)
    call TriggerRegisterEnterRectSimple(zD, nC)
    call TriggerAddCondition(zD, Condition(function v4))
    call TriggerAddAction(zD, function x4)
endfunction
function r4 takes nothing returns boolean
    if(not(oc == true))then
        return false
    endif
    return true
endfunction
function a4 takes nothing returns boolean
    if(not(GetRandomInt(1, 2) == 1))then
        return false
    endif
    return true
endfunction
function n4 takes nothing returns nothing
    if(a4())then
        call SetUnitPositionLoc(GetEnumUnit(), GetRectCenter(aC))
    else
    endif
endfunction
function V4 takes nothing returns boolean
    if(not(GetRandomInt(1, 2) == 2))then
        return false
    endif
    return true
endfunction
function E4 takes nothing returns nothing
    if(V4())then
        call SetUnitPositionLoc(GetEnumUnit(), GetRectCenter(nC))
    else
    endif
endfunction
function X4 takes nothing returns nothing
    set rc = true
    call ForGroupBJ(GetUnitsInRectAll(dC), function n4)
    call ForGroupBJ(GetUnitsInRectAll(DC), function E4)
endfunction
function O4 takes nothing returns nothing
    set ZD = CreateTrigger()
    call TriggerAddCondition(ZD, Condition(function r4))
    call TriggerAddAction(ZD, function X4)
endfunction
function R4 takes nothing returns boolean
    if(not(vB[GetConvertedPlayerId(GetTriggerPlayer())] == false))then
        return false
    endif
    return true
endfunction
function I4 takes nothing returns nothing
    if(R4())then
        set vB[GetConvertedPlayerId(GetTriggerPlayer())] = true
        call DisplayTimedTextToForce(GetForceOfPlayer(GetTriggerPlayer()), 5.00, "|cffffcc00Turn on Display Exp|r")
    else
        set vB[GetConvertedPlayerId(GetTriggerPlayer())] = false
        call DisplayTimedTextToForce(GetForceOfPlayer(GetTriggerPlayer()), 5.00, "|cffffcc00Turn off Display Exp|r")
    endif
endfunction
function A4 takes nothing returns nothing
    set vf = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(vf, Player(0), "-exp", true)
    call TriggerRegisterPlayerChatEvent(vf, Player(1), "-exp", true)
    call TriggerRegisterPlayerChatEvent(vf, Player(2), "-exp", true)
    call TriggerRegisterPlayerChatEvent(vf, Player(3), "-exp", true)
    call TriggerRegisterPlayerChatEvent(vf, Player(4), "-exp", true)
    call TriggerRegisterPlayerChatEvent(vf, Player(6), "-exp", true)
    call TriggerRegisterPlayerChatEvent(vf, Player(7), "-exp", true)
    call TriggerRegisterPlayerChatEvent(vf, Player(8), "-exp", true)
    call TriggerRegisterPlayerChatEvent(vf, Player(9), "-exp", true)
    call TriggerRegisterPlayerChatEvent(vf, Player(10), "-exp", true)
    call TriggerAddAction(vf, function I4)
endfunction
function N4 takes unit bG returns integer
    local integer oG = xG()
    set zg[oG] = bG
    set Zg[oG] = GetHeroXP(zg[oG])
    set yg[Yg] = oG
    set Yg = Yg + 1
    if not IsTriggerEnabled(Wg)then
        call EnableTrigger(Wg)
    endif
    set bG = null
    return oG
endfunction
function b4 takes unit bG returns nothing
    local integer i = 0
    loop
        exitwhen i >= Yg
        exitwhen bG == zg[yg[i]]
        set i = i + 1
    endloop
    if i < Yg then
        call rG(yg[i])
        set Yg = Yg - 1
        set yg[i] = yg[Yg]
        if Yg <= 0 then
            call DisableTrigger(Wg)
        endif
    endif
    set bG = null
endfunction
function B4 takes nothing returns boolean
    local unit c4 = GetFilterUnit()
    if IsUnitType(c4, UNIT_TYPE_HERO)then
        call N4(c4)
    endif
    set c4 = null
    return false
endfunction
function C4 takes nothing returns boolean
    local integer i = 0
    local integer d4
    loop
        exitwhen i >= Yg
        if GetWidgetLife(zg[yg[i]]) > 0. then
            set d4 = GetHeroXP(zg[yg[i]])
            if d4 != Zg[yg[i]]then
                if GetLocalPlayer() == GetOwningPlayer(zg[yg[i]])and vB[GetPlayerId(GetOwningPlayer(zg[yg[i]])) + 1]then
                    set bj_lastCreatedTextTag = CreateTextTag()
                    call SetTextTagText(bj_lastCreatedTextTag, "+" + I2S(d4 - Zg[yg[i]]) + " exp", xg * 0.023 / 10)
                    call SetTextTagPos(bj_lastCreatedTextTag, GetWidgetX(zg[yg[i]]), GetWidgetY(zg[yg[i]]), og)
                    call SetTextTagColorBJ(bj_lastCreatedTextTag, Vg, Eg, Xg, Og)
                    call SetTextTagPermanent(bj_lastCreatedTextTag, false)
                    call SetTextTagLifespan(bj_lastCreatedTextTag, rg)
                    call SetTextTagFadepoint(bj_lastCreatedTextTag, ig)
                    call SetTextTagVelocity(bj_lastCreatedTextTag, (ag * 0.071 / 128) * Cos(ng * bj_DEGTORAD), (ag * 0.071 / 128) * Sin(ng * bj_DEGTORAD))
                    call SetTextTagVisibility(bj_lastCreatedTextTag, true)
                endif
                if IsPlayerInForce(GetLocalPlayer(), eB)and vB[GetPlayerId(GetLocalPlayer()) + 1]and GetOwningPlayer(zg[yg[i]]) == GetOwningPlayer(IB[GetPlayerId(GetLocalPlayer()) + 1])and IB[GetPlayerId(GetLocalPlayer()) + 1] != null then
                    set bj_lastCreatedTextTag = CreateTextTag()
                    call SetTextTagText(bj_lastCreatedTextTag, "+" + I2S(d4 - Zg[yg[i]]) + " exp", xg * 0.023 / 10)
                    call SetTextTagPos(bj_lastCreatedTextTag, GetWidgetX(zg[yg[i]]), GetWidgetY(zg[yg[i]]), og)
                    call SetTextTagColorBJ(bj_lastCreatedTextTag, Vg, Eg, Xg, Og)
                    call SetTextTagPermanent(bj_lastCreatedTextTag, false)
                    call SetTextTagLifespan(bj_lastCreatedTextTag, rg)
                    call SetTextTagFadepoint(bj_lastCreatedTextTag, ig)
                    call SetTextTagVelocity(bj_lastCreatedTextTag, (ag * 0.071 / 128) * Cos(ng * bj_DEGTORAD), (ag * 0.071 / 128) * Sin(ng * bj_DEGTORAD))
                    call SetTextTagVisibility(bj_lastCreatedTextTag, true)
                endif
                set Zg[yg[i]] = d4
            endif
        endif
        set i = i + 1
    endloop
    return false
endfunction
function D4 takes nothing returns nothing
    local integer i = 0
    local region r = CreateRegion()
    call TriggerRegisterTimerEvent(Wg, eg, true)
    call TriggerAddCondition(Wg, Condition(function C4))
    call DisableTrigger(Wg)
    call RegionAddRect(r, GetWorldBounds())
    call TriggerRegisterEnterRegion(CreateTrigger(), r, Filter(function B4))
    loop
        exitwhen i > 15
        call GroupEnumUnitsOfPlayer(bj_lastCreatedGroup, Player(i), Filter(function B4))
        set i = i + 1
    endloop
    set r = null
endfunction
function f4 takes unit bG returns nothing
    if IsUnitType(bG, UNIT_TYPE_HERO)and GetWidgetLife(bG) > 0. then
        call b4(bG)
    endif
    set bG = null
endfunction
function F4 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit()) != 'h03M')
endfunction
function g4 takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('Aloc', GetFilterUnit()) == 0)
endfunction
function G4 takes nothing returns boolean
    return GetBooleanAnd(F4(), g4())
endfunction
function h4 takes nothing returns boolean
    if(not(GetUnitMoveSpeed(GetEnumUnit()) >= 470.00))then
        return false
    endif
    return true
endfunction
function H4 takes nothing returns boolean
    if(not(IsUnitType(GetEnumUnit(), UNIT_TYPE_HERO) == true))then
        return false
    endif
    return true
endfunction
function j4 takes nothing returns nothing
    if(H4())then
        if(h4())then
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 10.00, (("|cffffcc00Movement Speed - " + (GetUnitName(GetEnumUnit()) + " : ")) + (I2S(R2I(GetUnitMoveSpeed(GetEnumUnit()))) + " range/s [Max]")))
        else
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 10.00, (("|cffffcc00Movement Speed - " + (GetUnitName(GetEnumUnit()) + " : ")) + (I2S(R2I(GetUnitMoveSpeed(GetEnumUnit()))) + " range/s")))
        endif
    else
    endif
endfunction
function J4 takes nothing returns nothing
    set yb[1] = GetUnitsOfPlayerMatching(GetTriggerPlayer(), Condition(function G4))
    call ForGroupBJ(yb[1], function j4)
    call DestroyGroup(yb[1])
endfunction
function k4 takes nothing returns nothing
    set ef = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(ef, Player(0), "-ms", true)
    call TriggerRegisterPlayerChatEvent(ef, Player(1), "-ms", true)
    call TriggerRegisterPlayerChatEvent(ef, Player(2), "-ms", true)
    call TriggerRegisterPlayerChatEvent(ef, Player(3), "-ms", true)
    call TriggerRegisterPlayerChatEvent(ef, Player(4), "-ms", true)
    call TriggerRegisterPlayerChatEvent(ef, Player(6), "-ms", true)
    call TriggerRegisterPlayerChatEvent(ef, Player(7), "-ms", true)
    call TriggerRegisterPlayerChatEvent(ef, Player(8), "-ms", true)
    call TriggerRegisterPlayerChatEvent(ef, Player(9), "-ms", true)
    call TriggerRegisterPlayerChatEvent(ef, Player(10), "-ms", true)
    call TriggerAddAction(ef, function J4)
endfunction
function K4 takes nothing returns boolean
    if(not(IsPlayerInForce(GetTriggerPlayer(), eB) == false))then
        return false
    endif
    if(not(S2R(SubStringBJ(GetEventPlayerChatString(), 6, StringLength(GetEventPlayerChatString()))) <= 2500.00))then
        return false
    endif
    if(not(S2R(SubStringBJ(GetEventPlayerChatString(), 6, StringLength(GetEventPlayerChatString()))) >= 1650.00))then
        return false
    endif
    return true
endfunction
function l4 takes nothing returns boolean
    if(not(IsPlayerInForce(GetTriggerPlayer(), eB) == true))then
        return false
    endif
    if(not(S2R(SubStringBJ(GetEventPlayerChatString(), 6, StringLength(GetEventPlayerChatString()))) <= 2500.00))then
        return false
    endif
    if(not(S2R(SubStringBJ(GetEventPlayerChatString(), 6, StringLength(GetEventPlayerChatString()))) >= 1650.00))then
        return false
    endif
    return true
endfunction
function L4 takes nothing returns boolean
    if(K4())then
        return true
    endif
    if(l4())then
        return true
    endif
    return false
endfunction
function m4 takes nothing returns boolean
    if(not L4())then
        return false
    endif
    return true
endfunction
function M4 takes nothing returns nothing
    set Yb[GetConvertedPlayerId(GetTriggerPlayer())] = S2R(SubStringBJ(GetEventPlayerChatString(), 6, StringLength(GetEventPlayerChatString())))
    call SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, Yb[GetConvertedPlayerId(GetTriggerPlayer())], 1.00)
    call DisplayTimedTextToForce(GetForceOfPlayer(GetTriggerPlayer()), 5.00, ("|cffffcc00Set Camera Height to " + I2S(R2I(Yb[GetConvertedPlayerId(GetTriggerPlayer())]))))
endfunction
function p4 takes nothing returns nothing
    set xf = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(xf, Player(0), "-cmr", false)
    call TriggerRegisterPlayerChatEvent(xf, Player(1), "-cmr", false)
    call TriggerRegisterPlayerChatEvent(xf, Player(2), "-cmr", false)
    call TriggerRegisterPlayerChatEvent(xf, Player(3), "-cmr", false)
    call TriggerRegisterPlayerChatEvent(xf, Player(4), "-cmr", false)
    call TriggerRegisterPlayerChatEvent(xf, Player(6), "-cmr", false)
    call TriggerRegisterPlayerChatEvent(xf, Player(7), "-cmr", false)
    call TriggerRegisterPlayerChatEvent(xf, Player(8), "-cmr", false)
    call TriggerRegisterPlayerChatEvent(xf, Player(9), "-cmr", false)
    call TriggerRegisterPlayerChatEvent(xf, Player(10), "-cmr", false)
    call TriggerAddCondition(xf, Condition(function m4))
    call TriggerAddAction(xf, function M4)
endfunction
function P4 takes nothing returns boolean
    if(not(zb[GetConvertedPlayerId(GetTriggerPlayer())] == false))then
        return false
    endif
    return true
endfunction
function q4 takes nothing returns nothing
    if(P4())then
        set zb[GetPlayerId(GetTriggerPlayer())] = true
        call DisplayTimedTextToForce(GetForceOfPlayer(GetTriggerPlayer()), 5.00, "|cffffcc00Turn on Display Damage|r")
    else
        set zb[GetPlayerId(GetTriggerPlayer())] = false
        call DisplayTimedTextToForce(GetForceOfPlayer(GetTriggerPlayer()), 5.00, "|cffffcc00Turn off Display Damage|r")
    endif
endfunction
function Q4 takes nothing returns nothing
    //No textdamage
    set of = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(of, Player(0), "-dmg", true)
    call TriggerRegisterPlayerChatEvent(of, Player(1), "-dmg", true)
    call TriggerRegisterPlayerChatEvent(of, Player(2), "-dmg", true)
    call TriggerRegisterPlayerChatEvent(of, Player(3), "-dmg", true)
    call TriggerRegisterPlayerChatEvent(of, Player(4), "-dmg", true)
    call TriggerRegisterPlayerChatEvent(of, Player(6), "-dmg", true)
    call TriggerRegisterPlayerChatEvent(of, Player(7), "-dmg", true)
    call TriggerRegisterPlayerChatEvent(of, Player(8), "-dmg", true)
    call TriggerRegisterPlayerChatEvent(of, Player(9), "-dmg", true)
    call TriggerRegisterPlayerChatEvent(of, Player(10), "-dmg", true)
    call TriggerAddAction(of, function q4)
endfunction
function s4 takes nothing returns nothing
    call Wh()
endfunction
function S4 takes nothing returns nothing
    set rf = CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(rf, 300.00)
    call TriggerAddAction(rf, function s4)
endfunction
function t4 takes nothing returns boolean
    if(not(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true))then
        return false
    endif
    if(not(IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), mB) == true))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(5)))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(11)))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(PLAYER_NEUTRAL_AGGRESSIVE)))then
        return false
    endif
    if(not(Zb[GetConvertedPlayerId(GetOwningPlayer(GetEnteringUnit()))] == null))then
        return false
    endif
    return true
endfunction
function T4 takes nothing returns nothing
    set Zb[GetConvertedPlayerId(GetOwningPlayer(GetEnteringUnit()))] = GetEnteringUnit()
    set Sc = true
endfunction
function U4 takes nothing returns nothing
    set nf = CreateTrigger()
    call TriggerRegisterEnterRectSimple(nf, VC)
    call TriggerRegisterEnterRectSimple(nf, EC)
    call TriggerAddCondition(nf, Condition(function t4))
    call TriggerAddAction(nf, function T4)
endfunction
function w4 takes nothing returns boolean
    if(not(IsPlayerInForce(GetTriggerPlayer(), eB) == true))then
        return false
    endif
    return true
endfunction
function W4 takes nothing returns nothing
    set IB[GetConvertedPlayerId(GetTriggerPlayer())] = GetTriggerUnit()
endfunction
function y4 takes nothing returns nothing
    set Vf = CreateTrigger()
    call DisableTrigger(Vf)
    call TriggerRegisterPlayerSelectionEventBJ(Vf, Player(0), true)
    call TriggerRegisterPlayerSelectionEventBJ(Vf, Player(1), true)
    call TriggerRegisterPlayerSelectionEventBJ(Vf, Player(2), true)
    call TriggerRegisterPlayerSelectionEventBJ(Vf, Player(3), true)
    call TriggerRegisterPlayerSelectionEventBJ(Vf, Player(4), true)
    call TriggerRegisterPlayerSelectionEventBJ(Vf, Player(6), true)
    call TriggerRegisterPlayerSelectionEventBJ(Vf, Player(7), true)
    call TriggerRegisterPlayerSelectionEventBJ(Vf, Player(8), true)
    call TriggerRegisterPlayerSelectionEventBJ(Vf, Player(9), true)
    call TriggerRegisterPlayerSelectionEventBJ(Vf, Player(10), true)
    call TriggerAddCondition(Vf, Condition(function w4))
    call TriggerAddAction(Vf, function W4)
endfunction
function Y4 takes nothing returns boolean
    if(not(IsPlayerInForce(GetTriggerPlayer(), eB) == true))then
        return false
    endif
    return true
endfunction
function z4 takes nothing returns nothing
    call ClearSelectionForPlayer(GetTriggerPlayer())
    set IB[GetConvertedPlayerId(GetTriggerPlayer())] = null
endfunction
function Z4 takes nothing returns nothing
    set Ef = CreateTrigger()
    call DisableTrigger(Ef)
    call TriggerRegisterPlayerEventEndCinematic(Ef, Player(0))
    call TriggerRegisterPlayerEventEndCinematic(Ef, Player(1))
    call TriggerRegisterPlayerEventEndCinematic(Ef, Player(2))
    call TriggerRegisterPlayerEventEndCinematic(Ef, Player(3))
    call TriggerRegisterPlayerEventEndCinematic(Ef, Player(4))
    call TriggerRegisterPlayerEventEndCinematic(Ef, Player(6))
    call TriggerRegisterPlayerEventEndCinematic(Ef, Player(7))
    call TriggerRegisterPlayerEventEndCinematic(Ef, Player(8))
    call TriggerRegisterPlayerEventEndCinematic(Ef, Player(9))
    call TriggerRegisterPlayerEventEndCinematic(Ef, Player(10))
    call TriggerAddCondition(Ef, Condition(function Y4))
    call TriggerAddAction(Ef, function z4)
endfunction
function v5 takes nothing returns boolean
    if(not(GetTriggerUnit() == IB[GetConvertedPlayerId(GetEnumPlayer())]))then
        return false
    endif
    return true
endfunction
function e5 takes nothing returns nothing
    if(v5())then
        call ClearSelectionForPlayer(GetEnumPlayer())
        set IB[GetConvertedPlayerId(GetEnumPlayer())] = null
    else
    endif
endfunction
function x5 takes nothing returns nothing
    call ForForce(eB, function e5)
endfunction
function o5 takes nothing returns nothing
    set Xf = CreateTrigger()
    call DisableTrigger(Xf)
    call TriggerRegisterAnyUnitEventBJ(Xf, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddAction(Xf, function x5)
endfunction
function r5 takes nothing returns boolean
    if(not(IsUnitAlly(IB[GetConvertedPlayerId(GetEnumPlayer())], Player(5)) == true))then
        return false
    endif
    return true
endfunction
function i5 takes nothing returns boolean
    if(not(IB[GetConvertedPlayerId(GetEnumPlayer())] != null))then
        return false
    endif
    if(not(GetOwningPlayer(IB[GetConvertedPlayerId(GetEnumPlayer())]) != Player(PLAYER_NEUTRAL_AGGRESSIVE)))then
        return false
    endif
    if(not(GetOwningPlayer(IB[GetConvertedPlayerId(GetEnumPlayer())]) != Player(PLAYER_NEUTRAL_PASSIVE)))then
        return false
    endif
    return true
endfunction
function a5 takes nothing returns nothing
    if(i5())then
        if(r5())then
            call SetPlayerAllianceBJ(Player(0), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(1), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(2), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(3), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(4), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(5), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(6), ALLIANCE_SHARED_VISION, false, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(7), ALLIANCE_SHARED_VISION, false, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(8), ALLIANCE_SHARED_VISION, false, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(9), ALLIANCE_SHARED_VISION, false, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(10), ALLIANCE_SHARED_VISION, false, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(11), ALLIANCE_SHARED_VISION, false, GetEnumPlayer())
        else
            call SetPlayerAllianceBJ(Player(0), ALLIANCE_SHARED_VISION, false, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(1), ALLIANCE_SHARED_VISION, false, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(2), ALLIANCE_SHARED_VISION, false, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(3), ALLIANCE_SHARED_VISION, false, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(4), ALLIANCE_SHARED_VISION, false, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(5), ALLIANCE_SHARED_VISION, false, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(6), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(7), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(8), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(9), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(10), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
            call SetPlayerAllianceBJ(Player(11), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
        endif
    else
        call SetPlayerAllianceBJ(Player(0), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
        call SetPlayerAllianceBJ(Player(1), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
        call SetPlayerAllianceBJ(Player(2), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
        call SetPlayerAllianceBJ(Player(3), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
        call SetPlayerAllianceBJ(Player(4), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
        call SetPlayerAllianceBJ(Player(5), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
        call SetPlayerAllianceBJ(Player(6), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
        call SetPlayerAllianceBJ(Player(7), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
        call SetPlayerAllianceBJ(Player(8), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
        call SetPlayerAllianceBJ(Player(9), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
        call SetPlayerAllianceBJ(Player(10), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
        call SetPlayerAllianceBJ(Player(11), ALLIANCE_SHARED_VISION, true, GetEnumPlayer())
    endif
endfunction
function n5 takes nothing returns nothing
    call ForForce(eB, function a5)
endfunction
function V5 takes nothing returns nothing
    set Of = CreateTrigger()
    call DisableTrigger(Of)
    call TriggerRegisterTimerEventPeriodic(Of, 0.50)
    call TriggerAddAction(Of, function n5)
endfunction
function E5 takes nothing returns boolean
    if(not(IsPlayerAlly(GetTriggerPlayer(), Player(5)) == true))then
        return false
    endif
    return true
endfunction
function X5 takes nothing returns nothing
    call ForceAddPlayerSimple(GetTriggerPlayer(), eB)
    call EnableTrigger(Vf)
    call EnableTrigger(Ef)
    call EnableTrigger(Xf)
    call EnableTrigger(Of)
    call ForGroupBJ(GetUnitsOfPlayerAll(GetTriggerPlayer()), function XJ)
    call SetPlayerStateBJ(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_GOLD, 0)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cffffcc00" + BB[GetConvertedPlayerId(GetTriggerPlayer())] + " Has Become an OBS!|r")
    set bB[GetConvertedPlayerId(GetTriggerPlayer())] = "ReplaceableTextures\\WorldEditUI\\Doodad-Cinematic.blp"
    set LB[GetConvertedPlayerId(GetTriggerPlayer())] = ("[OBS]" + GetPlayerName(GetTriggerPlayer()))
    call ClearSelectionForPlayer(GetTriggerPlayer())
    if(E5())then
        call SetPlayerAllianceBJ(Player(6), ALLIANCE_SHARED_VISION, true, GetTriggerPlayer())
        call SetPlayerAllianceBJ(Player(7), ALLIANCE_SHARED_VISION, true, GetTriggerPlayer())
        call SetPlayerAllianceBJ(Player(8), ALLIANCE_SHARED_VISION, true, GetTriggerPlayer())
        call SetPlayerAllianceBJ(Player(9), ALLIANCE_SHARED_VISION, true, GetTriggerPlayer())
        call SetPlayerAllianceBJ(Player(10), ALLIANCE_SHARED_VISION, true, GetTriggerPlayer())
        call SetPlayerAllianceBJ(Player(11), ALLIANCE_SHARED_VISION, true, GetTriggerPlayer())
        call CreateFogModifierRectBJ(true, GetTriggerPlayer(), FOG_OF_WAR_VISIBLE, GC)
    else
        call SetPlayerAllianceBJ(Player(0), ALLIANCE_SHARED_VISION, true, GetTriggerPlayer())
        call SetPlayerAllianceBJ(Player(1), ALLIANCE_SHARED_VISION, true, GetTriggerPlayer())
        call SetPlayerAllianceBJ(Player(2), ALLIANCE_SHARED_VISION, true, GetTriggerPlayer())
        call SetPlayerAllianceBJ(Player(3), ALLIANCE_SHARED_VISION, true, GetTriggerPlayer())
        call SetPlayerAllianceBJ(Player(4), ALLIANCE_SHARED_VISION, true, GetTriggerPlayer())
        call SetPlayerAllianceBJ(Player(5), ALLIANCE_SHARED_VISION, true, GetTriggerPlayer())
        call CreateFogModifierRectBJ(true, GetTriggerPlayer(), FOG_OF_WAR_VISIBLE, gC)
    endif
endfunction
function O5 takes nothing returns nothing
    set Rf = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(Rf, Player(0), "-obs", true)
    call TriggerRegisterPlayerChatEvent(Rf, Player(1), "-obs", true)
    call TriggerRegisterPlayerChatEvent(Rf, Player(2), "-obs", true)
    call TriggerRegisterPlayerChatEvent(Rf, Player(3), "-obs", true)
    call TriggerRegisterPlayerChatEvent(Rf, Player(4), "-obs", true)
    call TriggerRegisterPlayerChatEvent(Rf, Player(6), "-obs", true)
    call TriggerRegisterPlayerChatEvent(Rf, Player(7), "-obs", true)
    call TriggerRegisterPlayerChatEvent(Rf, Player(8), "-obs", true)
    call TriggerRegisterPlayerChatEvent(Rf, Player(9), "-obs", true)
    call TriggerRegisterPlayerChatEvent(Rf, Player(10), "-obs", true)
    call TriggerAddAction(Rf, function X5)
endfunction
function R5 takes nothing returns nothing
    call TriggerSleepAction(15.00)
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00OB (Observer) Mode Has Been Disabled")
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 5., "|cffffcc00OBS (Observer All) Mode Has Been Disabled")
    call DisableTrigger(Rf)
endfunction
function I5 takes nothing returns nothing
    set If = CreateTrigger()
    call TriggerAddAction(If, function R5)
endfunction
function A5 takes nothing returns nothing
    call DisplayTimedTextToForce(GetForceOfPlayer(GetTriggerPlayer()), 10.00,"|cffffcc00-cmr <height>|r to set camera height, from 1650 to 2500 (OBS up to 2500).
    |cffffcc00 - dmg|r to on / off display damage.
    |cffffcc00 - exp|r to on / off display exprience.
    |cffffcc00 - ms|r to show Hero movement speed.")
endfunction
function N5 takes nothing returns nothing
    set Af = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(Af, Player(0), "-tips", true)
    call TriggerRegisterPlayerChatEvent(Af, Player(1), "-tips", true)
    call TriggerRegisterPlayerChatEvent(Af, Player(2), "-tips", true)
    call TriggerRegisterPlayerChatEvent(Af, Player(3), "-tips", true)
    call TriggerRegisterPlayerChatEvent(Af, Player(4), "-tips", true)
    call TriggerRegisterPlayerChatEvent(Af, Player(6), "-tips", true)
    call TriggerRegisterPlayerChatEvent(Af, Player(7), "-tips", true)
    call TriggerRegisterPlayerChatEvent(Af, Player(8), "-tips", true)
    call TriggerRegisterPlayerChatEvent(Af, Player(9), "-tips", true)
    call TriggerRegisterPlayerChatEvent(Af, Player(10), "-tips", true)
    call TriggerAddAction(Af, function A5)
endfunction
function b5 takes nothing returns boolean
    if(not(IsUnitAlly(GetKillingUnitBJ(), GetOwningPlayer(GetDyingUnit())) == true))then
        return false
    endif
    return true
endfunction
function B5 takes nothing returns boolean
    if(not(IsUnitVisible(GetTriggerUnit(), GetEnumPlayer()) == true))then
        return false
    endif
    return true
endfunction
function c5 takes nothing returns nothing
    if(B5())then
        set NB = GetForceOfPlayer(GetEnumPlayer())
        call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), NB)
        call DestroyForce(NB)
    else
    endif
endfunction
function C5 takes nothing returns nothing
    call CreateTextTagUnitBJ((cB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] + "!|r"), GetDyingUnit(), 0, 10, 100.00, 0.00, 0.00, 0)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 2.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 1.00)
    call ShowTextTagForceBJ(false, GetLastCreatedTextTag(), GetPlayersAll())
    call ForForce(AB[1], function c5)
endfunction
function d5 takes nothing returns nothing
    set Nf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Nf, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(Nf, Condition(function b5))
    call TriggerAddAction(Nf, function C5)
endfunction
function D5 takes nothing returns boolean
    if GetSpellAbilityId() == 'A009' then
        return true
    endif
    return false
endfunction
function f5 takes nothing returns nothing
    local integer lv = GetUnitAbilityLevel(GetTriggerUnit(), 'A009')
    set i1 = i1 + 1
    set u1[i1] = GetTriggerUnit()
    call SetPlayerAbilityAvailable(GetOwningPlayer(u1[i1]), 'Aspb', false)
    call UnitAddAbility(u1[i1], 'Aspb')
    call SetUnitAbilityLevel(u1[i1], 'AZ01', lv)
    call SetUnitAbilityLevel(u1[i1], 'AZ02', lv)
    call TriggerSleepAction(40)
    set i2 = i2 + 1
    if i1 == i2 or(i1 != i2 and u1[i1] != u1[i2])then
        call UnitRemoveAbility(u1[i2], 'Aspb')
        call UnitRemoveAbility(u1[i2], 'B01F')
    endif
endfunction
function F5 takes nothing returns nothing
    set bf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(bf, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(bf, Condition(function D5))
    call TriggerAddAction(bf, function f5)
endfunction
function g5 takes nothing returns boolean
    if(not(GetSpellAbilityId() == 'A038'))then
        return false
    endif
    return true
endfunction
function G5 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit()) == 'n01V')
endfunction
function h5 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
endfunction
function H5 takes nothing returns nothing
    set RB = GetUnitsOfPlayerMatching(GetOwningPlayer(GetTriggerUnit()), Condition(function G5))
    call ForGroupBJ(RB, function h5)
    call DestroyGroup(RB)
endfunction
function j5 takes nothing returns nothing
    set Bf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Bf, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(Bf, Condition(function g5))
    call TriggerAddAction(Bf, function H5)
endfunction
function J5 takes nothing returns nothing
    set rv = rv - 1
    set l1 = GetUnitLoc(u3)
    set l2 = GetUnitLoc(u4)
    set l3 = PolarProjectionBJ(l1, 50, AngleBetweenPoints(l1, l2))
    call SetUnitPositionLoc(u3, l3)
    call SetUnitFacing(u3, AngleBetweenPoints(l1, l2))
    call RemoveLocation(l1)
    call RemoveLocation(l2)
    call RemoveLocation(l3)
    if rv <= 0 then
        set rv = 0
        call SetUnitPathing(u3, true)
        call IssueTargetOrder(u3, "attack", u4)
        call DisableTrigger(cf)
    endif
endfunction
function k5 takes nothing returns nothing
    set cf = CreateTrigger()
    call DisableTrigger(cf)
    call TriggerRegisterTimerEventPeriodic(cf, 0.03)
    call TriggerAddAction(cf, function J5)
endfunction
function K5 takes nothing returns boolean
    if(not(GetSpellAbilityId() == 'A0ET'))then
        return false
    endif
    return true
endfunction
function l5 takes nothing returns nothing
    local location L5 = GetSpellTargetLoc()
    call PlaySoundAtPointBJ(wD, 100, L5, 50)
    set Gg = CreateUnit(GetOwningPlayer(GetTriggerUnit()), 'h01P', GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), GetRandomInt(0, 360))
    call Xh(GetOwningPlayer(GetTriggerUnit()), GetTriggerUnit(), 'A09U', GetUnitAbilityLevel(GetTriggerUnit(), 'A0ET'), "carrionswarm", 5, L5, false)
    call RemoveLocation(L5)
    set L5 = null
endfunction
function m5 takes nothing returns nothing
    set Cf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Cf, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(Cf, Condition(function K5))
    call TriggerAddAction(Cf, function l5)
endfunction
function M5 takes nothing returns boolean
    if(not(GetSpellAbilityId() == 'A09U'))then
        return false
    endif
    return true
endfunction
function p5 takes nothing returns boolean
    if(not(MB <= 50))then
        return false
    endif
    return true
endfunction
function P5 takes nothing returns nothing
    if(p5())then
        set MB = (MB + 1)
        call EnableTrigger(Df)
    else
        set MB = 1
    endif
    set pB[MB] = GetSpellAbilityUnit()
    set PB = GetUnitLoc(pB[MB])
    set qB[1] = GetSpellTargetLoc()
    set QB[MB] = AngleBetweenPoints(PB, qB[1])
    set sB[MB] = 40.00
    call CreateNUnitsAtLoc(1, 'h03Q', GetOwningPlayer(pB[MB]), PB, QB[MB])
    call AddSpecialEffectTargetUnitBJ("chest", GetLastCreatedUnit(), "Abilities\\Weapons\\SludgeMissile\\SludgeMissile.mdl")
    call GroupAddUnitSimple(GetLastCreatedUnit(), SB)
    set tB[((MB * 100) - 99)] = GetLastCreatedUnit()
    set TB[MB] = 'h03Q'
    set uB[MB] = 1
    call SetUnitUserData(GetLastCreatedUnit(), MB)
    call RemoveLocation(PB)
    call RemoveLocation(qB[1])
endfunction
function q5 takes nothing returns nothing
    set df = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(df, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(df, Condition(function M5))
    call TriggerAddAction(df, function P5)
endfunction
function Q5 takes nothing returns boolean
    if(not(GetForLoopIndexA() == 1))then
        return false
    endif
    return true
endfunction
function s5 takes nothing returns boolean
    if(not(DistanceBetweenPoints(PB, qB[1]) <= 40.00))then
        return false
    endif
    return true
endfunction
function S5 takes nothing returns boolean
    if(not(uB[UB] <= 2))then
        return false
    endif
    return true
endfunction
function t5 takes nothing returns boolean
    if((RectContainsUnit(GetPlayableMapRect(), tB[wB]) == false))then
        return true
    endif
    if((DistanceBetweenPoints(PB, qB[1]) <= 40.00))then
        return true
    endif
    return false
endfunction
function T5 takes nothing returns boolean
    if(not t5())then
        return false
    endif
    return true
endfunction
function u5 takes nothing returns boolean
    if(not(uB[UB] == 0))then
        return false
    endif
    return true
endfunction
function U5 takes nothing returns boolean
    if(not(WB[UB] == pB[UB]))then
        return false
    endif
    return true
endfunction
function w5 takes nothing returns boolean
    if(not(DistanceBetweenPoints(PB, qB[1]) >= 45.00))then
        return false
    endif
    return true
endfunction
function W5 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) != true)
endfunction
function y5 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(pB[UB])) == true)
endfunction
function Y5 takes nothing returns boolean
    return GetBooleanAnd(W5(), y5())
endfunction
function z5 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit()) == true)
endfunction
function Z5 takes nothing returns boolean
    return(IsUnitDeadBJ(GetFilterUnit()) == false)
endfunction
function v6 takes nothing returns boolean
    return GetBooleanAnd(z5(), Z5())
endfunction
function e6 takes nothing returns boolean
    return(GetFilterUnit() != pB[UB])
endfunction
function x6 takes nothing returns boolean
    return GetBooleanAnd(v6(), e6())
endfunction
function o6 takes nothing returns boolean
    return GetBooleanAnd(Y5(), x6())
endfunction
function r6 takes nothing returns boolean
    return(GetOwningPlayer(GetFilterUnit()) != Player(PLAYER_NEUTRAL_PASSIVE))
endfunction
function i6 takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('Aloc', GetFilterUnit()) == 0)
endfunction
function a6 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL) == false)
endfunction
function n6 takes nothing returns boolean
    return GetBooleanAnd(i6(), a6())
endfunction
function V6 takes nothing returns boolean
    return GetBooleanAnd(r6(), n6())
endfunction
function E6 takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('Avul', GetFilterUnit()) == 0)
endfunction
function X6 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit()) != 'e02S')
endfunction
function O6 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit()) != 'h011')
endfunction
function R6 takes nothing returns boolean
    return GetBooleanAnd(X6(), O6())
endfunction
function I6 takes nothing returns boolean
    return GetBooleanAnd(E6(), R6())
endfunction
function A6 takes nothing returns boolean
    return GetBooleanAnd(V6(), I6())
endfunction
function N6 takes nothing returns boolean
    return GetBooleanAnd(o6(), A6())
endfunction
function b6 takes nothing returns boolean
    if(not(xc[2] < xc[1]))then
        return false
    endif
    return true
endfunction
function B6 takes nothing returns nothing
    set qB[2] = GetUnitLoc(GetEnumUnit())
    set xc[2] = DistanceBetweenPoints(qB[2], qB[1])
    if(b6())then
        set xc[1] = xc[2]
    else
    endif
    call RemoveLocation(qB[2])
endfunction
function c6 takes nothing returns boolean
    if(not(IsUnitEnemy(WB[UB], GetOwningPlayer(pB[UB])) == true))then
        return false
    endif
    return true
endfunction
function C6 takes nothing returns boolean
    if(not(xc[2] <= xc[1]))then
        return false
    endif
    return true
endfunction
function d6 takes nothing returns nothing
    set qB[2] = GetUnitLoc(GetEnumUnit())
    set xc[2] = DistanceBetweenPoints(qB[2], qB[1])
    if(C6())then
        set WB[UB] = GetEnumUnit()
        set yB[UB] = GetEnumUnit()
        call SetUnitPathing(WB[UB], false)
        call PauseUnitBJ(true, yB[UB])
        if(c6())then
            call UnitDamageTargetBJ(pB[UB], WB[UB], (50.00 + (25.00 * I2R(GetUnitAbilityLevelSwapped('A09U', pB[UB])))), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
            call bh(GetOwningPlayer(pB[UB]), pB[UB], WB[UB], 'A09S', 1, "slow", 2, false)
            call AddSpecialEffectTargetUnitBJ("origin", WB[UB], "Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl")
            call DestroyEffectBJ(GetLastCreatedEffectBJ())
        else
        endif
    else
    endif
    call RemoveLocation(qB[2])
endfunction
function D6 takes nothing returns boolean
    if(not(CountUnitsInGroup(vc) > 0))then
        return false
    endif
    return true
endfunction
function f6 takes nothing returns boolean
    if(not(YB[GetUnitUserData(GetEnumUnit())] >= (600.00 + (50.00 * I2R(GetUnitAbilityLevelSwapped('A09U', pB[UB]))))))then
        return false
    endif
    return true
endfunction
function F6 takes nothing returns boolean
    if(not(WB[UB] == null))then
        return false
    endif
    return true
endfunction
function g6 takes nothing returns nothing
    set UB = GetUnitUserData(GetEnumUnit())
    if(F6())then
        set wB = (((UB * 100) - 100) + uB[UB])
        set YB[GetUnitUserData(GetEnumUnit())] = (YB[GetUnitUserData(GetEnumUnit())] + sB[UB])
        set qB[1] = GetUnitLoc(GetEnumUnit())
        set PB = PolarProjectionBJ(qB[1], sB[UB], QB[UB])
        call RemoveLocation(qB[1])
        call SetUnitPositionLocFacingBJ(GetEnumUnit(), PB, QB[UB])
        call RemoveLocation(PB)
        set PB = GetUnitLoc(pB[UB])
        set qB[1] = GetUnitLoc(tB[wB])
        if(w5())then
            call RemoveLocation(PB)
            set PB = GetUnitLoc(pB[UB])
            set uB[UB] = (uB[UB] + 1)
            set wB = (((UB * 100) - 100) + uB[UB])
            call CreateNUnitsAtLoc(1, TB[UB], GetOwningPlayer(pB[UB]), PB, GetUnitFacing(tB[(wB - 1)]))
            set tB[wB] = GetLastCreatedUnit()
            call RemoveLocation(PB)
        else
            call RemoveLocation(PB)
        endif
        call RemoveLocation(qB[1])
        set bj_forLoopAIndex = 2
        set bj_forLoopAIndexEnd = uB[UB]
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            set wB = (((UB * 100) - 100) + GetForLoopIndexA())
            set qB[1] = GetUnitLoc(tB[wB])
            set qB[2] = GetUnitLoc(tB[(wB - 1)])
            set PB = PolarProjectionBJ(qB[2], 40.00, AngleBetweenPoints(qB[2], qB[1]))
            call SetUnitPositionLocFacingBJ(tB[wB], PB, AngleBetweenPoints(qB[1], qB[2]))
            call RemoveLocation(PB)
            call RemoveLocation(qB[1])
            call RemoveLocation(qB[2])
            set bj_forLoopAIndex = bj_forLoopAIndex + 1
        endloop
        set qB[1] = GetUnitLoc(GetEnumUnit())
        set vc = GetUnitsInRangeOfLocMatching(110.00, qB[1], Condition(function N6))
        if(D6())then
            set ec = GroupPickRandomUnit(vc)
            set qB[3] = GetUnitLoc(ec)
            set xc[1] = DistanceBetweenPoints(qB[3], qB[1])
            call ForGroupBJ(vc, function B6)
            call ForGroupBJ(vc, function d6)
            call RemoveLocation(qB[3])
        else
        endif
        call RemoveLocation(qB[1])
        call DestroyGroup(vc)
        if(f6())then
            set WB[UB] = pB[UB]
        else
        endif
    else
        if(U5())then
            set wB = (((UB * 100) - 100) + uB[UB])
            set qB[1] = GetUnitLoc(pB[UB])
            set qB[2] = GetUnitLoc(tB[wB])
            set qB[3] = GetUnitLoc(tB[(wB + 1)])
            set PB = PolarProjectionBJ(qB[2], sB[UB], AngleBetweenPoints(qB[2], qB[1]))
            call SetUnitPositionLocFacingBJ(tB[wB], PB, AngleBetweenPoints(qB[3], qB[2]))
            call RemoveLocation(PB)
            call RemoveLocation(qB[1])
            call RemoveLocation(qB[2])
            set bj_forLoopAIndex = 1
            set bj_forLoopAIndexEnd = (uB[UB] - 1)
            loop
                exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                set wB = (((UB * 100) - 100) + GetForLoopIndexA())
                set qB[1] = GetUnitLoc(tB[(wB + 1)])
                set qB[2] = GetUnitLoc(tB[wB])
                set PB = PolarProjectionBJ(qB[2], sB[UB], AngleBetweenPoints(qB[2], qB[1]))
                call SetUnitPositionLocFacingBJ(tB[wB], PB, AngleBetweenPoints(qB[1], qB[2]))
                call RemoveLocation(PB)
                call RemoveLocation(qB[1])
                call RemoveLocation(qB[2])
                set bj_forLoopAIndex = bj_forLoopAIndex + 1
            endloop
            set wB = (((UB * 100) - 100) + uB[UB])
            set PB = GetUnitLoc(tB[wB])
            set qB[1] = GetUnitLoc(pB[UB])
            if(T5())then
                set uB[UB] = (uB[UB] - 1)
                call VG(tB[wB])
            else
            endif
            if(u5())then
                set YB[UB] = 0.00
                call SetUnitPathing(WB[UB], true)
                call SetUnitPathing(yB[UB], true)
                call PauseUnitBJ(false, yB[UB])
                call GroupRemoveUnitSimple(WB[UB], zB)
                set yB[UB] = null
                set WB[UB] = null
                set ZB[UB] = 0.00
            else
            endif
            call RemoveLocation(PB)
            call RemoveLocation(qB[1])
        else
            set wB = (((UB * 100) - 100) + uB[UB])
            set qB[1] = GetUnitLoc(pB[UB])
            set qB[2] = GetUnitLoc(tB[wB])
            set qB[3] = GetUnitLoc(tB[(wB + 1)])
            set PB = PolarProjectionBJ(qB[2], sB[UB], AngleBetweenPoints(qB[2], qB[1]))
            call SetUnitPositionLocFacingBJ(tB[wB], PB, AngleBetweenPoints(qB[3], qB[2]))
            call RemoveLocation(PB)
            call RemoveLocation(qB[1])
            call RemoveLocation(qB[2])
            set bj_forLoopAIndex = 1
            set bj_forLoopAIndexEnd = (uB[UB] - 1)
            loop
                exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                set wB = (((UB * 100) - 100) + GetForLoopIndexA())
                set qB[1] = GetUnitLoc(tB[(wB + 1)])
                set qB[2] = GetUnitLoc(tB[wB])
                set PB = PolarProjectionBJ(qB[2], sB[UB], AngleBetweenPoints(qB[2], qB[1]))
                if(Q5())then
                    call SetUnitPositionLoc(WB[UB], PB)
                else
                endif
                call SetUnitPositionLocFacingBJ(tB[wB], PB, AngleBetweenPoints(qB[1], qB[2]))
                call RemoveLocation(PB)
                call RemoveLocation(qB[1])
                call RemoveLocation(qB[2])
                set bj_forLoopAIndex = bj_forLoopAIndex + 1
            endloop
            set wB = (((UB * 100) - 100) + uB[UB])
            set PB = GetUnitLoc(tB[wB])
            set qB[1] = GetUnitLoc(pB[UB])
            if(s5())then
                set uB[UB] = (uB[UB] - 1)
                call VG(tB[wB])
            else
            endif
            call RemoveLocation(PB)
            call RemoveLocation(qB[1])
            if(S5())then
                call SetUnitPathing(WB[UB], true)
                call SetUnitPathing(yB[UB], true)
                call PauseUnitBJ(false, yB[UB])
                call PauseUnitBJ(false, WB[UB])
                set WB[UB] = pB[UB]
            else
            endif
        endif
    endif
endfunction
function G6 takes nothing returns boolean
    if(not(IsUnitGroupEmptyBJ(SB) == false))then
        return false
    endif
    return true
endfunction
function h6 takes nothing returns nothing
    if(G6())then
        call ForGroupBJ(SB, function g6)
    else
        call KillUnit((Gg))
        call DisableTrigger(GetTriggeringTrigger())
    endif
endfunction
function H6 takes nothing returns nothing
    set Df = CreateTrigger()
    call DisableTrigger(Df)
    call TriggerRegisterTimerEventPeriodic(Df, 0.04)
    call TriggerAddAction(Df, function h6)
endfunction
function j6 takes nothing returns boolean
    if((GetUnitTypeId(GetTriggerUnit()) == 'hbar'))then
        return true
    endif
    if((GetUnitTypeId(GetTriggerUnit()) == 'usep'))then
        return true
    endif
    return false
endfunction
function J6 takes nothing returns boolean
    if((UnitHasBuffBJ(GetAttacker(), 'BUan') == true))then
        return true
    endif
    if((UnitHasBuffBJ(GetAttacker(), 'B018') == true))then
        return true
    endif
    if((UnitHasBuffBJ(GetAttacker(), 'B019') == true))then
        return true
    endif
    return false
endfunction
function k6 takes nothing returns boolean
    if(not j6())then
        return false
    endif
    if(not J6())then
        return false
    endif
    return true
endfunction
function K6 takes nothing returns nothing
    call IssueImmediateOrderBJ(GetAttacker(), "stop")
endfunction
function l6 takes nothing returns nothing
    set ff = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(ff, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(ff, Condition(function k6))
    call TriggerAddAction(ff, function K6)
endfunction
function L6 takes nothing returns boolean
    if(not(IsUnitIllusionBJ(GetTriggerUnit()) == false))then
        return false
    endif
    if(not(GetLearnedSkillBJ() == 'TSPA'))then
        return false
    endif
    return true
endfunction
function m6 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('TSPA', GetTriggerUnit()) == 1))then
        return false
    endif
    return true
endfunction
function M6 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('TSPA', GetTriggerUnit()) > 1))then
        return false
    endif
    return true
endfunction
function p6 takes nothing returns nothing
    if(m6())then
        set Oc[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = GetTriggerUnit()
        set Ac = GetUnitLoc(GetTriggerUnit())
        call CreateNUnitsAtLoc(1, 'u00O', GetOwningPlayer(GetTriggerUnit()), Ac, bj_UNIT_FACING)
        set Rc[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = GetLastCreatedUnit()
        call RemoveLocation(Ac)
        call EnableTrigger(gf)
    else
    endif
    if(M6())then
        call SetUnitAbilityLevelSwapped('A0A8', Rc[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], GetUnitAbilityLevelSwapped('TSPA', GetTriggerUnit()))
    else
    endif
endfunction
function P6 takes nothing returns nothing
    set Ff = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Ff, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(Ff, Condition(function L6))
    call TriggerAddAction(Ff, function p6)
endfunction
function q6 takes nothing returns boolean
    if(not(Rc[Ic] != null))then
        return false
    endif
    return true
endfunction
function Q6 takes nothing returns boolean
    if(not(IsUnitAliveBJ(Oc[Ic]) == true))then
        return false
    endif
    return true
endfunction
function s6 takes nothing returns boolean
    if(not(Oc[Ic] != null))then
        return false
    endif
    return true
endfunction
function S6 takes nothing returns nothing
    set Ic = 1
    loop
        exitwhen Ic > 16
        if(s6())then
            if(Q6())then
                call ShowUnitShow(Rc[Ic])
                call PauseUnitBJ(false, Rc[Ic])
                call SetUnitOwner(Rc[Ic], ConvertedPlayer(Ic), true)
                set Ac = GetUnitLoc(Oc[Ic])
                call SetUnitPositionLoc(Rc[Ic], Ac)
                call RemoveLocation(Ac)
            else
                call ShowUnitHide(Rc[Ic])
                call PauseUnitBJ(true, Rc[Ic])
            endif
        else
            if(q6())then
                call VG(Rc[Ic])
            else
            endif
        endif
        set Ic = Ic + 1
    endloop
endfunction
function t6 takes nothing returns nothing
    set gf = CreateTrigger()
    call DisableTrigger(gf)
    call TriggerRegisterTimerEventPeriodic(gf, 0.03)
    call TriggerAddAction(gf, function S6)
endfunction
function T6 takes nothing returns boolean
    if(not(GetRandomInt(1, 100) <= 50))then
        return false
    endif
    return true
endfunction
function u6 takes nothing returns boolean
    if(not(GetTriggerUnit() == Nc[1]))then
        return false
    endif
    return true
endfunction
function U6 takes nothing returns boolean
    if(not(GetTriggerUnit() == Nc[2]))then
        return false
    endif
    return true
endfunction
function w6 takes nothing returns boolean
    if(not(GetTriggerUnit() == Nc[3]))then
        return false
    endif
    return true
endfunction
function W6 takes nothing returns nothing
    if(u6())then
        set Bc = GetUnitLoc(GetTriggerUnit())
        call CreateItemLoc('I02W', Bc)
        call RemoveLocation(Bc)
    else
    endif
    if(U6())then
        set Bc = GetUnitLoc(GetTriggerUnit())
        call CreateItemLoc('I02U', Bc)
        call RemoveLocation(Bc)
    else
    endif
    if(w6())then
        set Bc = GetUnitLoc(GetTriggerUnit())
        call CreateItemLoc('I02V', Bc)
        call RemoveLocation(Bc)
    else
    endif
endfunction
function y6 takes nothing returns nothing
    set Gf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Gf, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(Gf, Condition(function T6))
    call TriggerAddAction(Gf, function W6)
endfunction
function Y6 takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem()) == 'I02W'))then
        return false
    endif
    if(not(Nc[4] == null))then
        return false
    endif
    return true
endfunction
function z6 takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem()) == 'I02U'))then
        return false
    endif
    if(not(Nc[5] == null))then
        return false
    endif
    return true
endfunction
function Z6 takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem()) == 'I02V'))then
        return false
    endif
    if(not(Nc[6] == null))then
        return false
    endif
    return true
endfunction
function v7 takes nothing returns nothing
    if(Y6())then
        call UnitAddAbilityBJ('A0A9', GetTriggerUnit())
        call SetUnitAbilityLevelSwapped('A0A9', GetTriggerUnit(), bc)
        call UnitMakeAbilityPermanent(GetTriggerUnit(), true, 'A0A9')
        set Nc[4] = GetTriggerUnit()
        call DisplayTimedTextToForce(GetForceOfPlayer(GetTriggerPlayer()), 5.00, ("|cfffdcc24Damage Rune: Increase " + I2S(20 * bc) + " damage in 30 seconds.|r"))
        call TriggerSleepAction(30.00)
        call UnitRemoveAbilityBJ('A0A9', Nc[4])
        call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(Nc[4])), 5.00, ("|cfffdcc24Damage Rune has expired.|r"))
        set Nc[4] = null
    else
    endif
    if(z6())then
        call UnitAddAbilityBJ('A0AB', GetTriggerUnit())
        call SetUnitAbilityLevelSwapped('A0AB', GetTriggerUnit(), bc)
        call UnitMakeAbilityPermanent(GetTriggerUnit(), true, 'A0AB')
        set Nc[5] = GetTriggerUnit()
        call DisplayTimedTextToForce(GetForceOfPlayer(GetTriggerPlayer()), 5.00, ("|cfffdcc24Attack Speed Rune: Increase " + I2S(25 + (5 * bc)) + "% attack speed in 30 seconds.|r"))
        call TriggerSleepAction(30.00)
        call UnitRemoveAbilityBJ('A0AB', Nc[5])
        call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(Nc[5])), 5.00, ("|cfffdcc24Attack Speed Rune has expired.|r"))
        set Nc[5] = null
    else
    endif
    if(Z6())then
        call UnitAddAbilityBJ('A0AA', GetTriggerUnit())
        call SetUnitAbilityLevelSwapped('A0AA', GetTriggerUnit(), bc)
        call UnitMakeAbilityPermanent(GetTriggerUnit(), true, 'A0AA')
        set Nc[6] = GetTriggerUnit()
        call DisplayTimedTextToForce(GetForceOfPlayer(GetTriggerPlayer()), 5.00, ("|cfffdcc24Armor Rune: Increase " + I2S(5 + bc) + " armor in 30 seconds.|r"))
        call TriggerSleepAction(30.00)
        call UnitRemoveAbilityBJ('A0AA', Nc[6])
        call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(Nc[6])), 5.00, ("|cfffdcc24Armor Rune has expired.|r"))
        set Nc[6] = null
    else
    endif
endfunction
function e7 takes nothing returns nothing
    set hf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(hf, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(hf, function v7)
endfunction
function x7 takes nothing returns boolean
    if(not(GetSpellAbilityId() == 'A0AO'))then
        return false
    endif
    return true
endfunction
function o7 takes nothing returns boolean
    if(not(gc == true))then
        return false
    endif
    return true
endfunction
function r7 takes nothing returns boolean
    if(not(IsTerrainPathableBJ(GetSpellTargetLoc(), PATHING_TYPE_WALKABILITY) == true))then
        return false
    endif
    return true
endfunction
function i7 takes nothing returns nothing
    if(o7())then
        call IssueImmediateOrderById(GetTriggerUnit(), OrderId("stop"))
        call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())), 1, "|cffffcc00Skill still in action!|r")
        call TriggerSleepAction(0.01)
        call ResetUnitAnimation(GetTriggerUnit())
    else
    endif
    if(r7())then
        call IssueImmediateOrderById(GetTriggerUnit(), OrderId("stop"))
        call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())), 1, "|cffffcc00Can't move there!|r")
        call TriggerSleepAction(0.01)
        call ResetUnitAnimation(GetTriggerUnit())
    else
    endif
endfunction
function a7 takes nothing returns nothing
    set Hf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Hf, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(Hf, Condition(function x7))
    call TriggerAddAction(Hf, function i7)
endfunction
function n7 takes nothing returns boolean
    if(not(GetSpellAbilityId() == 'A0AO'))then
        return false
    endif
    if(not(gc == false))then
        return false
    endif
    return true
endfunction
function V7 takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == 'Nbrn'))then
        return false
    endif
    return true
endfunction
function E7 takes nothing returns nothing
    set gc = true
    set Dc = GetTriggerUnit()
    set fc = GetUnitLoc(GetTriggerUnit())
    set Fc = GetSpellTargetLoc()
    set dc = AngleBetweenPoints(fc, Fc)
    set Cc = R2I(((DistanceBetweenPoints(fc, Fc) / 1200.00) * 50.00))
    if(V7())then
        call CreateNUnitsAtLoc(1, 'h01L', GetOwningPlayer(GetTriggerUnit()), fc, dc)
    else
        call CreateNUnitsAtLoc(1, 'h01M', GetOwningPlayer(GetTriggerUnit()), fc, dc)
    endif
    set cc = GetLastCreatedUnit()
    call SetUnitTimeScalePercent(cc, 120.00)
    call SetUnitAnimationByIndex(cc, 8)
    call SetUnitVertexColor(cc, 75, 75, 75, 100)
    call EnableTrigger(Jf)
endfunction
function X7 takes nothing returns nothing
    set jf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(jf, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(jf, Condition(function n7))
    call TriggerAddAction(jf, function E7)
endfunction
function O7 takes nothing returns boolean
    if(not(Cc > 0))then
        return false
    endif
    return true
endfunction
function R7 takes nothing returns nothing
    if(O7())then
        set Cc = (Cc - 1)
        set Gc = GetUnitLoc(cc)
        call SetUnitPositionLoc(cc, PolarProjectionBJ(Gc, (1200.00 * 0.02), dc))
        call RemoveLocation(Gc)
    else
        call SetUnitPositionLoc(cc, Fc)
        call RemoveLocation(fc)
        set fc = GetUnitLoc(Dc)
        call AddSpecialEffectLocBJ(fc, "war3mapImported\\BlackBlink.mdx")
        call DestroyEffectBJ(GetLastCreatedEffectBJ())
        call SetUnitPositionLocFacingBJ(Dc, Fc, dc)
        call AddSpecialEffectLocBJ(Fc, "war3mapImported\\BlackBlink.mdx")
        call DestroyEffectBJ(GetLastCreatedEffectBJ())
        call VG(cc)
        set Dc = null
        set cc = null
        call RemoveLocation(fc)
        call RemoveLocation(Fc)
        set gc = false
        call DisableTrigger(GetTriggeringTrigger())
    endif
endfunction
function I7 takes nothing returns nothing
    set Jf = CreateTrigger()
    call DisableTrigger(Jf)
    call TriggerRegisterTimerEventPeriodic(Jf, 0.02)
    call TriggerAddAction(Jf, function R7)
endfunction
function A7 takes nothing returns boolean
    if(not(GetUnitTypeId(GetAttacker()) == 'N036'))then
        return false
    endif
    if(not(GetRandomInt(1, 100) <= 10))then
        return false
    endif
    if(not(IsUnitEnemy(GetAttacker(), GetTriggerPlayer()) == true))then
        return false
    endif
    if(not(IsUnitType(GetTriggerUnit(), UNIT_TYPE_STRUCTURE) == false))then
        return false
    endif
    if(not(IsUnitType(GetTriggerUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false))then
        return false
    endif
    if(not(IsUnitIllusionBJ(GetAttacker()) == false))then
        return false
    endif
    return true
endfunction
function N7 takes nothing returns nothing
    call bh(GetOwningPlayer(GetAttacker()), GetAttacker(), GetTriggerUnit(), 'A0AC', 1, "chainlightning", 5, true)
endfunction
function b7 takes nothing returns nothing
    set kf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(kf, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(kf, Condition(function A7))
    call TriggerAddAction(kf, function N7)
endfunction
function B7 takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == 'n02N'))then
        return false
    endif
    return true
endfunction
function c7 takes nothing returns nothing
    call GroupAddUnitSimple(GetTriggerUnit(), Jc)
    set Hc = 40.00
    set jc = Zb[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]
    call EnableTrigger(mf)
endfunction
function C7 takes nothing returns nothing
    set Kf = CreateTrigger()
    call TriggerRegisterEnterRectSimple(Kf, GetPlayableMapRect())
    call TriggerAddCondition(Kf, Condition(function B7))
    call TriggerAddAction(Kf, function c7)
endfunction
function d7 takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == 'n02N'))then
        return false
    endif
    return true
endfunction
function D7 takes nothing returns nothing
    call GroupRemoveUnitSimple(GetTriggerUnit(), Jc)
endfunction
function f7 takes nothing returns nothing
    set Lf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Lf, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(Lf, Condition(function d7))
    call TriggerAddAction(Lf, function D7)
endfunction
function F7 takes nothing returns boolean
    if((GetUnitAbilityLevelSwapped(('A091'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A08Y'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A08Z'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A090'), jc) > 0))then
        return true
    endif
    return false
endfunction
function g7 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0AS'), GetEnumUnit())
endfunction
function G7 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0AS'), GetEnumUnit())
endfunction
function h7 takes nothing returns boolean
    if(not F7())then
        return false
    endif
    return true
endfunction
function H7 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0AT'), GetEnumUnit())
endfunction
function j7 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0AT'), GetEnumUnit())
endfunction
function J7 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('AIae'), jc) > 0))then
        return false
    endif
    return true
endfunction
function k7 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0AU'), GetEnumUnit())
endfunction
function K7 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0AU'), GetEnumUnit())
endfunction
function l7 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('AIau'), jc) > 0))then
        return false
    endif
    return true
endfunction
function L7 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0AV'), GetEnumUnit())
endfunction
function m7 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0AV'), GetEnumUnit())
endfunction
function M7 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('AIcd'), jc) > 0))then
        return false
    endif
    return true
endfunction
function p7 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0AX'), GetEnumUnit())
endfunction
function P7 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0AX'), GetEnumUnit())
endfunction
function q7 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('A0AG'), jc) > 0))then
        return false
    endif
    return true
endfunction
function Q7 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0AY'), GetEnumUnit())
endfunction
function s7 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0AY'), GetEnumUnit())
endfunction
function S7 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('A0AH'), jc) > 0))then
        return false
    endif
    return true
endfunction
function t7 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0BP'), GetEnumUnit())
endfunction
function T7 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0BP'), GetEnumUnit())
endfunction
function u7 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('A0BM'), jc) > 0))then
        return false
    endif
    return true
endfunction
function U7 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0BO'), GetEnumUnit())
endfunction
function w7 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0BO'), GetEnumUnit())
endfunction
function W7 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('A0BK'), jc) > 0))then
        return false
    endif
    return true
endfunction
function y7 takes nothing returns boolean
    if((GetUnitAbilityLevelSwapped(('A05B'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A06I'), jc) > 0))then
        return true
    endif
    return false
endfunction
function Y7 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0AW'), GetEnumUnit())
endfunction
function z7 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0AW'), GetEnumUnit())
endfunction
function Z7 takes nothing returns boolean
    if(not y7())then
        return false
    endif
    return true
endfunction
function v8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0AZ'), GetEnumUnit())
endfunction
function e8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0AZ'), GetEnumUnit())
endfunction
function x8 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('A03B'), jc) > 0))then
        return false
    endif
    return true
endfunction
function o8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0B0'), GetEnumUnit())
endfunction
function r8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0B0'), GetEnumUnit())
endfunction
function i8 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('A08B'), jc) > 0))then
        return false
    endif
    return true
endfunction
function a8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0B1'), GetEnumUnit())
endfunction
function n8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0B1'), GetEnumUnit())
endfunction
function V8 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('A0AK'), jc) > 0))then
        return false
    endif
    return true
endfunction
function E8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0BW'), GetEnumUnit())
endfunction
function X8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0BW'), GetEnumUnit())
endfunction
function O8 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('A0BV'), jc) > 0))then
        return false
    endif
    return true
endfunction
function R8 takes nothing returns boolean
    if((GetUnitAbilityLevelSwapped(('A06R'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A06Q'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A06T'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A06S'), jc) > 0))then
        return true
    endif
    return false
endfunction
function I8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0B2'), GetEnumUnit())
endfunction
function A8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0B2'), GetEnumUnit())
endfunction
function N8 takes nothing returns boolean
    if(not R8())then
        return false
    endif
    return true
endfunction
function b8 takes nothing returns boolean
    if((GetUnitAbilityLevelSwapped(('A0BD'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A0BH'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A0BI'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A0BJ'), jc) > 0))then
        return true
    endif
    return false
endfunction
function B8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0BQ'), GetEnumUnit())
endfunction
function c8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0BQ'), GetEnumUnit())
endfunction
function C8 takes nothing returns boolean
    if(not b8())then
        return false
    endif
    return true
endfunction
function d8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0B6'), GetEnumUnit())
endfunction
function D8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0B6'), GetEnumUnit())
endfunction
function f8 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('A098'), jc) > 0))then
        return false
    endif
    return true
endfunction
function F8 takes nothing returns boolean
    if((GetUnitAbilityLevelSwapped(('A06O'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A06N'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A06M'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A06L'), jc) > 0))then
        return true
    endif
    return false
endfunction
function g8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0B3'), GetEnumUnit())
endfunction
function G8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0B3'), GetEnumUnit())
endfunction
function h8 takes nothing returns boolean
    if(not F8())then
        return false
    endif
    return true
endfunction
function H8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0BA'), GetEnumUnit())
endfunction
function j8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0BA'), GetEnumUnit())
endfunction
function J8 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('A06P'), jc) > 0))then
        return false
    endif
    return true
endfunction
function k8 takes nothing returns boolean
    if((GetUnitAbilityLevelSwapped(('A05U'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A05T'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A05Q'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A06U'), jc) > 0))then
        return true
    endif
    return false
endfunction
function K8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0B4'), GetEnumUnit())
endfunction
function l8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0B4'), GetEnumUnit())
endfunction
function L8 takes nothing returns boolean
    if(not k8())then
        return false
    endif
    return true
endfunction
function m8 takes nothing returns boolean
    if((GetUnitAbilityLevelSwapped(('A066'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A05P'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A067'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A068'), jc) > 0))then
        return true
    endif
    if((GetUnitAbilityLevelSwapped(('A063'), jc) > 0))then
        return true
    endif
    return false
endfunction
function M8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0B5'), GetEnumUnit())
endfunction
function p8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0B5'), GetEnumUnit())
endfunction
function P8 takes nothing returns boolean
    if(not m8())then
        return false
    endif
    return true
endfunction
function q8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0B7'), GetEnumUnit())
endfunction
function Q8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0B7'), GetEnumUnit())
endfunction
function s8 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('A08O'), jc) > 0))then
        return false
    endif
    return true
endfunction
function S8 takes nothing returns nothing
    call UnitRemoveAbilityBJ(('A0B8'), GetEnumUnit())
endfunction
function t8 takes nothing returns nothing
    call UnitAddAbilityBJ(('A0B8'), GetEnumUnit())
endfunction
function T8 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped(('A08I'), jc) > 0))then
        return false
    endif
    return true
endfunction
function u8 takes nothing returns boolean
    if((Hc <= 0.00))then
        return true
    endif
    if((CountUnitsInGroup(Jc) == 0))then
        return true
    endif
    return false
endfunction
function U8 takes nothing returns boolean
    if(not u8())then
        return false
    endif
    return true
endfunction
function w8 takes nothing returns nothing
    set Hc = (Hc - 0.10)
    if(h7())then
        call ForGroupBJ(Jc, function G7)
    else
        call ForGroupBJ(Jc, function g7)
    endif
    if(J7())then
        call ForGroupBJ(Jc, function j7)
    else
        call ForGroupBJ(Jc, function H7)
    endif
    if(l7())then
        call ForGroupBJ(Jc, function K7)
    else
        call ForGroupBJ(Jc, function k7)
    endif
    if(M7())then
        call ForGroupBJ(Jc, function m7)
    else
        call ForGroupBJ(Jc, function L7)
    endif
    if(q7())then
        call ForGroupBJ(Jc, function P7)
    else
        call ForGroupBJ(Jc, function p7)
    endif
    if(S7())then
        call ForGroupBJ(Jc, function s7)
    else
        call ForGroupBJ(Jc, function Q7)
    endif
    if(u7())then
        call ForGroupBJ(Jc, function T7)
    else
        call ForGroupBJ(Jc, function t7)
    endif
    if(W7())then
        call ForGroupBJ(Jc, function w7)
    else
        call ForGroupBJ(Jc, function U7)
    endif
    if(Z7())then
        call ForGroupBJ(Jc, function z7)
    else
        call ForGroupBJ(Jc, function Y7)
    endif
    if(x8())then
        call ForGroupBJ(Jc, function e8)
    else
        call ForGroupBJ(Jc, function v8)
    endif
    if(i8())then
        call ForGroupBJ(Jc, function r8)
    else
        call ForGroupBJ(Jc, function o8)
    endif
    if(V8())then
        call ForGroupBJ(Jc, function n8)
    else
        call ForGroupBJ(Jc, function a8)
    endif
    if(O8())then
        call ForGroupBJ(Jc, function X8)
    else
        call ForGroupBJ(Jc, function E8)
    endif
    if(N8())then
        call ForGroupBJ(Jc, function A8)
    else
        call ForGroupBJ(Jc, function I8)
    endif
    if(C8())then
        call ForGroupBJ(Jc, function c8)
    else
        call ForGroupBJ(Jc, function B8)
    endif
    if(f8())then
        call ForGroupBJ(Jc, function D8)
    else
        call ForGroupBJ(Jc, function d8)
    endif
    if(h8())then
        call ForGroupBJ(Jc, function G8)
    else
        call ForGroupBJ(Jc, function g8)
    endif
    if(J8())then
        call ForGroupBJ(Jc, function j8)
    else
        call ForGroupBJ(Jc, function H8)
    endif
    if(L8())then
        call ForGroupBJ(Jc, function l8)
    else
        call ForGroupBJ(Jc, function K8)
    endif
    if(P8())then
        call ForGroupBJ(Jc, function p8)
    else
        call ForGroupBJ(Jc, function M8)
    endif
    if(s8())then
        call ForGroupBJ(Jc, function Q8)
    else
        call ForGroupBJ(Jc, function q8)
    endif
    if(T8())then
        call ForGroupBJ(Jc, function t8)
    else
        call ForGroupBJ(Jc, function S8)
    endif
    if(U8())then
        call DisableTrigger(GetTriggeringTrigger())
    else
    endif
endfunction
function W8 takes nothing returns nothing
    set mf = CreateTrigger()
    call DisableTrigger(mf)
    call TriggerRegisterTimerEventPeriodic(mf, 0.10)
    call TriggerAddAction(mf, function w8)
endfunction
function y8 takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == 'nshe'))then
        return false
    endif
    return true
endfunction
function Y8 takes nothing returns nothing
    set De[40] = false
    set fe = (fe - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'E00R', GetOwningPlayer(GetTriggerUnit()), (Jh(GetOwningPlayer(GetEnteringUnit()))), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D02A', gC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), (Jh(GetOwningPlayer(GetEnteringUnit()))), 2.00)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(GetLastCreatedUnit(), 100)
    call DisplayTimedTextToForce(GetPlayersAll(), 4.00, (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Miriana Starlight."))
endfunction
function z8 takes nothing returns nothing
    set Mf = CreateTrigger()
    call TriggerRegisterEnterRectSimple(Mf, wC)
    call TriggerAddCondition(Mf, Condition(function y8))
    call TriggerAddAction(Mf, function Y8)
endfunction
function Z8 takes nothing returns boolean
    return(GetSpellAbilityId() == 'A0C0')
endfunction
function vvv takes nothing returns nothing
    set hg = GetSpellAbilityUnit()
    set jg = GetUnitLoc(hg)
    set Hg = GetSpellTargetUnit()
    set Jg = GetUnitLoc(Hg)
    call PauseUnit(hg, true)
    call SetUnitInvulnerable(hg, true)
    call SetUnitPathing(hg, false)
    call CreateNUnitsAtLoc(1, 'h01S', Player(13), GetUnitLoc(hg), bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(0.9, 'BTLF', bj_lastCreatedUnit)
    call SetUnitAnimation(bj_lastCreatedUnit, "Death")
    set lg[1] = AddSpecialEffectTargetUnitBJ("weapon", hg, "Abilities\\Weapons\\ZigguratFrostMissile\\ZigguratFrostMissile.mdl")
    set lg[2] = AddSpecialEffectTargetUnitBJ("weapon", hg, "Abilities\\Spells\\Other\\ForkedLightning\\ForkedLightningTarget.mdl")
    call UnitAddAbility(hg, 'Amrf')
    call SetUnitTimeScalePercent(hg, 50)
    call SetUnitAnimation(hg, "Attack - 2")
    call SetUnitFlyHeight(hg, 500, 800)
    set Lg = 0
    call EnableTrigger(Pf)
endfunction
function vev takes nothing returns nothing
    set pf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(pf, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(pf, Condition(function Z8))
    call TriggerAddAction(pf, function vvv)
endfunction
function vxv takes nothing returns nothing
    local location mh
    local location Mh
    set mh = GetUnitLoc(hg)
    set Mh = GetUnitLoc(Hg)
    call RemoveLocation(Jg)
    set Jg = PolarProjectionBJ(Mh, 100, GetUnitFacing(Hg) - 180)
    set kg = GetUnitLoc(hg)
    if Lg < 50 then
        set Kg = PolarProjectionBJ(kg, (DistanceBetweenPoints(kg, Jg)) / (50 - Lg), AngleBetweenPoints(kg, Jg))
    else
        set Kg = PolarProjectionBJ(kg, DistanceBetweenPoints(kg, Jg), AngleBetweenPoints(kg, Jg))
    endif
    call SetUnitPositionLoc(hg, Kg)
    set Lg = Lg + 1
    if Lg == 15 then
        set lg[3] = AddSpecialEffectTargetUnitBJ("origin", Hg, "Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl")
    endif
    if Lg == 30 then
        call SetUnitTimeScalePercent(hg, 100)
    endif
    if Lg >= 50 then
        call SetUnitFlyHeight(hg, 0, 800)
        call ResetUnitAnimation(hg)
        call UnitRemoveAbility(hg, 'Amrf')
        call SetUnitPathing(hg, true)
        call PauseUnit(hg, false)
        call SetUnitInvulnerable(hg, false)
        call ResetUnitAnimation(hg)
        call bh(GetOwningPlayer(hg), hg, Hg, 'A0CC', GetUnitAbilityLevel(hg, 'A0C0'), "shadowstrike", 10, false)
        call IssueTargetOrderBJ(hg, "attack", Hg)
        call DestroyEffect(lg[1])
        call DestroyEffect(lg[2])
        call DestroyEffect(lg[3])
        set hg = null
        set Hg = null
        call RemoveLocation(mh)
        call RemoveLocation(Mh)
        call RemoveLocation(jg)
        call RemoveLocation(Jg)
        call RemoveLocation(kg)
        call RemoveLocation(Kg)
        set mh = null
        set Mh = null
        call DisableTrigger(Pf)
    endif
    call RemoveLocation(mh)
    call RemoveLocation(Mh)
    call RemoveLocation(Jg)
    call RemoveLocation(kg)
    call RemoveLocation(Kg)
    set mh = null
    set Mh = null
endfunction
function vov takes nothing returns nothing
    set Pf = CreateTrigger()
    call DisableTrigger(Pf)
    call TriggerRegisterTimerEventPeriodic(Pf, 0.01)
    call TriggerAddAction(Pf, function vxv)
endfunction
function vrv takes nothing returns boolean
    if(not(GetLearnedSkillBJ() == 'A0C1'))then
        return false
    endif
    if(not(GetUnitAbilityLevelSwapped('A0C1', GetTriggerUnit()) == 1))then
        return false
    endif
    return true
endfunction
function viv takes nothing returns nothing
    call UnitAddAbilityBJ('A0CB', GetTriggerUnit())
    call UnitMakeAbilityPermanent(GetTriggerUnit(), true, 'A0CB')
endfunction
function vav takes nothing returns nothing
    set qf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(qf, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(qf, Condition(function vrv))
    call TriggerAddAction(qf, function viv)
endfunction
function vnv takes nothing returns boolean
    if(not(GetSpellAbilityId() == 'Aret'))then
        return false
    endif
    return true
endfunction
function vVv takes nothing returns nothing
    call UnitRemoveAbilityBJ('A0CB', GetTriggerUnit())
endfunction
function vEv takes nothing returns nothing
    set Qf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Qf, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(Qf, Condition(function vnv))
    call TriggerAddAction(Qf, function vVv)
endfunction
function vXv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == 'npig'))then
        return false
    endif
    return true
endfunction
function vOv takes nothing returns nothing
    set he[40] = false
    set Je = (Je - 1)
    call ExplodeUnitBJ(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, 'E00S', GetOwningPlayer(GetTriggerUnit()), (Jh(GetOwningPlayer(GetEnteringUnit()))), bj_UNIT_FACING)
    call SetDoodadAnimationRectBJ("death", 'D02B', GC)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetEnteringUnit()), (Jh(GetOwningPlayer(GetEnteringUnit()))), 2.00)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(GetLastCreatedUnit(), 100)
    call DisplayTimedTextToForce(GetPlayersAll(), 4.00, (GetPlayerName(GetOwningPlayer(GetEnteringUnit())) + " has chosen Tristania."))
endfunction
function vRv takes nothing returns nothing
    set sf = CreateTrigger()
    call TriggerRegisterEnterRectSimple(sf, qd)
    call TriggerAddCondition(sf, Condition(function vXv))
    call TriggerAddAction(sf, function vOv)
endfunction
function vIv takes nothing returns boolean
    if GetSpellAbilityId() == 'ZPHU' then
        return true
    endif
    return false
endfunction
function vAv takes nothing returns nothing
    set i3 = i3 + 1
    set u2[i3] = GetTriggerUnit()
    call UnitAddAbility(u2[i3], 'A06C')
    call TriggerSleepAction(3)
    set i4 = i4 + 1
    if i3 == i4 or(i3 != i4 and u2[i3] != u2[i4])then
        call UnitRemoveAbility(u2[i4], 'A06C')
    endif
endfunction
function vNv takes nothing returns nothing
    set Sf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Sf, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(Sf, Condition(function vIv))
    call TriggerAddAction(Sf, function vAv)
endfunction
function vbv takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem()) == 'desc'))then
        return false
    endif
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I01R') == true))then
        return false
    endif
    return true
endfunction
function vBv takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem()) == 'I01R'))then
        return false
    endif
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'desc') == true))then
        return false
    endif
    return true
endfunction
function vcv takes nothing returns boolean
    if(vbv())then
        return true
    endif
    if(vBv())then
        return true
    endif
    return false
endfunction
function vCv takes nothing returns boolean
    if(not vcv())then
        return false
    endif
    return true
endfunction
function vdv takes nothing returns nothing
    // call UnitRemoveItemSwapped(GetManipulatedItem(),GetTriggerUnit())
endfunction
function vDv takes nothing returns nothing
    set tf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(tf, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(tf, Condition(function vCv))
    call TriggerAddAction(tf, function vdv)
endfunction
function vfv takes nothing returns boolean
    if(not(GetItemTypeId(UnitItemInSlotBJ(GetTriggerUnit(), Kc)) == GetItemTypeId(GetManipulatedItem())))then
        return false
    endif
    return true
endfunction
function vFv takes nothing returns boolean
    if(not(kc > 1))then
        return false
    endif
    return true
endfunction
function vgv takes nothing returns boolean
    if((GetItemTypeId(GetManipulatedItem()) == 'I037'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I036'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I02X'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I03A'))then
        return true
    endif
    return false
endfunction
function vGv takes nothing returns boolean
    if(not vgv())then
        return false
    endif
    return true
endfunction
function vhv takes nothing returns nothing
    if(vGv())then
        set kc = 0
        set Kc = 1
        loop
            exitwhen Kc > 6
            if(vfv())then
                set kc = (kc + 1)
            else
            endif
            set Kc = Kc + 1
        endloop
        if(vFv())then
            call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
        else
        endif
        set kc = 0
    else
    endif
endfunction
function vHv takes nothing returns nothing
    set Tf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Tf, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(Tf, function vhv)
endfunction
function vjv takes nothing returns boolean
    if((GetItemTypeId(GetManipulatedItem()) == 'I00I'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I00J'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I00K'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I00L'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I00N'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I00M'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I037'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I036'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I02X'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I026'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I01P'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I01H'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I03A'))then
        return true
    endif
    if((GetItemTypeId(GetManipulatedItem()) == 'I02E'))then
        return true
    endif
    return false
endfunction
function vJv takes nothing returns boolean
    if(not vjv())then
        return false
    endif
    return true
endfunction
function vkv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00I') == true))then
        return false
    endif
    return true
endfunction
function vKv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00J') == true))then
        return false
    endif
    return true
endfunction
function vlv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00K') == true))then
        return false
    endif
    return true
endfunction
function vLv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00L') == true))then
        return false
    endif
    return true
endfunction
function vmv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00N') == true))then
        return false
    endif
    return true
endfunction
function vMv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00M') == true))then
        return false
    endif
    return true
endfunction
function vpv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I037') == true))then
        return false
    endif
    return true
endfunction
function vPv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I036') == true))then
        return false
    endif
    return true
endfunction
function vqv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I02X') == true))then
        return false
    endif
    return true
endfunction
function vQv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I026') == true))then
        return false
    endif
    return true
endfunction
function vsv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I01P') == true))then
        return false
    endif
    return true
endfunction
function vSv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I01H') == true))then
        return false
    endif
    return true
endfunction
function vtv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I03A') == true))then
        return false
    endif
    return true
endfunction
function vTv takes nothing returns boolean
    if(not(kc > 1))then
        return false
    endif
    return true
endfunction
function vuv takes nothing returns nothing
    set kc = 0
    if(vkv())then
        set kc = (kc + 1)
    else
    endif
    if(vKv())then
        set kc = (kc + 1)
    else
    endif
    if(vlv())then
        set kc = (kc + 1)
    else
    endif
    if(vLv())then
        set kc = (kc + 1)
    else
    endif
    if(vmv())then
        set kc = (kc + 1)
    else
    endif
    if(vMv())then
        set kc = (kc + 1)
    else
    endif
    if(vpv())then
        set kc = (kc + 1)
    else
    endif
    if(vPv())then
        set kc = (kc + 1)
    else
    endif
    if(vqv())then
        set kc = (kc + 1)
    else
    endif
    if(vQv())then
        set kc = (kc + 1)
    else
    endif
    if(vsv())then
        set kc = (kc + 1)
    else
    endif
    if(vSv())then
        set kc = (kc + 1)
    else
    endif
    if(vtv())then
        set kc = (kc + 1)
    else
    endif
    if UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I02E') == true then
        set kc = (kc + 1)
    endif
    if(vTv())then
        call UnitRemoveItemSwapped(GetManipulatedItem(), GetManipulatingUnit())
    else
    endif
    set kc = 0
endfunction
function vUv takes nothing returns nothing
    set uf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(uf, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(uf, Condition(function vJv))
    call TriggerAddAction(uf, function vuv)
endfunction
function vwv takes nothing returns boolean
    return(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != null)
endfunction
function vWv takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I034')) == 'I034')and(GetHeroLevel(GetTriggerUnit()) >= 12)
endfunction
function vyv takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I033')) == 'I033')and(GetHeroLevel(GetTriggerUnit()) >= 8)
endfunction
function vYv takes nothing returns boolean
    return(GetItemTypeId(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02Z')) == 'I02Z')and(GetHeroLevel(GetTriggerUnit()) >= 4)
endfunction
function vzv takes nothing returns nothing
    if(vYv())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02Z'))
        call UnitAddItemByIdSwapped('I033', GetTriggerUnit())
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Venom has upgraded ...")
    else
        if(vyv())then
            call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I033'))
            call UnitAddItemByIdSwapped('I034', GetTriggerUnit())
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Venom has upgraded ...")
        else
            if(vWv())then
                call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I034'))
                call UnitAddItemByIdSwapped('I035', GetTriggerUnit())
                call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "Your Orb of Venom has upgraded ...")
            endif
        endif
    endif
endfunction
function vZv takes nothing returns nothing
    set Uf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Uf, EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddCondition(Uf, Condition(function vwv))
    call TriggerAddAction(Uf, function vzv)
endfunction
function v_v takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I025')))then
        return false
    endif
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00I')))then
        return false
    endif
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I031')))then
        return false
    endif
    return true
endfunction
function v0v takes nothing returns boolean
    if((not UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I025')))then
        return true
    endif
    if((not UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00I')))then
        return true
    endif
    return false
endfunction
function v1v takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem()) == 'I031'))then
        return false
    endif
    if(not v0v())then
        return false
    endif
    return true
endfunction
function v2v takes nothing returns nothing
    if(v_v())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I025')))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I00I')))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I031')))
        call UnitAddItemByIdSwapped('I037', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
    endif
    if(v1v())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I031'))
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    else
    endif
endfunction
function v3v takes nothing returns nothing
    set wf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(wf, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(wf, function v2v)
endfunction
function v4v takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I035')))then
        return false
    endif
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00J')))then
        return false
    endif
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I030')))then
        return false
    endif
    return true
endfunction
function v5v takes nothing returns boolean
    if((not UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I035')))then
        return true
    endif
    if((not UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00J')))then
        return true
    endif
    return false
endfunction
function v6v takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem()) == 'I030'))then
        return false
    endif
    if(not v5v())then
        return false
    endif
    return true
endfunction
function v7v takes nothing returns nothing
    if(v4v())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I035')))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I00J')))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I030')))
        call UnitAddItemByIdSwapped('I036', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
    endif
    if(v6v())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I030'))
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    else
    endif
endfunction
function v8v takes nothing returns nothing
    set Wf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Wf, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(Wf, function v7v)
endfunction
function v9v takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I01Y')))then
        return false
    endif
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00K')))then
        return false
    endif
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I02Y')))then
        return false
    endif
    return true
endfunction
function evv takes nothing returns boolean
    if((not UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I01Y')))then
        return true
    endif
    if((not UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00K')))then
        return true
    endif
    return false
endfunction
function eev takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem()) == 'I02Y'))then
        return false
    endif
    if(not evv())then
        return false
    endif
    return true
endfunction
function exv takes nothing returns nothing
    if(v9v())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I01Y')))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I00K')))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I02Y')))
        call UnitAddItemByIdSwapped('I02X', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
    endif
    if(eev())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I02Y'))
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    else
    endif
endfunction
function eov takes nothing returns nothing
    set yf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(yf, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(yf, function exv)
endfunction
function erv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00U')))then
        return false
    endif
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00O')))then
        return false
    endif
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I032')))then
        return false
    endif
    return true
endfunction
function eiv takes nothing returns boolean
    if((not UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00U')))then
        return true
    endif
    if((not UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I00O')))then
        return true
    endif
    return false
endfunction
function eav takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem()) == 'I032'))then
        return false
    endif
    if(not eiv())then
        return false
    endif
    return true
endfunction
function env takes nothing returns nothing
    if(erv())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I00U')))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I00O')))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I032')))
        call UnitAddItemByIdSwapped('I038', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
    endif
    if(eav())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), 'I032'))
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
        call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 30, "The gods refuse to assist you !")
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
    else
    endif
endfunction
function eVv takes nothing returns nothing
    set Yf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Yf, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(Yf, function env)
endfunction
function eEv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == 'N010' and GetKillingUnit() != null))then
        return false
    endif
    return true
endfunction
function eXv takes nothing returns nothing
    local location l = GetUnitLoc(GetTriggerUnit())
    local integer i = GetRandomInt(8, 24)
    local player p = GetOwningPlayer(GetKillingUnit())
    call AdjustPlayerStateBJ(10000 + i, p, PLAYER_STATE_RESOURCE_GOLD)
    call CreateItemLoc('I039', l)
    call CreateTextTagLocBJ("+" + I2S(10000 + i), l, 0, 10, 100.00, 86.27, 0.00, 0)
    call ShowTextTagForceBJ(false, GetLastCreatedTextTag(), GetPlayersAll())
    call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), GetForceOfPlayer(p))
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 2.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 1.00)
    call RemoveLocation(l)
    set l = null
    set p = null
endfunction
function eOv takes nothing returns nothing
    set zf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(zf, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(zf, Condition(function eEv))
    call TriggerAddAction(zf, function eXv)
endfunction
function eRv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I039')))then
        return false
    endif
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I01H')))then
        return false
    endif
    return true
endfunction
function eIv takes nothing returns nothing
    if(eRv())then
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I039')))
        call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), ('I01H')))
        call UnitAddItemByIdSwapped('I03A', GetTriggerUnit())
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"))
    else
    endif
endfunction
function eAv takes nothing returns nothing
    set Zf = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(Zf, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(Zf, function eIv)
endfunction
function eNv takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetAttacker(), 'I03A') == true))then
        return false
    endif
    if(not(GetRandomInt(1, 100) <= 20))then
        return false
    endif
    if(not(IsUnitEnemy(GetAttacker(), GetTriggerPlayer()) == true))then
        return false
    endif
    if(not(IsUnitType(GetTriggerUnit(), UNIT_TYPE_STRUCTURE) == false))then
        return false
    endif
    if(not(IsUnitIllusionBJ(GetAttacker()) == false))then
        return false
    endif
    return true
endfunction
function ebv takes nothing returns nothing
    call bh(GetOwningPlayer(GetAttacker()), GetAttacker(), GetTriggerUnit(), 'A0BU', 1, "chainlightning", 5, false)
endfunction
function eBv takes nothing returns nothing
    set vF = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(vF, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(vF, Condition(function eNv))
    call TriggerAddAction(vF, function ebv)
endfunction
function ecv takes nothing returns boolean
    if((GetOwningPlayer(GetTriggerUnit()) == Player(5)))then
        return true
    endif
    if((GetOwningPlayer(GetTriggerUnit()) == Player(11)))then
        return true
    endif
    if((GetOwningPlayer(GetTriggerUnit()) == Player(PLAYER_NEUTRAL_AGGRESSIVE)))then
        return true
    endif
    return false
endfunction
function eCv takes nothing returns boolean
    if(not(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true or GetUnitTypeId(GetTriggerUnit()) == 'n019'))then
        return false
    endif
    if(not ecv())then
        return false
    endif
    return true
endfunction
function edv takes nothing returns nothing
    local player pd = GetOwningPlayer(GetTriggerUnit())
    local player pk = GetOwningPlayer(GetKillingUnit())
    if pd != null and pk != null and IsPlayerEnemy(pd, pk)and pk != Player(5)and pk != Player(11)and pk != Player(PLAYER_NEUTRAL_AGGRESSIVE)then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cfffdcc24[Boss]|r " + cB[GetConvertedPlayerId(pd)] + GetUnitName(GetTriggerUnit()) + "|r has been killed by " + cB[GetConvertedPlayerId(pk)] + GetPlayerName(pk) + "|r.")
    endif
    set pd = null
    set pk = null
endfunction
function eDv takes nothing returns nothing
    set eF = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(eF, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(eF, Condition(function eCv))
    call TriggerAddAction(eF, function edv)
endfunction
function efv takes nothing returns nothing
    call DisplayTimedTextToForce(GetPlayersAll(), 15.00,"|cffff0000Host has turned on Test mode!
    Test mode commands:|r")
    call DisplayTimedTextToForce(GetPlayersAll(), 15.00,"|cffffcc00-money|r to get 100k gold, 1k lumber.
    |cffffcc00 - reveal|r to have sight all map.
    |cffffcc00 - bl|r to get Blink all map skill.
    |cffffcc00 - cd|r to reset cooldown all skill.
    |cffffcc00 - lvl < level >|r to set Hero level, from 1 to 100.
    |cffffcc00 - revival|r to revival Hero.")
    set ac = true
    call EnableTrigger(rF)
    call EnableTrigger(iF)
    call EnableTrigger(aF)
    call EnableTrigger(nF)
    call EnableTrigger(VF)
    call EnableTrigger(EF)
    call TriggerSleepAction(20.00)
    call DisplayTimedTextToForce(GetPlayersAll(), 15.00, "|cffff0000[Repeat] Test mode commands:|r")
    call DisplayTimedTextToForce(GetPlayersAll(), 15.00,"|cffffcc00-money|r to get 100k gold, 1k lumber.
    |cffffcc00 - reveal|r to have sight all map.
    |cffffcc00 - bl|r to get Blink all map skill.
    |cffffcc00 - cd|r to reset cooldown all skill.
    |cffffcc00 - lvl < level >|r to set Hero level, from 1 to 100.
    |cffffcc00 - revival|r to revival Hero.")
endfunction
function eFv takes nothing returns nothing
    set xF = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(xF, Player(0), "-test", true)
    call TriggerRegisterPlayerChatEvent(xF, Player(6), "-test", true)
    call TriggerAddAction(xF, function efv)
endfunction
function egv takes nothing returns nothing
    call TriggerSleepAction(15.00)
    call DisableTrigger(xF)
endfunction
function eGv takes nothing returns nothing
    set oF = CreateTrigger()
    call TriggerAddAction(oF, function egv)
endfunction
function ehv takes nothing returns boolean
    if(not(IsPlayerInForce(GetTriggerPlayer(), eB) == false))then
        return false
    endif
    return true
endfunction
function eHv takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true)
endfunction
function ejv takes nothing returns nothing
    call UnitResetCooldown(GetEnumUnit())
    call SetUnitManaPercentBJ(GetEnumUnit(), 100)
endfunction
function eJv takes nothing returns nothing
    set ic = GetUnitsOfPlayerMatching(GetTriggerPlayer(), Condition(function eHv))
    call ForGroupBJ(ic, function ejv)
    call DestroyGroup(ic)
endfunction
function ekv takes nothing returns nothing
    set rF = CreateTrigger()
    call DisableTrigger(rF)
    call TriggerRegisterPlayerChatEvent(rF, Player(0), "-cd", true)
    call TriggerRegisterPlayerChatEvent(rF, Player(1), "-cd", true)
    call TriggerRegisterPlayerChatEvent(rF, Player(2), "-cd", true)
    call TriggerRegisterPlayerChatEvent(rF, Player(3), "-cd", true)
    call TriggerRegisterPlayerChatEvent(rF, Player(4), "-cd", true)
    call TriggerRegisterPlayerChatEvent(rF, Player(6), "-cd", true)
    call TriggerRegisterPlayerChatEvent(rF, Player(7), "-cd", true)
    call TriggerRegisterPlayerChatEvent(rF, Player(8), "-cd", true)
    call TriggerRegisterPlayerChatEvent(rF, Player(9), "-cd", true)
    call TriggerRegisterPlayerChatEvent(rF, Player(10), "-cd", true)
    call TriggerAddCondition(rF, Condition(function ehv))
    call TriggerAddAction(rF, function eJv)
endfunction
function eKv takes nothing returns boolean
    if(not(IsPlayerInForce(GetTriggerPlayer(), eB) == false))then
        return false
    endif
    return true
endfunction
function elv takes nothing returns nothing
    call AdjustPlayerStateBJ(100000, GetTriggerPlayer(), PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1000, GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER)
endfunction
function eLv takes nothing returns nothing
    set iF = CreateTrigger()
    call DisableTrigger(iF)
    call TriggerRegisterPlayerChatEvent(iF, Player(0), "-money", true)
    call TriggerRegisterPlayerChatEvent(iF, Player(1), "-money", true)
    call TriggerRegisterPlayerChatEvent(iF, Player(2), "-money", true)
    call TriggerRegisterPlayerChatEvent(iF, Player(3), "-money", true)
    call TriggerRegisterPlayerChatEvent(iF, Player(4), "-money", true)
    call TriggerRegisterPlayerChatEvent(iF, Player(6), "-money", true)
    call TriggerRegisterPlayerChatEvent(iF, Player(7), "-money", true)
    call TriggerRegisterPlayerChatEvent(iF, Player(8), "-money", true)
    call TriggerRegisterPlayerChatEvent(iF, Player(9), "-money", true)
    call TriggerRegisterPlayerChatEvent(iF, Player(10), "-money", true)
    call TriggerAddCondition(iF, Condition(function eKv))
    call TriggerAddAction(iF, function elv)
endfunction
function emv takes nothing returns boolean
    if(not(IsPlayerInForce(GetTriggerPlayer(), eB) == false))then
        return false
    endif
    if(not(S2R(SubStringBJ(GetEventPlayerChatString(), 6, StringLength(GetEventPlayerChatString()))) > 0.00))then
        return false
    endif
    return true
endfunction
function eMv takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true)
endfunction
function epv takes nothing returns nothing
    call SetHeroLevelBJ(GetEnumUnit(), S2I(SubStringBJ(GetEventPlayerChatString(), 6, StringLength(GetEventPlayerChatString()))), true)
endfunction
function ePv takes nothing returns nothing
    set ic = GetUnitsOfPlayerMatching(GetTriggerPlayer(), Condition(function eMv))
    call ForGroupBJ(ic, function epv)
    call DestroyGroup(ic)
endfunction
function eqv takes nothing returns nothing
    set aF = CreateTrigger()
    call DisableTrigger(aF)
    call TriggerRegisterPlayerChatEvent(aF, Player(0), "-lvl", false)
    call TriggerRegisterPlayerChatEvent(aF, Player(1), "-lvl", false)
    call TriggerRegisterPlayerChatEvent(aF, Player(2), "-lvl", false)
    call TriggerRegisterPlayerChatEvent(aF, Player(3), "-lvl", false)
    call TriggerRegisterPlayerChatEvent(aF, Player(4), "-lvl", false)
    call TriggerRegisterPlayerChatEvent(aF, Player(6), "-lvl", false)
    call TriggerRegisterPlayerChatEvent(aF, Player(7), "-lvl", false)
    call TriggerRegisterPlayerChatEvent(aF, Player(8), "-lvl", false)
    call TriggerRegisterPlayerChatEvent(aF, Player(9), "-lvl", false)
    call TriggerRegisterPlayerChatEvent(aF, Player(10), "-lvl", false)
    call TriggerAddCondition(aF, Condition(function emv))
    call TriggerAddAction(aF, function ePv)
endfunction
function eQv takes nothing returns boolean
    if(not(IsPlayerInForce(GetTriggerPlayer(), eB) == false))then
        return false
    endif
    return true
endfunction
function esv takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true)
endfunction
function eSv takes nothing returns nothing
    call UnitAddAbilityBJ('ZBLI', GetEnumUnit())
    call UnitMakeAbilityPermanent(GetEnumUnit(), true, 'ZBLI')
endfunction
function etv takes nothing returns nothing
    set ic = GetUnitsOfPlayerMatching(GetTriggerPlayer(), Condition(function esv))
    call ForGroupBJ(ic, function eSv)
    call DestroyGroup(ic)
endfunction
function eTv takes nothing returns nothing
    set nF = CreateTrigger()
    call DisableTrigger(nF)
    call TriggerRegisterPlayerChatEvent(nF, Player(0), "-bl", true)
    call TriggerRegisterPlayerChatEvent(nF, Player(1), "-bl", true)
    call TriggerRegisterPlayerChatEvent(nF, Player(2), "-bl", true)
    call TriggerRegisterPlayerChatEvent(nF, Player(3), "-bl", true)
    call TriggerRegisterPlayerChatEvent(nF, Player(4), "-bl", true)
    call TriggerRegisterPlayerChatEvent(nF, Player(6), "-bl", true)
    call TriggerRegisterPlayerChatEvent(nF, Player(7), "-bl", true)
    call TriggerRegisterPlayerChatEvent(nF, Player(8), "-bl", true)
    call TriggerRegisterPlayerChatEvent(nF, Player(9), "-bl", true)
    call TriggerRegisterPlayerChatEvent(nF, Player(10), "-bl", true)
    call TriggerAddCondition(nF, Condition(function eQv))
    call TriggerAddAction(nF, function etv)
endfunction
function euv takes nothing returns boolean
    if(not(IsPlayerInForce(GetTriggerPlayer(), eB) == false))then
        return false
    endif
    return true
endfunction
function eUv takes nothing returns nothing
    call FogEnableOff()
    call CreateFogModifierRectBJ(true, GetTriggerPlayer(), FOG_OF_WAR_VISIBLE, GetPlayableMapRect())
endfunction
function ewv takes nothing returns nothing
    set VF = CreateTrigger()
    call DisableTrigger(VF)
    call TriggerRegisterPlayerChatEvent(VF, Player(0), "-reveal", true)
    call TriggerRegisterPlayerChatEvent(VF, Player(1), "-reveal", true)
    call TriggerRegisterPlayerChatEvent(VF, Player(2), "-reveal", true)
    call TriggerRegisterPlayerChatEvent(VF, Player(3), "-reveal", true)
    call TriggerRegisterPlayerChatEvent(VF, Player(4), "-reveal", true)
    call TriggerRegisterPlayerChatEvent(VF, Player(6), "-reveal", true)
    call TriggerRegisterPlayerChatEvent(VF, Player(7), "-reveal", true)
    call TriggerRegisterPlayerChatEvent(VF, Player(8), "-reveal", true)
    call TriggerRegisterPlayerChatEvent(VF, Player(9), "-reveal", true)
    call TriggerRegisterPlayerChatEvent(VF, Player(10), "-reveal", true)
    call TriggerAddCondition(VF, Condition(function euv))
    call TriggerAddAction(VF, function eUv)
endfunction
function eWv takes nothing returns boolean
    if(not(IsPlayerInForce(GetTriggerPlayer(), eB) == false))then
        return false
    endif
    return true
endfunction
function eyv takes nothing returns boolean
    if(not(GetTriggerPlayer() == Player(0)))then
        return false
    endif
    return true
endfunction
function eYv takes nothing returns boolean
    if(not(GetTriggerPlayer() == Player(1)))then
        return false
    endif
    return true
endfunction
function ezv takes nothing returns boolean
    if(not(GetTriggerPlayer() == Player(2)))then
        return false
    endif
    return true
endfunction
function eZv takes nothing returns boolean
    if(not(GetTriggerPlayer() == Player(3)))then
        return false
    endif
    return true
endfunction
function e_v takes nothing returns boolean
    if(not(GetTriggerPlayer() == Player(4)))then
        return false
    endif
    return true
endfunction
function e0v takes nothing returns boolean
    if(not(GetTriggerPlayer() == Player(6)))then
        return false
    endif
    return true
endfunction
function e1v takes nothing returns boolean
    if(not(GetTriggerPlayer() == Player(7)))then
        return false
    endif
    return true
endfunction
function e2v takes nothing returns boolean
    if(not(GetTriggerPlayer() == Player(8)))then
        return false
    endif
    return true
endfunction
function e3v takes nothing returns boolean
    if(not(GetTriggerPlayer() == Player(9)))then
        return false
    endif
    return true
endfunction
function e4v takes nothing returns boolean
    if(not(GetTriggerPlayer() == Player(10)))then
        return false
    endif
    return true
endfunction
function e5v takes nothing returns boolean
    if(not(IsUnitDeadBJ(Zb[GetConvertedPlayerId(GetTriggerPlayer())]) == true))then
        return false
    endif
    if(not(Zb[GetConvertedPlayerId(GetTriggerPlayer())] != null))then
        return false
    endif
    return true
endfunction
function e6v takes nothing returns boolean
    if(not(IsUnitAliveBJ(Zb[GetConvertedPlayerId(GetTriggerPlayer())]) == true))then
        return false
    endif
    if(not(Zb[GetConvertedPlayerId(GetTriggerPlayer())] != null))then
        return false
    endif
    return true
endfunction
function e7v takes nothing returns nothing
    if(e5v())then
        if(eyv())then
            call StartTimerBJ(ee, false, 1.)
        else
        endif
        if(eYv())then
            call StartTimerBJ(xe, false, 1.)
        else
        endif
        if(ezv())then
            call StartTimerBJ(oe, false, 1.)
        else
        endif
        if(eZv())then
            call StartTimerBJ(re, false, 1.)
        else
        endif
        if(e_v())then
            call StartTimerBJ(ie, false, 1.)
        else
        endif
        if(e0v())then
            call StartTimerBJ(ae, false, 1.)
        else
        endif
        if(e1v())then
            call StartTimerBJ(ne, false, 1.)
        else
        endif
        if(e2v())then
            call StartTimerBJ(Ve, false, 1.)
        else
        endif
        if(e3v())then
            call StartTimerBJ(Ee, false, 1.)
        else
        endif
        if(e4v())then
            call StartTimerBJ(Xe, false, 1.)
        else
        endif
    else
    endif
    if(e6v())then
        call DisplayTimedTextToForce(GetForceOfPlayer(GetTriggerPlayer()), 5.00, ("|cfffdcc24Your Hero still alive!|r"))
    else
    endif
endfunction
function e8v takes nothing returns nothing
    set EF = CreateTrigger()
    call DisableTrigger(EF)
    call TriggerRegisterPlayerChatEvent(EF, Player(0), "-revival", true)
    call TriggerRegisterPlayerChatEvent(EF, Player(1), "-revival", true)
    call TriggerRegisterPlayerChatEvent(EF, Player(2), "-revival", true)
    call TriggerRegisterPlayerChatEvent(EF, Player(3), "-revival", true)
    call TriggerRegisterPlayerChatEvent(EF, Player(4), "-revival", true)
    call TriggerRegisterPlayerChatEvent(EF, Player(6), "-revival", true)
    call TriggerRegisterPlayerChatEvent(EF, Player(7), "-revival", true)
    call TriggerRegisterPlayerChatEvent(EF, Player(8), "-revival", true)
    call TriggerRegisterPlayerChatEvent(EF, Player(9), "-revival", true)
    call TriggerRegisterPlayerChatEvent(EF, Player(10), "-revival", true)
    call TriggerAddCondition(EF, Condition(function eWv))
    call TriggerAddAction(EF, function e7v)
endfunction
function e9v takes nothing returns nothing
    set AB[1] = GetPlayersAll()
    set cB[1] = "|cffff0303"
    set cB[2] = "|cff0042ff"
    set cB[3] = "|cff1ce6b9"
    set cB[4] = "|cff540081"
    set cB[5] = "|cfffffc01"
    set cB[6] = "|cfffe8a0e"
    set cB[7] = "|cff20c000"
    set cB[8] = "|cffe55bb0"
    set cB[9] = "|cff959697"
    set cB[10] = "|cff7ebff1"
    set cB[11] = "|cff106246"
    set cB[12] = "|cff4e2a04"
    set cB[13] = "|cff808080"
    set cB[14] = "|cff808080"
    set cB[15] = "|cff808080"
    set cB[16] = "|cff808080"
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 5
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set bB[GetForLoopIndexA()] = "ReplaceableTextures\\CommandButtons\\BTNSheep.blp"
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 7
    set bj_forLoopAIndexEnd = 11
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set bB[GetForLoopIndexA()] = "ReplaceableTextures\\CommandButtons\\BTNPig.blp"
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 12
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set BB[GetForLoopIndexA()] = GetPlayerName(ConvertedPlayer(GetForLoopIndexA()))
        set LB[GetForLoopIndexA()] = GetPlayerName(ConvertedPlayer(GetForLoopIndexA()))
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction
function xvv takes nothing returns nothing
    set XF = CreateTrigger()
    call TriggerAddAction(XF, function e9v)
endfunction
function xev takes nothing returns boolean
    return(GetPlayerController(GetFilterPlayer()) == MAP_CONTROL_USER)
endfunction
function xxv takes nothing returns boolean
    return(GetFilterPlayer() == Player(5))
endfunction
function xov takes nothing returns boolean
    return(GetFilterPlayer() == Player(11))
endfunction
function xrv takes nothing returns boolean
    return GetBooleanOr(xxv(), xov())
endfunction
function xiv takes nothing returns boolean
    return GetBooleanOr(xev(), xrv())
endfunction
function xav takes nothing returns boolean
    return(GetPlayerController(GetFilterPlayer()) == MAP_CONTROL_COMPUTER)
endfunction
function xnv takes nothing returns boolean
    return(IsPlayerAlly(GetFilterPlayer(), Player(5)) == true)
endfunction
function xVv takes nothing returns boolean
    return GetBooleanAnd(xav(), xnv())
endfunction
function xEv takes nothing returns boolean
    return(GetFilterPlayer() != Player(5))
endfunction
function xXv takes nothing returns boolean
    return(GetFilterPlayer() != Player(11))
endfunction
function xOv takes nothing returns boolean
    return GetBooleanAnd(xEv(), xXv())
endfunction
function xRv takes nothing returns boolean
    return GetBooleanAnd(xVv(), xOv())
endfunction
function xIv takes nothing returns boolean
    if(not(CountPlayersInForceBJ(Qc) > 0))then
        return false
    endif
    return true
endfunction
function xAv takes nothing returns boolean
    return(GetPlayerController(GetFilterPlayer()) == MAP_CONTROL_COMPUTER)
endfunction
function xNv takes nothing returns boolean
    return(IsPlayerAlly(GetFilterPlayer(), Player(11)) == true)
endfunction
function xbv takes nothing returns boolean
    return GetBooleanAnd(xAv(), xNv())
endfunction
function xBv takes nothing returns boolean
    return(GetFilterPlayer() != Player(5))
endfunction
function xcv takes nothing returns boolean
    return(GetFilterPlayer() != Player(11))
endfunction
function xCv takes nothing returns boolean
    return GetBooleanAnd(xBv(), xcv())
endfunction
function xdv takes nothing returns boolean
    return GetBooleanAnd(xbv(), xCv())
endfunction
function xDv takes nothing returns boolean
    if(not(CountPlayersInForceBJ(sc) > 0))then
        return false
    endif
    return true
endfunction
function xfv takes nothing returns boolean
    if(not(GetEnumPlayer() == GetLocalPlayer()))then
        return false
    endif
    return true
endfunction
function xFv takes nothing returns boolean
    if(not(GetEnumPlayer() == Player(5)))then
        return false
    endif
    return true
endfunction
function xgv takes nothing returns boolean
    if((GetEnumPlayer() == Player(5)))then
        return true
    endif
    if((GetEnumPlayer() == Player(11)))then
        return true
    endif
    return false
endfunction
function xGv takes nothing returns boolean
    if(not xgv())then
        return false
    endif
    return true
endfunction
function xhv takes nothing returns boolean
    if(not(GetPlayerSlotState(GetEnumPlayer()) == PLAYER_SLOT_STATE_PLAYING))then
        return false
    endif
    return true
endfunction
function xHv takes nothing returns nothing
    if(xhv())then
        set fB[GetConvertedPlayerId(GetEnumPlayer())] = DB
        call MultiboardSetItemIconBJ(dB, 1, DB, bB[GetConvertedPlayerId(GetEnumPlayer())])
        call MultiboardSetItemValueBJ(dB, 1, DB, (cB[GetConvertedPlayerId(GetEnumPlayer())] + (LB[GetConvertedPlayerId(GetEnumPlayer())] + "|r")))
        call MultiboardSetItemValueBJ(dB, 2, DB, "0|cfffafafa/|r0")
        call MultiboardSetItemColorBJ(dB, 2, DB, 100.00, 20.00, 20.00, 0)
        call MultiboardSetItemValueBJ(dB, 3, DB, "0")
        call MultiboardSetItemColorBJ(dB, 3, DB, 0.00, 50.00, 100.00, 0.00)
        if(xfv())then
            call MultiboardSetItemValueBJ(dB, 4, DB, ("|cffffff000|r"))
        else
            call MultiboardSetItemValueBJ(dB, 4, DB, ("|cff9494940|r"))
        endif
        if(xGv())then
            if(xFv())then
                call MultiboardSetItemValueBJ(dB, 1, DB, ("100%" + Pc))
            else
                call MultiboardSetItemValueBJ(dB, 1, DB, ("100%" + qc))
            endif
            call MultiboardSetItemColorBJ(dB, 1, DB, 0.00, 100.00, 0.00, 0)
            call MultiboardSetItemValueBJ(dB, 2, DB, ("|cfff0f0f00/0|r"))
            call MultiboardSetItemValueBJ(dB, 3, DB, ("|cfff0f0f00|r"))
            call MultiboardSetItemValueBJ(dB, 4, DB, ("|cfff0f0f00|r"))
        else
        endif
        set DB = (DB + 1)
    else
    endif
endfunction
function xjv takes nothing returns boolean
    return(GetPlayerController(GetFilterPlayer()) == MAP_CONTROL_USER)
endfunction
function xJv takes nothing returns boolean
    return(IsPlayerAlly(GetFilterPlayer(), Player(5)) == true)
endfunction
function xkv takes nothing returns boolean
    return GetBooleanAnd(xjv(), xJv())
endfunction
function xKv takes nothing returns boolean
    return(GetPlayerController(GetFilterPlayer()) == MAP_CONTROL_USER)
endfunction
function xlv takes nothing returns boolean
    return(IsPlayerAlly(GetFilterPlayer(), Player(11)) == true)
endfunction
function xLv takes nothing returns boolean
    return GetBooleanAnd(xKv(), xlv())
endfunction
function xmv takes nothing returns nothing
    set mB = GetPlayersMatching(Condition(function xiv))
    set CB = CountPlayersInForceBJ(mB)
    set Qc = GetPlayersMatching(Condition(function xRv))
    if(xIv())then
        set Pc = (" |cff949494| +" + I2S(CountPlayersInForceBJ(Qc)) + " Com|r")
    else
        set Pc = ""
    endif
    set sc = GetPlayersMatching(Condition(function xdv))
    if(xDv())then
        set qc = (" |cff949494| +" + I2S(CountPlayersInForceBJ(sc)) + " Com|r")
    else
        set qc = ""
    endif
    call CreateMultiboardBJ(4, (CB + 1), ("|cfffdcc24DDay " + ZF + " | Time: 00:00|r"))
    set dB = GetLastCreatedMultiboard()
    call MultiboardSetItemValueBJ(dB, 2, 1, "|cfff0f0f0K/D|r")
    call MultiboardSetItemValueBJ(dB, 3, 1, "|cfff0f0f0Dn|r")
    call MultiboardSetItemValueBJ(dB, 4, 1, "|cfff0f0f0Farm|r")
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = (CB + 1)
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call MultiboardSetItemStyleBJ(dB, 1, GetForLoopIndexA(), true, true)
        call MultiboardSetItemStyleBJ(dB, 2, GetForLoopIndexA(), true, false)
        call MultiboardSetItemStyleBJ(dB, 3, GetForLoopIndexA(), true, false)
        call MultiboardSetItemStyleBJ(dB, 4, GetForLoopIndexA(), true, false)
        call MultiboardSetItemWidthBJ(dB, 1, GetForLoopIndexA(), 10.00)
        call MultiboardSetItemWidthBJ(dB, 2, GetForLoopIndexA(), 2.50)
        call MultiboardSetItemWidthBJ(dB, 3, GetForLoopIndexA(), 2.00)
        call MultiboardSetItemWidthBJ(dB, 4, GetForLoopIndexA(), 2.00)
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set DB = 2
    call ForForce(mB, function xHv)
    call MultiboardSetItemStyleBJ(dB, 1, 1, false, false)
    call MultiboardSetItemStyleBJ(dB, 1, 2, true, true)
    call MultiboardSetItemIconBJ(dB, 1, fB[6], "ReplaceableTextures\\CommandButtons\\BTNCastle.blp")
    set bB[6] = "ReplaceableTextures\\CommandButtons\\BTNCastle.blp"
    call MultiboardSetItemStyleBJ(dB, 1, fB[6], true, false)
    call MultiboardSetItemIconBJ(dB, 1, fB[12], "ReplaceableTextures\\CommandButtons\\BTNBlackCitadel.blp")
    set bB[12] = "ReplaceableTextures\\CommandButtons\\BTNBlackCitadel.blp"
    call MultiboardSetItemStyleBJ(dB, 1, fB[12], true, false)
    call MultiboardDisplayBJ(true, dB)
    call MultiboardMinimizeBJ(false, dB)
    set AB[2] = GetPlayersMatching(Condition(function xkv))
    set AB[3] = GetPlayersMatching(Condition(function xLv))
endfunction
function xMv takes nothing returns nothing
    set OF = CreateTrigger()
    call TriggerRegisterTimerEventSingle(OF, 0.50)
    call TriggerAddAction(OF, function xmv)
endfunction
function xpv takes nothing returns boolean
    if((bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] == "ReplaceableTextures\\CommandButtons\\BTNSheep.blp"))then
        return true
    endif
    if((bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] == "ReplaceableTextures\\CommandButtons\\BTNPig.blp"))then
        return true
    endif
    return false
endfunction
function xPv takes nothing returns boolean
    if(not(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true))then
        return false
    endif
    if(not(IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), mB) == true))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(5)))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(11)))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(PLAYER_NEUTRAL_AGGRESSIVE)))then
        return false
    endif
    if(not xpv())then
        return false
    endif
    return true
endfunction
function xqv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H011')))then
        return false
    endif
    return true
endfunction
function xQv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('O00K')))then
        return false
    endif
    return true
endfunction
function xsv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H015')))then
        return false
    endif
    return true
endfunction
function xSv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H00U')))then
        return false
    endif
    return true
endfunction
function xtv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Emfr')))then
        return false
    endif
    return true
endfunction
function xTv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Emoo')))then
        return false
    endif
    return true
endfunction
function xuv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Eevi')))then
        return false
    endif
    return true
endfunction
function xUv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Hvwd')))then
        return false
    endif
    return true
endfunction
function xwv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H00E')))then
        return false
    endif
    return true
endfunction
function xWv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H00H')))then
        return false
    endif
    return true
endfunction
function xyv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H00A')))then
        return false
    endif
    return true
endfunction
function xYv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H00D')))then
        return false
    endif
    return true
endfunction
function xzv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('E004')))then
        return false
    endif
    return true
endfunction
function xZv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('N02G')))then
        return false
    endif
    return true
endfunction
function x_v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H00O')))then
        return false
    endif
    return true
endfunction
function x0v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Hjai')))then
        return false
    endif
    return true
endfunction
function x1v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Hart')))then
        return false
    endif
    return true
endfunction
function x2v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Npbm')))then
        return false
    endif
    return true
endfunction
function x3v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('E00J')))then
        return false
    endif
    return true
endfunction
function x4v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Hblm')))then
        return false
    endif
    return true
endfunction
function x5v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('E00K')))then
        return false
    endif
    return true
endfunction
function x6v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('HC05')))then
        return false
    endif
    return true
endfunction
function x7v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Nfir')))then
        return false
    endif
    return true
endfunction
function x8v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Hlgr')))then
        return false
    endif
    return true
endfunction
function x9v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H003')))then
        return false
    endif
    return true
endfunction
function ovv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Eill')))then
        return false
    endif
    return true
endfunction
function oev takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('E000')))then
        return false
    endif
    return true
endfunction
function oxv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H001')))then
        return false
    endif
    return true
endfunction
function oov takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H008')))then
        return false
    endif
    return true
endfunction
function orv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H002')))then
        return false
    endif
    return true
endfunction
function oiv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H00S')))then
        return false
    endif
    return true
endfunction
function oav takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H014')))then
        return false
    endif
    return true
endfunction
function onv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('E00E')))then
        return false
    endif
    return true
endfunction
function oVv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('E00R')))then
        return false
    endif
    return true
endfunction
function oEv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H004')))then
        return false
    endif
    return true
endfunction
function oXv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('E005')))then
        return false
    endif
    return true
endfunction
function oOv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H00C')))then
        return false
    endif
    return true
endfunction
function oRv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Hpal')))then
        return false
    endif
    return true
endfunction
function oIv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Hamg')))then
        return false
    endif
    return true
endfunction
function oAv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Hmkg')))then
        return false
    endif
    return true
endfunction
function oNv takes nothing returns nothing
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Awaken\\Awaken.mdl", GetUnitX(GetEnteringUnit()), GetUnitY(GetEnteringUnit())))
    if(xqv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNHuntress.blp"
    else
    endif
    if(xQv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNFurion.blp"
    else
    endif
    if(xsv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNTheCaptain.blp"
    else
    endif
    if(xSv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNWolverine.blp"
    else
    endif
    if(xtv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNNewMalFurion.blp"
    else
    endif
    if(xTv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNPriestessOfTheMoon.blp"
    else
    endif
    if(xuv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNEvilIllidan.blp"
    else
    endif
    if(xUv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNSylvanusWindrunner.blp"
    else
    endif
    if(xwv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNHulk.blp"
    else
    endif
    if(xWv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNVillagerWoman.blp"
    else
    endif
    if(xyv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNBeastMaster.blp"
    else
    endif
    if(xYv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNGaran.blp"
    else
    endif
    if(xzv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNTreant.tga"
    else
    endif
    if(xZv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNHeroTinker.blp"
    else
    endif
    if(x_v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNTuskaarBlack.blp"
    else
    endif
    if(x0v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNMedivh.blp"
    else
    endif
    if(x1v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNMarine.blp"
    else
    endif
    if(x2v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNPandarenBrewmaster.blp"
    else
    endif
    if(x3v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp"
    else
    endif
    if(x4v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNBloodMage2.blp"
    else
    endif
    if(x5v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNWarMaster.blp"
    else
    endif
    if(x6v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNDruidOfTheClaw.blp"
    else
    endif
    if(x7v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNHeroAvatarOfFlame.blp"
    else
    endif
    if(x8v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNGarithos.blp"
    else
    endif
    if(x9v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNMedic.blp"
    else
    endif
    if(ovv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNCyrax.blp"
    else
    endif
    if(oev())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNKeeperGhostBlue.blp"
    else
    endif
    if(oxv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNAdmiral.BLP"
    else
    endif
    if(oov())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNSorceress.blp"
    else
    endif
    if(orv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNDuke.blp"
    else
    endif
    if(oiv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNCyber.blp"
    else
    endif
    if(oav())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNCow.blp"
    else
    endif
    if(onv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNKimahri.blp"
    else
    endif
    if(oVv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNAvengingWatcher.blp"
    else
    endif
    if(oEv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNCaptain.blp"
    else
    endif
    if(oXv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNGhost.blp"
    else
    endif
    if(oOv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNMountainGiant.tga"
    else
    endif
    if(oRv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNHeroPaladin.blp"
    else
    endif
    if(oIv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNJaina.blp"
    else
    endif
    if(oAv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNHeroMountainKing.blp"
    else
    endif
endfunction
function obv takes nothing returns nothing
    set RF = CreateTrigger()
    call TriggerRegisterEnterRectSimple(RF, VC)
    call TriggerRegisterEnterRectSimple(RF, EC)
    call TriggerAddCondition(RF, Condition(function xPv))
    call TriggerAddAction(RF, function oNv)
endfunction
function oBv takes nothing returns boolean
    if((bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] == "ReplaceableTextures\\CommandButtons\\BTNSheep.blp"))then
        return true
    endif
    if((bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] == "ReplaceableTextures\\CommandButtons\\BTNPig.blp"))then
        return true
    endif
    return false
endfunction
function ocv takes nothing returns boolean
    if(not(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true))then
        return false
    endif
    if(not(IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), mB) == true))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(5)))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(11)))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(PLAYER_NEUTRAL_AGGRESSIVE)))then
        return false
    endif
    if(not oBv())then
        return false
    endif
    return true
endfunction
function oCv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('N011')))then
        return false
    endif
    return true
endfunction
function odv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Nalc')))then
        return false
    endif
    return true
endfunction
function oDv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Ogld')))then
        return false
    endif
    return true
endfunction
function ofv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Opgh')))then
        return false
    endif
    return true
endfunction
function oFv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Othr')))then
        return false
    endif
    return true
endfunction
function ogv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Uear')))then
        return false
    endif
    return true
endfunction
function oGv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Ulic')))then
        return false
    endif
    return true
endfunction
function ohv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Udre')))then
        return false
    endif
    return true
endfunction
function oHv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Uwar')))then
        return false
    endif
    return true
endfunction
function ojv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('O004')))then
        return false
    endif
    return true
endfunction
function oJv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H00B')))then
        return false
    endif
    return true
endfunction
function okv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('O00B')))then
        return false
    endif
    return true
endfunction
function oKv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('O00C')))then
        return false
    endif
    return true
endfunction
function olv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('O00H')))then
        return false
    endif
    return true
endfunction
function oLv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('H00P')))then
        return false
    endif
    return true
endfunction
function omv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('N00N')))then
        return false
    endif
    return true
endfunction
function oMv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('N00C')))then
        return false
    endif
    return true
endfunction
function opv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Uktl')))then
        return false
    endif
    return true
endfunction
function oPv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Ocbh')))then
        return false
    endif
    return true
endfunction
function oqv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('U00B')))then
        return false
    endif
    return true
endfunction
function oQv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('O00I')))then
        return false
    endif
    return true
endfunction
function osv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('N023')))then
        return false
    endif
    return true
endfunction
function oSv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('O00L')))then
        return false
    endif
    return true
endfunction
function otv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('N022')))then
        return false
    endif
    return true
endfunction
function oTv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Oshd')))then
        return false
    endif
    return true
endfunction
function ouv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Nbrn')))then
        return false
    endif
    return true
endfunction
function oUv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('N025')))then
        return false
    endif
    return true
endfunction
function owv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Otcc')))then
        return false
    endif
    return true
endfunction
function oWv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('U000')))then
        return false
    endif
    return true
endfunction
function oyv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('U005')))then
        return false
    endif
    return true
endfunction
function oYv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Nman')))then
        return false
    endif
    return true
endfunction
function ozv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('O001')))then
        return false
    endif
    return true
endfunction
function oZv takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Harf')))then
        return false
    endif
    return true
endfunction
function o_v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('E00S')))then
        return false
    endif
    return true
endfunction
function o0v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('N000')))then
        return false
    endif
    return true
endfunction
function o1v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('U001')))then
        return false
    endif
    return true
endfunction
function o2v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('N002')))then
        return false
    endif
    return true
endfunction
function o3v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('E008')))then
        return false
    endif
    return true
endfunction
function o4v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('N00M')))then
        return false
    endif
    return true
endfunction
function o5v takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit()) == ('Otch')))then
        return false
    endif
    return true
endfunction
function o6v takes nothing returns nothing
    if(oCv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNSkeletalOrcChampion.blp"
    else
    endif
    if(odv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNRaider.blp"
    else
    endif
    if(oDv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNGuldan.blp"
    else
    endif
    if(ofv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNChaosGrom.blp"
    else
    endif
    if(oFv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNThrall.blp"
    else
    endif
    if(ogv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNHeroDeathKnight.blp"
    else
    endif
    if(oGv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNLichVersion2.blp"
    else
    endif
    if(ohv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNHeroDreadLord.blp"
    else
    endif
    if(oHv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNArchimonde.blp"
    else
    endif
    if(ojv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNNinja.blp"
    else
    endif
    if(oJv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNChaosWarlock.blp"
    else
    endif
    if(okv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNBlake.blp"
    else
    endif
    if(oKv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNAcolyte.tga"
    else
    endif
    if(olv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNAlien.blp"
    else
    endif
    if(oLv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNHellnar.blp"
    else
    endif
    if(omv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNSpiritWalker.tga"
    else
    endif
    if(oMv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNDoomGuard.blp"
    else
    endif
    if(opv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNMurlocFlesheater.blp"
    else
    endif
    if(oPv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNChaosSpaceOrc.blp"
    else
    endif
    if(oqv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNHeroCryptLord.blp"
    else
    endif
    if(oQv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNNightmare.blp"
    else
    endif
    if(osv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNUnbroken.blp"
    else
    endif
    if(oSv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNRevenant.blp"
    else
    endif
    if(otv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNCorruptedAncientProtector.blp"
    else
    endif
    if(oTv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNShadowHunter.blp"
    else
    endif
    if(ouv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNBansheeRanger.blp"
    else
    endif
    if(oUv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNNagaSeaWitch.blp"
    else
    endif
    if(owv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNJunkGolem.blp"
    else
    endif
    if(oWv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNRedInfernal.blp"
    else
    endif
    if(oyv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNEredarWarlockPurple.blp"
    else
    endif
    if(oYv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNMannoroth.blp"
    else
    endif
    if(ozv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNChaosWarlord.blp"
    else
    endif
    if(oZv())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNTechKnight.blp"
    else
    endif
    if(o_v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNDemoness.blp"
    else
    endif
    if(o0v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNKiljaedin.blp"
    else
    endif
    if(o1v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNTichondrius.blp"
    else
    endif
    if(o2v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNTerminator.blp"
    else
    endif
    if(o3v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNMetamorphosis.blp"
    else
    endif
    if(o4v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNCorruptedAncientOfWar.blp"
    else
    endif
    if(o5v())then
        set bB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = "ReplaceableTextures\\CommandButtons\\BTNHeroTaurenChieftain.blp"
    else
    endif
endfunction
function o7v takes nothing returns nothing
    set IF = CreateTrigger()
    call TriggerRegisterEnterRectSimple(IF, VC)
    call TriggerRegisterEnterRectSimple(IF, EC)
    call TriggerAddCondition(IF, Condition(function ocv))
    call TriggerAddAction(IF, function o6v)
endfunction
function o8v takes nothing returns boolean
    if(not(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(5)))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(11)))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(PLAYER_NEUTRAL_AGGRESSIVE)))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(PLAYER_NEUTRAL_PASSIVE)))then
        return false
    endif
    if(not(GetOwningPlayer(GetKillingUnitBJ()) != Player(5)))then
        return false
    endif
    if(not(GetOwningPlayer(GetKillingUnitBJ()) != Player(11)))then
        return false
    endif
    if(not(GetOwningPlayer(GetKillingUnitBJ()) != Player(PLAYER_NEUTRAL_AGGRESSIVE)))then
        return false
    endif
    if(not(GetOwningPlayer(GetKillingUnitBJ()) != Player(PLAYER_NEUTRAL_PASSIVE)))then
        return false
    endif
    if(not(IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetKillingUnitBJ())) == true))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != GetOwningPlayer(GetKillingUnitBJ())))then
        return false
    endif
    if(not(IsUnitIllusionBJ(GetTriggerUnit()) == false))then
        return false
    endif
    if(not(GetTriggerUnit() != null))then
        return false
    endif
    if(not(GetKillingUnitBJ() != null))then
        return false
    endif
    return true
endfunction
function o9v takes nothing returns boolean
    if(not(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true))then
        return false
    endif
    if(not(IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), mB) == true))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(5)))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(11)))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(PLAYER_NEUTRAL_AGGRESSIVE)))then
        return false
    endif
    if(not(GetTriggerUnit() != null))then
        return false
    endif
    return true
endfunction
function rvv takes nothing returns nothing
    if(o8v())then
        set FB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] = (FB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] + 1)
        call MultiboardSetItemValueBJ(dB, 2, fB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], (I2S(FB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) + ("|cfffafafa/|r" + I2S(gB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]))))
        set FB[6] = ((((FB[1] + FB[2]) + FB[3]) + FB[4]) + FB[5])
        call MultiboardSetItemValueBJ(dB, 2, fB[6], ("|cfff0f0f0" + (I2S(FB[6]) + (("/" + I2S(gB[6])) + "|r"))))
        set FB[12] = ((((FB[7] + FB[8]) + FB[9]) + FB[10]) + FB[11])
        call MultiboardSetItemValueBJ(dB, 2, fB[12], ("|cfff0f0f0" + (I2S(FB[12]) + (("/" + I2S(gB[12])) + "|r"))))
    else
    endif
    if(o9v())then
        set gB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = (gB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] + 1)
        call MultiboardSetItemValueBJ(dB, 2, fB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], (I2S(FB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + ("|cfffafafa/|r" + I2S(gB[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]))))
        set gB[6] = ((((gB[1] + gB[2]) + gB[3]) + gB[4]) + gB[5])
        call MultiboardSetItemValueBJ(dB, 2, fB[6], ("|cfff0f0f0" + (I2S(FB[6]) + (("/" + I2S(gB[6])) + "|r"))))
        set gB[12] = ((((gB[7] + gB[8]) + gB[9]) + gB[10]) + gB[11])
        call MultiboardSetItemValueBJ(dB, 2, fB[12], ("|cfff0f0f0" + (I2S(FB[12]) + (("/" + I2S(gB[12])) + "|r"))))
    else
    endif
endfunction
function rev takes nothing returns nothing
    set AF = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(AF, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddAction(AF, function rvv)
endfunction
function rxv takes nothing returns boolean
    if(not(IsUnitAlly(GetKillingUnitBJ(), GetOwningPlayer(GetTriggerUnit())) == true))then
        return false
    endif
    if(not(IsPlayerInForce(GetOwningPlayer(GetKillingUnitBJ()), mB) == true))then
        return false
    endif
    if(not(GetOwningPlayer(GetKillingUnitBJ()) != Player(5)))then
        return false
    endif
    if(not(GetOwningPlayer(GetKillingUnitBJ()) != Player(11)))then
        return false
    endif
    if(not(GetOwningPlayer(GetKillingUnitBJ()) != Player(PLAYER_NEUTRAL_AGGRESSIVE)))then
        return false
    endif
    if(not(GetOwningPlayer(GetKillingUnitBJ()) != Player(PLAYER_NEUTRAL_PASSIVE)))then
        return false
    endif
    return true
endfunction
function rov takes nothing returns nothing
    set GB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] = (GB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] + 1)
    call MultiboardSetItemValueBJ(dB, 3, fB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], I2S(GB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]))
    set GB[6] = ((((GB[1] + GB[2]) + GB[3]) + GB[4]) + GB[5])
    call MultiboardSetItemValueBJ(dB, 3, fB[6], ("|cfff0f0f0" + (I2S(GB[6]) + "|r")))
    set GB[12] = ((((GB[7] + GB[8]) + GB[9]) + GB[10]) + GB[11])
    call MultiboardSetItemValueBJ(dB, 3, fB[12], ("|cfff0f0f0" + (I2S(GB[12]) + "|r")))
endfunction
function rrv takes nothing returns nothing
    set NF = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(NF, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(NF, Condition(function rxv))
    call TriggerAddAction(NF, function rov)
endfunction
function riv takes nothing returns boolean
    if(not(IsPlayerInForce(GetOwningPlayer(GetKillingUnitBJ()), mB) == true))then
        return false
    endif
    if(not(GetOwningPlayer(GetKillingUnitBJ()) != Player(5)))then
        return false
    endif
    if(not(GetOwningPlayer(GetKillingUnitBJ()) != Player(11)))then
        return false
    endif
    if(not(GetOwningPlayer(GetKillingUnitBJ()) != Player(PLAYER_NEUTRAL_AGGRESSIVE)))then
        return false
    endif
    if(not(GetOwningPlayer(GetKillingUnitBJ()) != Player(PLAYER_NEUTRAL_PASSIVE)))then
        return false
    endif
    if(not(IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetKillingUnitBJ())) == true))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != GetOwningPlayer(GetKillingUnitBJ())))then
        return false
    endif
    if(not(IsUnitIllusionBJ(GetTriggerUnit()) == false))then
        return false
    endif
    if(not(GetTriggerUnit() != null))then
        return false
    endif
    if(not(GetKillingUnitBJ() != null))then
        return false
    endif
    return true
endfunction
function rav takes nothing returns boolean
    if(not(GetOwningPlayer(GetKillingUnitBJ()) == GetLocalPlayer()))then
        return false
    endif
    return true
endfunction
function rnv takes nothing returns boolean
    if(not(GetOwningPlayer(GetKillingUnitBJ()) == GetLocalPlayer()))then
        return false
    endif
    return true
endfunction
function rVv takes nothing returns boolean
    if(not(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true))then
        return false
    endif
    if(not(GetOwningPlayer(GetTriggerUnit()) != Player(PLAYER_NEUTRAL_AGGRESSIVE)))then
        return false
    endif
    return true
endfunction
function rEv takes nothing returns nothing
    if(rVv())then
        set hB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] = (hB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] + 5)
        if(rnv())then
            call MultiboardSetItemValueBJ(dB, 4, fB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], ("|cffffff00" + (I2S(hB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) + "|r")))
        else
            call MultiboardSetItemValueBJ(dB, 4, fB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], ("|cff949494" + (I2S(hB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) + "|r")))
        endif
        set hB[6] = ((((hB[1] + hB[2]) + hB[3]) + hB[4]) + hB[5])
        call MultiboardSetItemValueBJ(dB, 4, fB[6], ("|cfff0f0f0" + (I2S(hB[6]) + "|r")))
        set hB[12] = ((((hB[7] + hB[8]) + hB[9]) + hB[10]) + hB[11])
        call MultiboardSetItemValueBJ(dB, 4, fB[12], ("|cfff0f0f0" + (I2S(hB[12]) + "|r")))
    else
        set hB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] = (hB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] + 1)
        if(rav())then
            call MultiboardSetItemValueBJ(dB, 4, fB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], ("|cffffff00" + (I2S(hB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) + "|r")))
        else
            call MultiboardSetItemValueBJ(dB, 4, fB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], ("|cff949494" + (I2S(hB[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) + "|r")))
        endif
        set hB[6] = ((((hB[1] + hB[2]) + hB[3]) + hB[4]) + hB[5])
        call MultiboardSetItemValueBJ(dB, 4, fB[6], ("|cfff0f0f0" + (I2S(hB[6]) + "|r")))
        set hB[12] = ((((hB[7] + hB[8]) + hB[9]) + hB[10]) + hB[11])
        call MultiboardSetItemValueBJ(dB, 4, fB[12], ("|cfff0f0f0" + (I2S(hB[12]) + "|r")))
    endif
endfunction
function rXv takes nothing returns nothing
    set bF = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(bF, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(bF, Condition(function riv))
    call TriggerAddAction(bF, function rEv)
endfunction
function rOv takes nothing returns boolean
    if(not(JB >= 60))then
        return false
    endif
    return true
endfunction
function rRv takes nothing returns boolean
    if(not(JB < 10))then
        return false
    endif
    return true
endfunction
function rIv takes nothing returns boolean
    if(not(kB < 10))then
        return false
    endif
    return true
endfunction
function rAv takes nothing returns boolean
    if(not(ac == true))then
        return false
    endif
    return true
endfunction
function rNv takes nothing returns boolean
    if(not(Ec[6] >= 50))then
        return false
    endif
    return true
endfunction
function rbv takes nothing returns boolean
    if(not(Ec[12] >= 50))then
        return false
    endif
    return true
endfunction
function rBv takes nothing returns boolean
    if(not(IsPlayerAlly(GetEnumPlayer(), Player(5)) == true))then
        return false
    endif
    return true
endfunction
function rcv takes nothing returns boolean
    if(not(IsPlayerAlly(GetEnumPlayer(), Player(5)) == true))then
        return false
    endif
    if(not(GetEnumPlayer() != Player(5)))then
        return false
    endif
    return true
endfunction
function rCv takes nothing returns boolean
    if(not(IsPlayerAlly(GetEnumPlayer(), Player(11)) == true))then
        return false
    endif
    if(not(GetEnumPlayer() != Player(11)))then
        return false
    endif
    return true
endfunction
function rdv takes nothing returns boolean
    if(rcv())then
        return true
    endif
    if(rCv())then
        return true
    endif
    return false
endfunction
function rDv takes nothing returns boolean
    if(not(hB[GetConvertedPlayerId(GetEnumPlayer())] < hB[HB]))then
        return false
    endif
    if(not(fB[GetConvertedPlayerId(GetEnumPlayer())] < fB[HB]))then
        return false
    endif
    return true
endfunction
function rfv takes nothing returns boolean
    if(not(hB[GetConvertedPlayerId(GetEnumPlayer())] > hB[HB]))then
        return false
    endif
    if(not(fB[GetConvertedPlayerId(GetEnumPlayer())] > fB[HB]))then
        return false
    endif
    return true
endfunction
function rFv takes nothing returns boolean
    if(not(hB[GetConvertedPlayerId(GetEnumPlayer())] == hB[HB]))then
        return false
    endif
    if(not(fB[GetConvertedPlayerId(GetEnumPlayer())] < fB[HB]))then
        return false
    endif
    if(not(GetConvertedPlayerId(GetEnumPlayer()) > HB))then
        return false
    endif
    return true
endfunction
function rgv takes nothing returns boolean
    if(not(hB[GetConvertedPlayerId(GetEnumPlayer())] == hB[HB]))then
        return false
    endif
    if(not(fB[GetConvertedPlayerId(GetEnumPlayer())] > fB[HB]))then
        return false
    endif
    if(not(GetConvertedPlayerId(GetEnumPlayer()) < HB))then
        return false
    endif
    return true
endfunction
function rGv takes nothing returns boolean
    if(rDv())then
        return true
    endif
    if(rfv())then
        return true
    endif
    if(rFv())then
        return true
    endif
    if(rgv())then
        return true
    endif
    return false
endfunction
function rhv takes nothing returns boolean
    if(not rGv())then
        return false
    endif
    return true
endfunction
function rHv takes nothing returns boolean
    if(not rdv())then
        return false
    endif
    return true
endfunction
function rjv takes nothing returns nothing
    if(rHv())then
        if(rBv())then
            set HB = GetConvertedPlayerId(ForcePickRandomPlayer(AB[2]))
        else
            set HB = GetConvertedPlayerId(ForcePickRandomPlayer(AB[3]))
        endif
        if(rhv())then
            set jB = fB[GetConvertedPlayerId(GetEnumPlayer())]
            set fB[GetConvertedPlayerId(GetEnumPlayer())] = fB[HB]
            set fB[HB] = jB
        else
        endif
    else
    endif
endfunction
function rJv takes nothing returns boolean
    if(not(GetEnumPlayer() == GetLocalPlayer()))then
        return false
    endif
    return true
endfunction
function rkv takes nothing returns boolean
    if(not(GetEnumPlayer() != Player(5)))then
        return false
    endif
    if(not(GetEnumPlayer() != Player(11)))then
        return false
    endif
    return true
endfunction
function rKv takes nothing returns nothing
    if(rkv())then
        call MultiboardSetItemIconBJ(dB, 1, fB[GetConvertedPlayerId(GetEnumPlayer())], bB[GetConvertedPlayerId(GetEnumPlayer())])
        call MultiboardSetItemValueBJ(dB, 1, fB[GetConvertedPlayerId(GetEnumPlayer())], (cB[GetConvertedPlayerId(GetEnumPlayer())] + (LB[GetConvertedPlayerId(GetEnumPlayer())] + "|r")))
        call MultiboardSetItemValueBJ(dB, 2, fB[GetConvertedPlayerId(GetEnumPlayer())], (I2S(FB[GetConvertedPlayerId(GetEnumPlayer())]) + ("|cfffafafa/|r" + I2S(gB[GetConvertedPlayerId(GetEnumPlayer())]))))
        call MultiboardSetItemValueBJ(dB, 3, fB[GetConvertedPlayerId(GetEnumPlayer())], I2S(GB[GetConvertedPlayerId(GetEnumPlayer())]))
        if(rJv())then
            call MultiboardSetItemValueBJ(dB, 4, fB[GetConvertedPlayerId(GetEnumPlayer())], ("|cffffff00" + (I2S(hB[GetConvertedPlayerId(GetEnumPlayer())]) + "|r")))
        else
            call MultiboardSetItemValueBJ(dB, 4, fB[GetConvertedPlayerId(GetEnumPlayer())], ("|cff949494" + (I2S(hB[GetConvertedPlayerId(GetEnumPlayer())]) + "|r")))
        endif
    else
    endif
endfunction
function rlv takes nothing returns nothing
    call MultiboardDisplayBJ(true, dB)
    set JB = (JB + 1)
    if(rOv())then
        set JB = 0
        set kB = (kB + 1)
    else
    endif
    if(rRv())then
        set KB = ("0" + I2S(JB))
    else
        set KB = I2S(JB)
    endif
    if(rIv())then
        set lB = ("0" + (I2S(kB) + ":"))
    else
        set lB = (I2S(kB) + ":")
    endif
    if(rAv())then
        call MultiboardSetTitleText(dB, ("|cffff0000Test Mode|r|cfffdcc24 | Time: " + (lB + (KB + "|r"))))
    else
        call MultiboardSetTitleText(dB, (("|cfffdcc24DDay " + ZF + " | Time: ") + (lB + (KB + "|r"))))
    endif
    set Ec[6] = (R2I(GetUnitLifePercent(hb)))
    set Ec[12] = (R2I(GetUnitLifePercent(lb)))
    call MultiboardSetItemValueBJ(dB, 1, fB[6], (I2S(Ec[6]) + ("%" + Pc)))
    if(rNv())then
        call MultiboardSetItemColorBJ(dB, 1, fB[6], ((100.00 - GetUnitLifePercent(hb)) * 2.00), 100.00, 0.00, 0)
    else
        call MultiboardSetItemColorBJ(dB, 1, fB[6], 100.00, (GetUnitLifePercent(hb) * 2.00), 0.00, 0)
    endif
    call MultiboardSetItemValueBJ(dB, 1, fB[12], (I2S(Ec[12]) + ("%" + qc)))
    if(rbv())then
        call MultiboardSetItemColorBJ(dB, 1, fB[12], ((100.00 - GetUnitLifePercent(lb)) * 2.00), 100.00, 0.00, 0)
    else
        call MultiboardSetItemColorBJ(dB, 1, fB[12], 100.00, (GetUnitLifePercent(lb) * 2.00), 0.00, 0)
    endif
    call MultiboardSetItemValueBJ(dB, 2, 1, "|cfff0f0f0K/D|r")
    call MultiboardSetItemValueBJ(dB, 3, 1, "|cfff0f0f0Dn|r")
    call MultiboardSetItemValueBJ(dB, 4, 1, "|cfff0f0f0Farm|r")
    call ForForce(mB, function rjv)
    call ForForce(mB, function rKv)
endfunction
function rLv takes nothing returns nothing
    set BF = CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(BF, 1.00)
    call TriggerAddAction(BF, function rlv)
endfunction
function rmv takes nothing returns nothing
    set LB[GetConvertedPlayerId(GetTriggerPlayer())] = (GetPlayerName(GetTriggerPlayer()) + "<Left>")
endfunction
function rMv takes nothing returns nothing
    set cF = CreateTrigger()
    call TriggerRegisterPlayerEventLeave(cF, Player(0))
    call TriggerRegisterPlayerEventLeave(cF, Player(1))
    call TriggerRegisterPlayerEventLeave(cF, Player(2))
    call TriggerRegisterPlayerEventLeave(cF, Player(3))
    call TriggerRegisterPlayerEventLeave(cF, Player(4))
    call TriggerRegisterPlayerEventLeave(cF, Player(5))
    call TriggerRegisterPlayerEventLeave(cF, Player(6))
    call TriggerRegisterPlayerEventLeave(cF, Player(7))
    call TriggerRegisterPlayerEventLeave(cF, Player(8))
    call TriggerRegisterPlayerEventLeave(cF, Player(9))
    call TriggerRegisterPlayerEventLeave(cF, Player(10))
    call TriggerRegisterPlayerEventLeave(cF, Player(11))
    call TriggerAddAction(cF, function rmv)
endfunction
function rpv takes nothing returns boolean
    if(not(GetEnumPlayer() != Player(5)))then
        return false
    endif
    if(not(GetEnumPlayer() != Player(11)))then
        return false
    endif
    return true
endfunction
function rPv takes nothing returns nothing
    if(rpv())then
        call SetPlayerStateBJ(GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD, 0)
    else
    endif
endfunction
function rqv takes nothing returns boolean
    if(not(Sc == false))then
        return false
    endif
    if(not(tc == false))then
        return false
    endif
    if(not(CountPlayersInForceBJ(Qc) == 0))then
        return false
    endif
    if(not(CountPlayersInForceBJ(sc) == 0))then
        return false
    endif
    return true
endfunction
function rQv takes nothing returns nothing
    if(rqv())then
        call ForForce(GetPlayersAll(), function rPv)
        set tc = true
        set Zc = GetTriggerPlayer()
        set zc = (cB[GetConvertedPlayerId(GetTriggerPlayer())] + (GetPlayerName(GetTriggerPlayer()) + "|r"))
        call DialogSetMessageBJ(Tc, "|cfffcd211Set Gold for Team 1|r")
        set bj_forLoopAIndex = 1
        set bj_forLoopAIndexEnd = 10
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call DialogAddButtonBJ(Tc, ("|cfffcd211" + (I2S((400 * GetForLoopIndexA())) + " Gold|r")))
            set Uc[GetForLoopIndexA()] = GetLastCreatedButtonBJ()
            set bj_forLoopAIndex = bj_forLoopAIndex + 1
        endloop
        call DialogDisplayBJ(true, Tc, GetTriggerPlayer())
    else
        call DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), "|cffff0000Can only be used when there is no Computer and Hero is not selected!|r")
    endif
endfunction
function rsv takes nothing returns nothing
    set CF = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(CF, Player(0), "-setgold", true)
    call TriggerRegisterPlayerChatEvent(CF, Player(6), "-setgold", true)
    call TriggerAddAction(CF, function rQv)
endfunction
function rSv takes nothing returns boolean
    if(not(GetClickedButtonBJ() == Uc[GetForLoopIndexA()]))then
        return false
    endif
    return true
endfunction
function rtv takes nothing returns nothing
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 10
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(rSv())then
            set yc = (400 * GetForLoopIndexA())
        else
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, zc + " set |cfffcd211" + I2S(yc) + " Gold|r for |cfffe8a0eTeam 1|r!")
    call DialogSetMessageBJ(wc, "|cfffcd211Set Gold for Team 2|r")
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 10
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call DialogAddButtonBJ(wc, ("|cfffcd211" + (I2S((400 * GetForLoopIndexA())) + " Gold|r")))
        set Wc[GetForLoopIndexA()] = GetLastCreatedButtonBJ()
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    call DialogDisplayBJ(true, wc, Zc)
endfunction
function rTv takes nothing returns nothing
    set dF = CreateTrigger()
    call TriggerRegisterDialogEventBJ(dF, Tc)
    call TriggerAddAction(dF, function rtv)
endfunction
function ruv takes nothing returns boolean
    if(not(GetClickedButtonBJ() == Wc[GetForLoopIndexA()]))then
        return false
    endif
    return true
endfunction
function rUv takes nothing returns nothing
    call DialogDisplayBJ(true, vC, GetEnumPlayer())
endfunction
function rwv takes nothing returns nothing
    call DialogDisplayBJ(false, vC, GetEnumPlayer())
endfunction
function rWv takes nothing returns boolean
    if(not(GetEnumPlayer() != Player(5)))then
        return false
    endif
    if(not(IsPlayerAlly(GetEnumPlayer(), Player(5)) == true))then
        return false
    endif
    if(not(IsPlayerInForce(GetEnumPlayer(), oC) == false))then
        return false
    endif
    if(not(IsPlayerInForce(GetEnumPlayer(), eB) == false))then
        return false
    endif
    return true
endfunction
function ryv takes nothing returns boolean
    if(not(GetEnumPlayer() != Player(11)))then
        return false
    endif
    if(not(IsPlayerAlly(GetEnumPlayer(), Player(11)) == true))then
        return false
    endif
    if(not(IsPlayerInForce(GetEnumPlayer(), oC) == false))then
        return false
    endif
    if(not(IsPlayerInForce(GetEnumPlayer(), eB) == false))then
        return false
    endif
    return true
endfunction
function rYv takes nothing returns nothing
    if(rWv())then
        call SetPlayerStateBJ(GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD, 800)
    else
    endif
    if(ryv())then
        call SetPlayerStateBJ(GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD, 800)
    else
    endif
endfunction
function rzv takes nothing returns boolean
    if(not(GetEnumPlayer() != Player(5)))then
        return false
    endif
    if(not(IsPlayerAlly(GetEnumPlayer(), Player(5)) == true))then
        return false
    endif
    if(not(IsPlayerInForce(GetEnumPlayer(), oC) == false))then
        return false
    endif
    if(not(IsPlayerInForce(GetEnumPlayer(), eB) == false))then
        return false
    endif
    return true
endfunction
function rZv takes nothing returns boolean
    if(not(GetEnumPlayer() != Player(11)))then
        return false
    endif
    if(not(IsPlayerAlly(GetEnumPlayer(), Player(11)) == true))then
        return false
    endif
    if(not(IsPlayerInForce(GetEnumPlayer(), oC) == false))then
        return false
    endif
    if(not(IsPlayerInForce(GetEnumPlayer(), eB) == false))then
        return false
    endif
    return true
endfunction
function r_v takes nothing returns nothing
    if(rzv())then
        call SetPlayerStateBJ(GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD, yc)
        call DisplayTextToForce(GetForceOfPlayer(GetEnumPlayer()), ("You get |cfffcd211" + I2S(yc) + " Gold|r!"))
    else
    endif
    if(rZv())then
        call SetPlayerStateBJ(GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD, Yc)
        call DisplayTextToForce(GetForceOfPlayer(GetEnumPlayer()), ("You get |cfffcd211" + I2S(Yc) + " Gold|r!"))
    else
    endif
endfunction
function r0v takes nothing returns boolean
    if(not(xC == false))then
        return false
    endif
    return true
endfunction
function r1v takes nothing returns nothing
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 10
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if(ruv())then
            set Yc = (400 * GetForLoopIndexA())
        else
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, zc + " set |cfffcd211" + I2S(Yc) + " Gold|r for |cff4e2a04Team 2|r!")
    call DialogSetMessageBJ(vC, (zc + "|cfffcfcfc Set |r" + I2S(yc) + " Gold |cfffbfbfbfor|r |cfffe8a0eTeam 1|r|cfffcfcfc.|r|n" + zc + "|cfffcfcfc Set |r" + I2S(Yc) + " Gold |cfffbfbfbfor|r |cff4e2a04Team 2|r|cfffcfcfc.|r"))
    call DialogAddButtonBJ(vC, "|cfffcd211YES!|r")
    set eC[1] = GetLastCreatedButtonBJ()
    call DialogAddButtonBJ(vC, "|cfffcd211NO!|r")
    set eC[2] = GetLastCreatedButtonBJ()
    call ForForce(GetPlayersAll(), function rUv)
    call TriggerSleepAction(5.00)
    call ForForce(GetPlayersAll(), function rwv)
    if(r0v())then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cfffcd211No one click NO, comfirm Set Gold!|r")
        call ForForce(mB, function r_v)
        set Pc = (" |cff949494| Set " + I2S(yc) + "|r")
        set qc = (" |cff949494| Set " + I2S(Yc) + "|r")
    else
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cfffcd211Set Gold failed, restore 800 Gold!|r")
        call ForForce(mB, function rYv)
    endif
endfunction
function r2v takes nothing returns nothing
    set DF = CreateTrigger()
    call TriggerRegisterDialogEventBJ(DF, wc)
    call TriggerAddAction(DF, function r1v)
endfunction
function r3v takes nothing returns boolean
    if(not(GetClickedButtonBJ() == eC[1]))then
        return false
    endif
    return true
endfunction
function r4v takes nothing returns boolean
    if(not(GetClickedButtonBJ() == eC[2]))then
        return false
    endif
    return true
endfunction
function r5v takes nothing returns nothing
    if(r3v())then
        call DisplayTextToForce(GetPlayersAllies(Player(5)), (cB[GetConvertedPlayerId(GetTriggerPlayer())] + (GetPlayerName(GetTriggerPlayer()) + "|r choose |cfffcd211YES|r!")))
    else
    endif
    if(r4v())then
        set xC = true
        call DisplayTextToForce(GetPlayersAllies(Player(5)), (cB[GetConvertedPlayerId(GetTriggerPlayer())] + (GetPlayerName(GetTriggerPlayer()) + "|r choose |cfffcd211NO|r!")))
    else
    endif
endfunction
function r6v takes nothing returns nothing
    set fF = CreateTrigger()
    call TriggerRegisterDialogEventBJ(fF, vC)
    call TriggerAddAction(fF, function r5v)
endfunction
function r7v takes nothing returns nothing
    call TriggerSleepAction(15.00)
    call DisableTrigger(CF)
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cffffcc00Set Gold Mode Has Been Disabled")
endfunction
function r8v takes nothing returns nothing
    set FF = CreateTrigger()
    call TriggerAddAction(FF, function r7v)
endfunction