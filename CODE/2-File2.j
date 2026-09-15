native UnitAlive takes unit id returns boolean
    
function xG takes nothing returns integer
    local integer oG = ug
    if(oG != 0)then
        set ug = wg[oG]
    else
        set Ug = Ug + 1
        set oG = Ug
    endif
    if(oG > 8190)then
        return 0
    endif
    set wg[oG] =- 1
    return oG
endfunction
function rG takes integer oG returns nothing
    if oG == null then
        return
    elseif(wg[oG] !=- 1)then
        return
    endif
    set wg[oG] = ug
    set ug = oG
endfunction
function iG takes nothing returns integer
    local integer oG = Mg
    if(oG != 0)then
        set Mg = Pg[oG]
    else
        set pg = pg + 1
        set oG = pg
    endif
    if(oG > 8190)then
        return 0
    endif
    set Pg[oG] =- 1
    return oG
endfunction
function aG takes integer oG returns nothing
    if oG == null then
        return
    elseif(Pg[oG] !=- 1)then
        return
    endif
    set Pg[oG] = Mg
    set Mg = oG
endfunction
function nG takes integer i, unit a1 returns nothing
    set eG = a1
    call TriggerEvaluate(vG[i])
endfunction
function VG takes unit a0 returns nothing
    call nG(1, a0)
    call RemoveUnit(a0)
endfunction
function EG takes nothing returns nothing
    local real r = 0
    local unit u = null
    loop
        exitwhen V == 0
        set u = o[V]
        set r = GetWidgetLife(u)
        call UnitRemoveAbility(u, 'dprv')
        if r > 0.405 then
            call SetWidgetLife(u, r)
        endif
        set V = V - 1
    endloop
    set u = null
endfunction
function XG takes nothing returns nothing
    call TimerStart(E, 0.1, false, function EG)
endfunction
function OG takes nothing returns nothing
    loop
        set A = A - 1
        call SetWidgetLife(d[A], 1)
        call RemoveItem(d[A])
        set d[A] = null
        exitwhen(A == 0)
    endloop
    call TimerStart(C, O - I, true, N)
endfunction
function RG takes nothing returns boolean
    if(GetWidgetLife(GetFilterItem()) < 0.405)then
        set d[A] = GetFilterItem()
        set A = A + 1
    endif
    return false
endfunction
function IG takes nothing returns nothing
    call EnumItemsInRect(mg, B, null)
    if(A > 0)then
        call TimerStart(C, I, false, function OG)
    endif
endfunction
function AG takes nothing returns nothing
    set mg = GetWorldBounds()
    set N = function IG
    set B = Filter(function RG)
    call TimerStart(C, O, true, N)
endfunction
function cG takes nothing returns boolean
    local integer BG = G
    set G = G + 1
    if G == D then
        set G = 0
    endif
    if qg[BG] != null then
        if(GetUnitUserData(qg[BG]) == 0)then
            set qg[BG] = null
            call aG(BG)
        endif
    endif
    return false
endfunction
function CG takes nothing returns nothing
    local trigger dG = CreateTrigger()
    call TriggerRegisterTimerEvent(dG, F, true)
    call TriggerAddCondition(dG, Condition(function cG))
endfunction
function lG takes nothing returns nothing
    local integer i
    local unit u = CreateUnit(Player(13), 'e00N', 0, 0, 0)
    set h = 'A1OD'
    set H = 'A1OE'
    set i = 0
    call UnitAddAbility(u, h)
    call UnitMakeAbilityPermanent(u, true, h)
    call UnitAddAbility(u, H)
    call UnitMakeAbilityPermanent(u, true, H)
    call VG(u)
    set u = null
endfunction
function LG takes nothing returns integer
    set Qg = Qg + 1
    return(Qg)
endfunction
function mG takes integer oG returns nothing
    set sg[oG] = null
    set Sg[oG] = null
    set tg[oG] = tg[(Qg)]
    set Tg[oG] = Tg[(Qg)]
    set sg[oG] = sg[(Qg)]
    set Sg[oG] = Sg[(Qg)]
    set Qg = Qg - 1
endfunction
function MG takes integer oG returns nothing
    set tg[oG] = RMaxBJ(tg[oG] - K, 0)
    if tg[oG] > 0 and(Sg[oG] != null and UnitAlive(sg[oG]))then
        call SetTextTagPos(Sg[oG], GetUnitX(sg[oG]) - Tg[oG], GetUnitY(sg[oG]), J)
    else
        call mG(oG)
    endif
endfunction
function pG takes player pl returns string
    if j[GetPlayerId(pl)] != null then
        return j[GetPlayerId(pl)] + GetPlayerName(pl) + "|r"
    endif
    return GetPlayerName(pl)
endfunction
function PG takes unit u, string qG, real QG, real sG, string SG returns texttag
    call LG()
    set Sg[(Qg)] = CreateTextTag()
    set sg[(Qg)] = u
    if SG == "red" then
        call SetTextTagText(Sg[(Qg)], "|c00ff0000" + qG + "|r", 0.023)
    elseif SG == "yellow" then
        call SetTextTagText(Sg[(Qg)], "|cffffcc00" + qG + "|r", 0.023)
    elseif SG == "green" then
        call SetTextTagText(Sg[(Qg)], "|c0000cc00" + qG + "|r", 0.023)
    elseif SG == "blue" then
        call SetTextTagText(Sg[(Qg)], "|c000033ff" + qG + "|r", 0.023)
    else
        call SetTextTagText(Sg[(Qg)], qG, 0.023)
    endif
    call SetTextTagPos(Sg[(Qg)], GetUnitX(u) - (I2R(StringLength(qG)) * 2), GetUnitY(u), 150)
    call SetTextTagPermanent(Sg[(Qg)], false)
    call SetTextTagLifespan(Sg[(Qg)], QG)
    call SetTextTagFadepoint(Sg[(Qg)], QG - 1.5)
    call SetTextTagVelocity(Sg[(Qg)], 0, sG * 0.01775)
    call SetTextTagVisibility(Sg[(Qg)], GetLocalPlayer() == GetOwningPlayer(u))
    call EnableTrigger(k)
    set tg[(Qg)] = QG
    set Tg[(Qg)] = I2R(StringLength(qG)) * 2
    return Sg[(Qg)]
endfunction
function tG takes nothing returns boolean
    local integer i = 0
    local integer TG = Qg
    loop
        exitwhen i == TG
        set i = i + 1
        call MG((i))
    endloop
    if Qg == 0 then
        call DisableTrigger(k)
    endif
    return false
endfunction
function uG takes nothing returns nothing
    set j[0] = "|cffff0303"
    set j[1] = "|cff0042ff"
    set j[2] = "|cff1ce6b9"
    set j[3] = "|cff540081"
    set j[4] = "|cfffffc01"
    set j[5] = "|cfffe8a0e"
    set j[6] = "|cff20c000"
    set j[7] = "|cffe55bb0"
    set j[8] = "|cff959697"
    set j[9] = "|cff7ebff1"
    set j[10] = "|cff106246"
    set j[11] = "|cff4e2a04"
    call TriggerRegisterTimerEvent(k, K, true)
    call TriggerAddCondition(k, Condition(function tG))
endfunction
//Texttag damage
function UG takes unit wG, unit fG, string s, real WG, real yG, boolean YG returns nothing
    local real x = GetUnitX(fG)
    local real y = GetUnitY(fG)
    local texttag zG = CreateTextTag()
    local real a = (WG * 0.071 / 128) * Cos(90 * bj_DEGTORAD)
    local real b = (WG * 0.071 / 128) * Sin(90 * bj_DEGTORAD)
    call SetTextTagText(zG, s, 10 * 0.023 / 10)
    call SetTextTagColor(zG, 255, 255, 255, 255)
    call SetTextTagPosUnit(zG, fG, yG)
    call SetTextTagVisibility(zG, false)
    if not YG then
        if GetLocalPlayer() == GetOwningPlayer(wG)and zb[GetPlayerId(GetOwningPlayer(wG)) + 1]and IsUnitVisible(fG, GetOwningPlayer(wG))then
            call SetTextTagVisibility(zG, true)
        endif
        if IsPlayerInForce(GetLocalPlayer(), eB)and zb[GetPlayerId(GetLocalPlayer()) + 1]and IsUnitVisible(fG, GetLocalPlayer())and GetOwningPlayer(wG) == GetOwningPlayer(IB[GetPlayerId(GetLocalPlayer()) + 1])and IB[GetPlayerId(GetLocalPlayer()) + 1] != null then
            call SetTextTagVisibility(zG, true)
        endif
    else
        call SetTextTagVisibility(zG, true)
    endif
    call SetTextTagVelocity(zG, a, b)
    call SetTextTagPermanent(zG, false)
    call SetTextTagLifespan(zG, 2)
    call SetTextTagFadepoint(zG, 1)
    set zG = null
endfunction
function ZG takes unit u, string s, real vh, real eh, real xh, real oh, real rh, real ih, boolean YG returns nothing
    local texttag zG = CreateTextTag()
    local real ah = 64 * 0.071 / 128
    local real nh = ah * Cos(90 * bj_DEGTORAD)
    local real Vh = ah * Sin(90 * bj_DEGTORAD)
    local force f = CreateForce()
    local player p = GetOwningPlayer(u)
    local integer i = 0
    call ForceEnumAllies(f, p, null)
    call SetTextTagText(zG, s, vh * 0.023 / 10)
    call SetTextTagColor(zG, R2I(xh * I2R(255) * 0.01), R2I(oh * I2R(255) * 0.01), R2I(rh * I2R(255) * 0.01), R2I(ih * I2R(255) * 0.01))
    call SetTextTagPermanent(zG, false)
    call SetTextTagVelocity(zG, nh, Vh)
    call SetTextTagLifespan(zG, 3)
    call SetTextTagFadepoint(zG, 1)
    call SetTextTagPos(zG, GetUnitX(u), GetUnitY(u), eh)
    if IsPlayerInForce(GetLocalPlayer(), bj_FORCE_ALL_PLAYERS)then
        call SetTextTagVisibility(zG, false)
    endif
    if YG == false then
        if IsPlayerInForce(GetLocalPlayer(), f)then
            call SetTextTagVisibility(zG, true)
        endif
    else
        loop
            if IsUnitVisible(u, Player(i))then
                if GetLocalPlayer() == Player(i)then
                    call SetTextTagVisibility(zG, true)
                endif
            endif
            set i = i + 1
            exitwhen i == bj_MAX_PLAYER_SLOTS
        endloop
    endif
    call DestroyForce(f)
    set zG = null
    set p = null
    set f = null
endfunction
function Eh takes playerunitevent e, code b, code c returns nothing
    local trigger t = CreateTrigger()
    local integer BG = 0
    loop
        if GetPlayerSlotState(Player(BG)) == PLAYER_SLOT_STATE_PLAYING then
            call TriggerRegisterPlayerUnitEvent(t, Player(BG), e, null)
        endif
        set BG = BG + 1
        exitwhen BG == 15
    endloop
    if b != null then
        call TriggerAddCondition(t, Filter(b))
    endif
    if c != null then
        call TriggerAddAction(t, c)
    endif
    set t = null
endfunction
function Xh takes player pl, unit uc, integer ab, integer lv, string st, real lf, location lc, boolean Oh returns nothing
    local player p = pl
    local unit wG = uc
    local integer Rh = ab
    local integer JG = lv
    local string qG = st
    local real Ih = lf
    local location l = GetUnitLoc(wG)
    local unit Ah
    if Oh then
        set Ah = CreateUnitAtLoc(p, 'e00O', l, 0)
    else
        set Ah = CreateUnitAtLoc(p, 'e00N', l, 0)
    endif
    call SetUnitFlyHeight(Ah, GetUnitFlyHeight(wG), 0)
    call UnitApplyTimedLife(Ah, 'BTLF', Ih)
    call UnitAddAbility(Ah, Rh)
    call SetUnitAbilityLevel(Ah, Rh, JG)
    call IssuePointOrderLoc(Ah, qG, lc)
    call RemoveLocation(l)
    set p = null
    set wG = null
    set Ah = null
    set qG = null
    set l = null
endfunction
function Nh takes player pl, unit uc, integer ab, integer lv, string st, real lf, boolean Oh returns nothing
    local player p = pl
    local unit wG = uc
    local integer Rh = ab
    local integer JG = lv
    local string qG = st
    local real Ih = lf
    local location l = GetUnitLoc(wG)
    local unit Ah
    if Oh then
        set Ah = CreateUnitAtLoc(p, 'e00O', l, 0)
    else
        set Ah = CreateUnitAtLoc(p, 'e00N', l, 0)
    endif
    call SetUnitFlyHeight(Ah, GetUnitFlyHeight(wG), 0)
    call UnitApplyTimedLife(Ah, 'BTLF', Ih)
    call UnitAddAbility(Ah, Rh)
    call SetUnitAbilityLevel(Ah, Rh, JG)
    call IssueImmediateOrder(Ah, qG)
    call RemoveLocation(l)
    set p = null
    set wG = null
    set Ah = null
    set qG = null
    set l = null
endfunction
function bh takes player pl, unit uc, unit ut, integer ab, integer lv, string st, real lf, boolean Oh returns nothing
    local player p = pl
    local unit wG = uc
    local unit fG = ut
    local integer Rh = ab
    local integer JG = lv
    local string qG = st
    local real Ih = lf
    local location l = GetUnitLoc(wG)
    local unit Ah
    if Oh then
        set Ah = CreateUnitAtLoc(p, 'e00O', l, 0)
    else
        set Ah = CreateUnitAtLoc(p, 'e00N', l, 0)
    endif
    call SetUnitFlyHeight(Ah, GetUnitFlyHeight(wG), 0)
    call UnitApplyTimedLife(Ah, 'BTLF', Ih)
    call UnitAddAbility(Ah, Rh)
    call SetUnitAbilityLevel(Ah, Rh, JG)
    call IssueTargetOrder(Ah, qG, fG)
    call RemoveLocation(l)
    set p = null
    set wG = null
    set Ah = null
    set qG = null
    set l = null
    set fG = null
endfunction
function Bh takes nothing returns boolean
    local unit u = GetFilterUnit()
    local boolean b = true
    set b = b and GetWidgetLife(u) > .405
    if Rg == 0 then
    elseif Rg == 1 then
        set b = b and IsUnitAlly(u, gg)
    elseif Rg == 2 then
        set b = b and IsUnitEnemy(u, gg)
    elseif Rg == 3 then
        set b = b and GetOwningPlayer(u) == gg
    endif
    if Ig == 0 then
    elseif Ig == 1 then
        set b = b and u != fg
    elseif Ig == 2 then
        set b = b and u != Fg
    endif
    if Ag == 0 then
    elseif Ag == 1 then
        set b = b and IsUnitType(u, UNIT_TYPE_STRUCTURE)
    elseif Ag == 2 then
        set b = b and not IsUnitType(u, UNIT_TYPE_STRUCTURE)
    endif
    if Ng == 0 then
    elseif Ng == 1 then
        set b = b and GetWidgetLife(u) < .405
    elseif Ng == 2 then
        set b = b and GetWidgetLife(u) > .405
    endif
    if bg == 0 then
    elseif bg == 1 then
        set b = b and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE)
    elseif bg == 2 then
        set b = b and not IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE)
    endif
    if Bg == 0 then
    elseif Bg == 1 then
        set b = b and not IsUnitVisible(u, gg)
    elseif Bg == 2 then
        set b = b and IsUnitVisible(u, gg)
        set b = b and not IsUnitFogged(u, gg)
        set b = b and not IsUnitMasked(u, gg)
    endif
    if cg == 0 then
    elseif cg == 1 then
        set b = b and IsUnitIllusion(u)
    elseif cg == 2 then
        set b = b and not IsUnitIllusion(u)
    endif
    if Cg == 0 then
    elseif Cg == 1 then
        set b = b and IsUnitType(u, UNIT_TYPE_SUMMONED)
    elseif Cg == 2 then
        set b = b and not IsUnitType(u, UNIT_TYPE_SUMMONED)
    endif
    if dg == 0 then
    elseif dg == 1 then
        set b = b and IsUnitType(u, UNIT_TYPE_ETHEREAL)
    elseif dg == 2 then
        set b = b and not IsUnitType(u, UNIT_TYPE_ETHEREAL)
    endif
    if Dg == 0 then
    elseif Dg == 1 then
        set b = b and IsUnitType(u, UNIT_TYPE_HERO)
    elseif Dg == 2 then
        set b = b and not IsUnitType(u, UNIT_TYPE_HERO)
    endif
    set u = null
    return b
endfunction
function ch takes unit wG, integer fG, integer Ch, integer dh, integer Dh, integer fh, integer Fh, integer gh, integer Gh, integer hh, integer Hh returns nothing
    set gg = GetOwningPlayer(wG)
    set fg = wG
    set Rg = fG
    set Ig = Ch
    set Ag = dh
    set Ng = Dh
    set bg = fh
    set Bg = Fh
    set cg = gh
    set Cg = Gh
    set dg = hh
    set Dg = Hh
endfunction
function jh takes unit u returns boolean
    if GetUnitAbilityLevel(u, 'A0AF') > 0 then
        return true
    else
        return false
    endif
endfunction
function Jh takes player p returns location
    if IsPlayerAlly(p, Player(5))then
        return GetRectCenter(cC)
    else
        return GetRectCenter(CC)
    endif
endfunction
function kh takes nothing returns nothing
    if IsItemVisible(GetEnumItem())then
        set q[Q] = GetEnumItem()
        call SetItemVisible(q[Q], false)
        set Q = Q + 1
    endif
endfunction
function Kh takes real x, real y returns boolean
    call MoveRectTo(P, x, y)
    call EnumItemsInRect(P, null, function kh)
    call SetItemPosition(M, x, y)
    set S = GetItemX(M)
    set T = GetItemY(M)
    call SetItemVisible(M, false)
    loop
        exitwhen Q <= 0
        set Q = Q - 1
        call SetItemVisible(q[Q], true)
        set q[Q] = null
    endloop
    return(S - x) * (S - x) + (T - y) * (T - y) <= L * L and not IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY)
endfunction
function lh takes nothing returns nothing
    set P = Rect(0., 0., 128., 128.)
    set M = CreateItem(m, 0, 0)
    call SetItemVisible(M, false)
endfunction
function Lh takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local integer lv = GetUnitAbilityLevel(uc, GetSpellAbilityId())
    local location mh = GetUnitLoc(uc)
    local location Mh = GetSpellTargetLoc()
    local group g = CreateGroup()
    local real ph = 200 + (25 * lv)
    local unit up
    set up = CreateUnitAtLoc(GetOwningPlayer(uc), 'e00P', Mh, 0)
    call UnitApplyTimedLife(up, 'BTLF', 1.5)
    call bh(GetOwningPlayer(uc), uc, up, U, 1, "firebolt", 1.5, false)
    call TriggerSleepAction(DistanceBetweenPoints(mh, Mh) / 1600)
    call Xh(GetOwningPlayer(uc), uc, w, lv, "silence", 1.5, Mh, false)
    set up = CreateUnitAtLoc(GetOwningPlayer(uc), 'e00Q', Mh, 0)
    call SetUnitVertexColor(up, 255, 255, 255, 100)
    call SetUnitScale(up, ph / 200, ph / 200, ph / 200)
    call UnitApplyTimedLife(up, 'BTLF', 2)
    call ch(uc, 2, 0, 2, 2, 0, 0, 0, 0, 0, 0)
    call GroupEnumUnitsInRange(g, GetLocationX(Mh), GetLocationY(Mh), ph, Condition(function Bh))
    loop
        set up = FirstOfGroup(g)
        exitwhen up == null
        if not jh(up)then
            call UnitDamageTarget(uc, up, 0.01 + (100 + (50 * lv)) * (1 + (GetHeroLevel(uc) * 0.02)), true, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, null)
        endif
        call GroupRemoveUnit(g, up)
    endloop
    set gg = null
    call DestroyGroup(g)
    call RemoveLocation(mh)
    call RemoveLocation(Mh)
    set uc = null
    set mh = null
    set Mh = null
    set g = null
    set up = null
endfunction
function Ph takes nothing returns boolean
    if GetSpellAbilityId() == 'ANsi' then
        return true
    endif
    return false
endfunction
function qh takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function Ph, function Lh)
endfunction
function Qh takes nothing returns boolean
    return GetEventDamage() > 0
endfunction
function sh takes nothing returns nothing
    local unit uc = GetEventDamageSource()
    local unit ut = GetTriggerUnit()
    local real Sh = GetEventDamage()
    local real th
    local unit ud
    local group g = CreateGroup()
    local unit up
    call DisableTrigger(GetTriggeringTrigger())
    if GetUnitAbilityLevel(ut, 'A06C') > 0 then
        call UnitRemoveAbility(ut, 'A06C')
        call IssueImmediateOrderBJ(ut, "stop")
    endif
    if GetUnitTypeId(uc) == 'e00N' and GetUnitAbilityLevel(uc, 'A09O') > 0 then
        call bh(GetOwningPlayer(uc), uc, ut, 'A09P', GetUnitAbilityLevel(uc, 'A09O'), "firebolt", 2, false)
    endif
    if GetUnitTypeId(uc) == 'e00O' and GetUnitAbilityLevel(uc, 'A0A1') > 0 then
        if IsUnitAlly(uc, GetOwningPlayer(ut))then
            call SetUnitState(ut, UNIT_STATE_LIFE, GetUnitState(ut, UNIT_STATE_LIFE) + (200 * GetUnitAbilityLevel(uc, 'A0A1')))
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", ut, "origin"))
        else
            call UnitDamageTarget(Zb[GetPlayerId(GetOwningPlayer(uc)) + 1], ut, 100 * GetUnitAbilityLevel(uc, 'A0A1'), true, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, null)
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", ut, "origin"))
        endif
    endif
    if GetUnitTypeId(uc) == 'e00O' and GetUnitAbilityLevel(uc, 'A09R') > 0 then
        if IsUnitAlly(uc, GetOwningPlayer(ut))then
            call SetUnitState(ut, UNIT_STATE_LIFE, GetUnitState(ut, UNIT_STATE_LIFE) + (200 * GetUnitAbilityLevel(uc, 'A09R')))
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DeathCoil\\DeathCoilSpecialArt.mdl", ut, "origin"))
        else
            call UnitDamageTarget(Zb[GetPlayerId(GetOwningPlayer(uc)) + 1], ut, 100 * GetUnitAbilityLevel(uc, 'A09R'), true, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, null)
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DeathCoil\\DeathCoilSpecialArt.mdl", ut, "origin"))
        endif
    endif
    if GetUnitTypeId(uc) == 'e00O' and GetUnitAbilityLevel(uc, 'A0A0') > 0 then
        if IsUnitAlly(uc, GetOwningPlayer(ut))then
            call SetUnitState(ut, UNIT_STATE_LIFE, GetUnitState(ut, UNIT_STATE_LIFE) + (200 * GetUnitAbilityLevel(uc, 'A0A0')))
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\CryptFiendMissile\\CryptFiendMissile.mdl", ut, "origin"))
        else
            call UnitDamageTarget(Zb[GetPlayerId(GetOwningPlayer(uc)) + 1], ut, 100 * GetUnitAbilityLevel(uc, 'A0A0'), true, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, null)
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\CryptFiendMissile\\CryptFiendMissile.mdl", ut, "origin"))
        endif
    endif
    if ut == hb then
        set Ec[6] = R2I(GetUnitLifePercent(hb))
        call MultiboardSetItemValueBJ(dB, 1, fB[6], (I2S(Ec[6]) + "%" + Pc))
        if Ec[6] >= 50 then
            call MultiboardSetItemColorBJ(dB, 1, fB[6], ((100 - GetUnitLifePercent(hb)) * 2), 100, 0, 0)
        else
            call MultiboardSetItemColorBJ(dB, 1, fB[6], 100, (GetUnitLifePercent(hb) * 2), 0, 0)
        endif
    endif
    if ut == lb then
        set Ec[12] = R2I(GetUnitLifePercent(lb))
        call MultiboardSetItemValueBJ(dB, 1, fB[12], (I2S(Ec[12]) + "%" + qc))
        if Ec[12] >= 50 then
            call MultiboardSetItemColorBJ(dB, 1, fB[12], ((100 - GetUnitLifePercent(lb)) * 2), 100, 0, 0)
        else
            call MultiboardSetItemColorBJ(dB, 1, fB[12], 100, (GetUnitLifePercent(lb) * 2), 0, 0)
        endif
    endif
    if GetUnitTypeId(uc) == 'u00O' then
        set th = (2 + (2 * GetUnitAbilityLevel(uc, 'A0A8'))) + (GetHeroLevel(Zb[GetPlayerId(GetOwningPlayer(uc)) + 1]) * (0.2 + (0.2 * GetUnitAbilityLevel(uc, 'A0A8'))))
        if th < GetUnitState(ut, UNIT_STATE_LIFE)then
            call UnitDamageTarget(Zb[GetPlayerId(GetOwningPlayer(uc)) + 1], ut, th, true, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_UNIVERSAL, null)
        else
            call UnitDamageTarget(Zb[GetPlayerId(GetOwningPlayer(uc)) + 1], ut, GetUnitState(ut, UNIT_STATE_LIFE) - 1, true, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_UNIVERSAL, null)
        endif
    endif
    if GetUnitTypeId(uc) == 'e00O' and GetUnitAbilityLevel(uc, 'A0AC') > 0 then
        call UnitDamageTarget(Zb[GetPlayerId(GetOwningPlayer(uc)) + 1], ut, 75 + (GetUnitState(ut, UNIT_STATE_MAX_LIFE) * 0.025), true, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNIVERSAL, null)
    endif
    if GetUnitTypeId(uc) == 'e00N' and GetUnitAbilityLevel(uc, 'A0BY') > 0 then
        call ch(uc, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0)
        call GroupEnumUnitsInRange(g, GetUnitX(ut), GetUnitY(ut), 350, Condition(function Bh))
        call GroupRemoveUnit(g, ut)
        loop
            set up = FirstOfGroup(g)
            exitwhen up == null
            call bh(GetOwningPlayer(uc), ut, up, 'A0BZ', GetUnitAbilityLevel(uc, 'A0BY'), "thunderbolt", 5, false)
            call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", up, "Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl"))
            call GroupRemoveUnit(g, up)
        endloop
        call DestroyGroup(g)
        set gg = null
        set g = null
        set up = null
    endif
    set ut = null
    set uc = null
    set ud = null
    set g = null
    set up = null
    call EnableTrigger(GetTriggeringTrigger())
endfunction
//Show text damage
function Th takes nothing returns nothing
    local unit uc = GetEventDamageSource()
    local unit ut = GetTriggerUnit()
    local real Sh = GetEventDamage()
    local player p = GetOwningPlayer(uc)
    call DisableTrigger(GetTriggeringTrigger())
    if p != Player(5)and p != Player(11)and p != Player(PLAYER_NEUTRAL_AGGRESSIVE)and GetUnitTypeId(uc) != 'e00O' and GetUnitTypeId(uc) != 'u00O' then
        if IsUnitAlly(ut, GetOwningPlayer(uc))then
            call UG(uc, ut, "|cffff0000" + I2S(R2I(Sh)) + "|r", 64, 0, false)
        else
            call UG(uc, ut, "|cffff0000" + I2S(R2I(Sh)) + "|r", 64, 0, false)
        endif
    endif
    set ut = null
    set uc = null
    set p = null
    call EnableTrigger(GetTriggeringTrigger())
endfunction
function uh takes nothing returns boolean
    if not IsUnitInGroup(GetEnteringUnit(), ev)and GetUnitAbilityLevel(GetEnteringUnit(), 'Aloc') == 0 and GetUnitAbilityLevel(GetEnteringUnit(), 'Avul') == 0 then
        call GroupAddUnit(ev, GetEnteringUnit())
        call TriggerRegisterUnitEvent(z, GetEnteringUnit(), EVENT_UNIT_DAMAGED)
        call TriggerRegisterUnitEvent(Z, GetEnteringUnit(), EVENT_UNIT_DAMAGED)
        return true
    endif
    return false
endfunction
function Uh takes nothing returns nothing
    local group g = CreateGroup()
    local unit u
    local boolean b = true
    local integer i = 0
    if vv == null then
        set vv = CreateRegion()
        set W = CreateTrigger()
        call RegionAddRect(vv, bj_mapInitialPlayableArea)
        call TriggerRegisterEnterRegion(W, vv, null)
        call TriggerAddCondition(W, Condition(function uh))
    endif
    set ev = CreateGroup()
    set z = CreateTrigger()
    set Z = CreateTrigger()
    call TriggerAddCondition(z, Condition(function Qh))
    call TriggerAddAction(z, function sh)
    call TriggerAddCondition(Z, Condition(function Qh))
    call TriggerAddAction(Z, function Th)
    call GroupEnumUnitsInRect(g, bj_mapInitialPlayableArea, null)
    loop
        set u = FirstOfGroup(g)
        exitwhen u == null
        set b = true
        if not IsUnitType(u, UNIT_TYPE_HERO)and not IsUnitType(u, UNIT_TYPE_STRUCTURE)then
            if GetWidgetLife(u) < .405 then
                set b = false
            endif
        endif
        if GetUnitAbilityLevel(u, 'Avul') > 0 and not IsUnitType(u, UNIT_TYPE_STRUCTURE)then
            set b = false
        endif
        if GetUnitAbilityLevel(u, 'Aloc') > 0 then
            set b = false
        endif
        if IsUnitInGroup(u, ev)then
            set b = false
        endif
        if b then
            call GroupAddUnit(ev, u)
            call TriggerRegisterUnitEvent(z, u, EVENT_UNIT_DAMAGED)
            call TriggerRegisterUnitEvent(Z, u, EVENT_UNIT_DAMAGED)
        endif
        call GroupRemoveUnit(g, u)
    endloop
    call DestroyGroup(g)
    loop
        set u = Zb[i]
        if not IsUnitInGroup(u, ev)and u != null then
            call GroupAddUnit(ev, u)
            call TriggerRegisterUnitEvent(z, u, EVENT_UNIT_DAMAGED)
            call TriggerRegisterUnitEvent(Z, u, EVENT_UNIT_DAMAGED)
        endif
        set i = i + 1
        exitwhen i > 15
    endloop
    set g = null
    set u = null
endfunction
function wh takes nothing returns nothing
    call Uh()
endfunction
function Wh takes nothing returns nothing
    call DestroyGroup(ev)
    call DestroyTrigger(z)
    call DestroyTrigger(Z)
    call Uh()
endfunction
function yh takes nothing returns nothing
    local unit uc = GetAttacker()
    local unit ut = GetTriggerUnit()
    local integer lv = GetUnitAbilityLevel(uc, xv)
    local real Sh = (0.5 * I2R(lv)) * I2R(GetHeroAgi(uc, false))
    call AddSpecialEffectTargetUnitBJ("chest", ut, "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl")
    call UnitDamageTargetBJ(uc, ut, Sh, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
    call ZG(uc, I2S(R2I(Sh)) + "!", 10, 0, 100, 0, 0, 100, true)
    set uc = null
    set ut = null
endfunction
function Yh takes nothing returns boolean
    local location mh = GetUnitLoc(GetAttacker())
    local location Mh = GetUnitLoc(GetTriggerUnit())
    if AngleBetweenPoints(mh, Mh) >= (GetUnitFacing(GetTriggerUnit()) - 160)or AngleBetweenPoints(mh, Mh) <= (GetUnitFacing(GetTriggerUnit()) - 220)then
        call RemoveLocation(mh)
        call RemoveLocation(Mh)
        set mh = null
        set Mh = null
        return true
    else
        call RemoveLocation(mh)
        call RemoveLocation(Mh)
        set mh = null
        set Mh = null
        return false
    endif
endfunction
function zh takes nothing returns boolean
    if GetRandomInt(1, 100) <= 25 and GetUnitAbilityLevel(GetAttacker(), xv) > 0 and not IsUnitIllusion(GetAttacker())and not IsUnitType(GetTriggerUnit(), UNIT_TYPE_STRUCTURE)and not IsUnitType(GetTriggerUnit(), UNIT_TYPE_MAGIC_IMMUNE)and Yh()then
        return true
    endif
    return false
endfunction
function Zh takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_ATTACKED, function zh, function yh)
endfunction
function vH takes nothing returns nothing
    set u3 = GetTriggerUnit()
    set u4 = GetSpellTargetUnit()
    set l1 = GetUnitLoc(u3)
    set l2 = GetUnitLoc(u4)
    set rv = R2I((DistanceBetweenPoints(l1, l2) - 100) / 50)
    call SetUnitPathing(u3, false)
    call EnableTrigger(cf)
    call RemoveLocation(l1)
    call RemoveLocation(l2)
    set l1 = null
    set l2 = null
endfunction
function eH takes nothing returns boolean
    if GetSpellAbilityId() == ov then
        return true
    endif
    return false
endfunction
function xH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function eH, function vH)
endfunction
function oH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local unit ut = GetSpellTargetUnit()
    local integer lv = GetUnitAbilityLevel(uc, GetSpellAbilityId())
    local location mh = GetUnitLoc(uc)
    local location Mh = GetUnitLoc(ut)
    local location rH = PolarProjectionBJ(mh, DistanceBetweenPoints(mh, Mh) * 0.6, AngleBetweenPoints(mh, Mh))
    call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", ut, "Abilities\\Spells\\Other\\Levelup\\LevelupCaster.mdl"))
    call TriggerSleepAction(0.03)
    call DestroyEffect(AddSpecialEffectTargetUnitBJ("head", ut, "Abilities\\Weapons\\Banditmissile\\Banditmissile.mdl"))
    if Kh(GetLocationX(rH), GetLocationY(rH))then
        call SetUnitPositionLoc(ut, rH)
    endif
    if GetRandomInt(1, 100) <= 20 then
        call UnitDamageTargetBJ(uc, ut, 150, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC)
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", ut, "Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl"))
    endif
    call RemoveLocation(mh)
    call RemoveLocation(Mh)
    call RemoveLocation(rH)
    set uc = null
    set ut = null
    set mh = null
    set Mh = null
    set rH = null
endfunction
function iH takes nothing returns boolean
    if GetSpellAbilityId() == iv then
        return true
    endif
    return false
endfunction
function aH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function iH, function oH)
endfunction
function nH takes nothing returns boolean
    return(GetFilterUnit() != GetTriggerUnit())
endfunction
function VH takes nothing returns nothing
    local integer i = GetUnitAbilityLevel(GetTriggerUnit(), 'A0A7')
    local unit u
    local unit v
    local real r = 4 + (i * 2)
    local timer t = CreateTimer()
    local location l = GetSpellTargetLoc()
    local group g
    set u = CreateUnit(GetOwningPlayer(GetTriggerUnit()), 'u00P', GetLocationX(l), GetLocationY(l), bj_UNIT_FACING)
    call SetUnitVertexColor(u, 255, 255, 255, 100)
    call TriggerSleepAction(.3)
    call UnitApplyTimedLife(u, 'BTLF', r)
    call SetUnitTimeScalePercent(u, .0)
    set g = GetUnitsInRangeOfLocMatching(425., l, Condition(function nH))
    call StartTimerBJ(t, false, r)
    loop
        exitwhen TimerGetRemaining(t) <= .0
        loop
            set v = FirstOfGroup(g)
            exitwhen v == null
            call GroupRemoveUnit(g, v)
            call GroupAddUnit(Xc, v)
            call PauseUnit(v, true)
            call SetUnitTimeScalePercent(v, .0)
        endloop
        if(TimerGetRemaining(t) < .8)then
            call TriggerSleepAction(.1)
        else
            call TriggerSleepAction(.3)
        endif
        call DestroyGroup(g)
        set g = GetUnitsInRangeOfLocMatching(425., l, Condition(function nH))
    endloop
    loop
        set v = FirstOfGroup(g)
        exitwhen v == null
        call GroupRemoveUnit(g, v)
        call PauseUnit(v, false)
        call SetUnitTimeScalePercent(v, 100.)
    endloop
    loop
        set v = FirstOfGroup(Xc)
        exitwhen v == null
        call GroupRemoveUnit(Xc, v)
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
function EH takes nothing returns boolean
    if GetSpellAbilityId() == 'A0A7' then
        return true
    endif
    return false
endfunction
function XH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function EH, function VH)
endfunction
function OH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local location l = GetUnitLoc(uc)
    local integer lv = GetUnitAbilityLevel(uc, GetSpellAbilityId())
    local real Sh = (300 + (100 * lv)) + (GetHeroAgi(uc, true) * (1 + (0.5 * lv)))
    local group g = CreateGroup()
    local unit up
    set nv = CreateSound("Units\\Creeps\\Harpy\\HarpyDeath.wav", false, false, true, 10, 10, "DefaultEAXON")
    call SetSoundParamsFromLabel(nv, "HarpyDeath")
    call SetSoundDuration(nv, 2533)
    call PlaySoundAtPointBJ(nv, 100, l, 0)
    call ch(uc, 2, 0, 2, 2, 0, 0, 0, 0, 0, 0)
    call GroupEnumUnitsInRange(g, GetUnitX(uc), GetUnitY(uc), 500, Condition(function Bh))
    call TriggerSleepAction(0.01)
    loop
        set up = FirstOfGroup(g)
        exitwhen up == null
        if UnitHasBuffBJ(up, 'B01Q')then
            call UnitDamageTargetBJ(uc, up, Sh, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_NORMAL)
        endif
        call GroupRemoveUnit(g, up)
    endloop
    call DestroyGroup(g)
    call RemoveLocation(l)
    set gg = null
    set uc = null
    set l = null
    set g = null
    set up = null
endfunction
function RH takes nothing returns nothing
    local integer i
    local location mh = GetUnitLoc(GetTriggerUnit())
    local location Mh
    call TerrainDeformationRippleBJ(1, false, mh, 100, 600, 70, 0.3, 512)
    call TriggerSleepAction(0.3)
    set i = 1
    loop
        exitwhen i > 360
        set Mh = PolarProjectionBJ(mh, GetRandomReal(50, 400), GetRandomReal(0, 360))
        call DestroyEffect(AddSpecialEffectLocBJ(Mh, "Doodads\\Cinematic\\GlowingRunes\\GlowingRunes0.mdl"))
        call RemoveLocation(Mh)
        set i = i + 1
    endloop
    call RemoveLocation(mh)
    call RemoveLocation(Mh)
    set mh = null
    set Mh = null
endfunction
function IH takes nothing returns boolean
    if GetSpellAbilityId() == av then
        return true
    endif
    return false
endfunction
function AH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function IH, function OH)
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function IH, function RH)
endfunction
function NH takes nothing returns nothing
    local unit uc = GetAttacker()
    local unit ut = GetTriggerUnit()
    local integer lv = GetUnitAbilityLevel(uc, Vv)
    local integer bH
    set bH = 4 + (lv * 2)
    if GetRandomInt(1, 100) <= bH then
        call Nh(GetOwningPlayer(ut), ut, Ev, lv, "howlofterror", 5, false)
        call Nh(GetOwningPlayer(ut), ut, Xv, lv, "roar", 5, false)
    endif
    set uc = null
    set ut = null
endfunction
function BH takes nothing returns boolean
    if GetUnitAbilityLevel(GetTriggerUnit(), Vv) > 0 and not IsUnitIllusion(GetTriggerUnit())and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))then
        return true
    endif
    return false
endfunction
function cH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_ATTACKED, function BH, function NH)
endfunction
function CH takes nothing returns nothing
    local unit uc = GetAttacker()
    local unit ut = GetTriggerUnit()
    local integer lv = GetUnitAbilityLevel(uc, Ov)
    local integer bH
    if IsUnitType(ut, UNIT_TYPE_SUMMONED)then
        set bH = 12 + (lv * 3) + 10
    else
        set bH = 12 + (lv * 3)
    endif
    if GetRandomInt(1, 100) <= bH then
        call bh(Player(PLAYER_NEUTRAL_PASSIVE), uc, ut, Rv, lv, "innerfire", 5, false)
    endif
    set uc = null
    set ut = null
endfunction
function dH takes nothing returns boolean
    if GetUnitAbilityLevel(GetAttacker(), Ov) > 0 and not IsUnitIllusion(GetAttacker())and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))and not IsUnitType(GetTriggerUnit(), UNIT_TYPE_STRUCTURE)and not IsUnitType(GetTriggerUnit(), UNIT_TYPE_MAGIC_IMMUNE)then
        return true
    endif
    return false
endfunction
function DH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_ATTACKED, function dH, function CH)
endfunction
function fH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local unit ut = GetSpellTargetUnit()
    local integer lv = GetUnitAbilityLevel(uc, Iv)
    local unit ud = CreateUnit(GetOwningPlayer(uc), 'e00O', GetUnitX(uc), GetUnitY(uc), 0)
    call SetUnitFlyHeight(ud, GetUnitFlyHeight(uc), 0)
    call UnitApplyTimedLife(ud, 'BTLF', 2)
    call UnitAddAbility(ud, Av)
    call SetUnitAbilityLevel(ud, Av, lv)
    call IssueTargetOrder(ud, "shadowstrike", ut)
    set Zb[GetPlayerId(GetOwningPlayer(uc)) + 1] = uc
    set uc = null
    set ut = null
    set ud = null
endfunction
function FH takes nothing returns boolean
    if GetSpellAbilityId() == Iv then
        return true
    endif
    return false
endfunction
function gH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local unit ut = GetSpellTargetUnit()
    if GetSpellAbilityId() == Iv then
        if GetUnitTypeId(ut) == 'h00F' or GetUnitTypeId(ut) == 'h00K' or GetUnitTypeId(ut) == 'nmmu' then
            call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(uc)), 1, "|cffffcc00Can't use on that unit.|r")
            call IssueImmediateOrderBJ(uc, "stop")
            call TriggerSleepAction(0.01)
            call SetUnitAnimation(uc, "stand")
        elseif IsUnitAlly(uc, GetOwningPlayer(ut))and GetUnitStatePercent(ut, UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE) == 100 then
            call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(uc)), 1, "|cffffcc00Already at full health.|r")
            call IssueImmediateOrderBJ(uc, "stop")
            call TriggerSleepAction(0.01)
            call SetUnitAnimation(uc, "stand")
        elseif IsUnitEnemy(uc, GetOwningPlayer(ut))and IsUnitType(ut, UNIT_TYPE_MAGIC_IMMUNE)then
            call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(uc)), 1, "|cffffcc00That unit is immune to magic.|r")
            call IssueImmediateOrderBJ(uc, "stop")
            call TriggerSleepAction(0.01)
            call SetUnitAnimation(uc, "stand")
        endif
    endif
    set uc = null
    set ut = null
endfunction
function GH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function FH, function fH)
    call Eh(EVENT_PLAYER_UNIT_SPELL_CAST, function FH, function gH)
endfunction
function hH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local unit ut = GetSpellTargetUnit()
    local integer lv = GetUnitAbilityLevel(uc, Nv)
    local unit ud = CreateUnit(GetOwningPlayer(uc), 'e00O', GetUnitX(uc), GetUnitY(uc), 0)
    call SetUnitFlyHeight(ud, GetUnitFlyHeight(uc), 0)
    call UnitApplyTimedLife(ud, 'BTLF', 2)
    call UnitAddAbility(ud, bv)
    call SetUnitAbilityLevel(ud, bv, lv)
    call IssueTargetOrder(ud, "shadowstrike", ut)
    set Zb[GetPlayerId(GetOwningPlayer(uc)) + 1] = uc
    set uc = null
    set ut = null
    set ud = null
endfunction
function HH takes nothing returns boolean
    if GetSpellAbilityId() == Nv then
        return true
    endif
    return false
endfunction
function jH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local unit ut = GetSpellTargetUnit()
    if GetSpellAbilityId() == Nv then
        if GetUnitTypeId(ut) == 'h00F' or GetUnitTypeId(ut) == 'h00K' or GetUnitTypeId(ut) == 'nmmu' then
            call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(uc)), 1, "|cffffcc00Can't use on that unit.|r")
            call IssueImmediateOrderBJ(uc, "stop")
            call TriggerSleepAction(0.01)
            call SetUnitAnimation(uc, "stand")
        elseif IsUnitAlly(uc, GetOwningPlayer(ut))and GetUnitStatePercent(ut, UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE) == 100 then
            call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(uc)), 1, "|cffffcc00Already at full health.|r")
            call IssueImmediateOrderBJ(uc, "stop")
            call TriggerSleepAction(0.01)
            call SetUnitAnimation(uc, "stand")
        elseif IsUnitEnemy(uc, GetOwningPlayer(ut))and IsUnitType(ut, UNIT_TYPE_MAGIC_IMMUNE)then
            call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(uc)), 1, "|cffffcc00That unit is immune to magic.|r")
            call IssueImmediateOrderBJ(uc, "stop")
            call TriggerSleepAction(0.01)
            call SetUnitAnimation(uc, "stand")
        endif
    endif
    set uc = null
    set ut = null
endfunction
function JH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function HH, function hH)
    call Eh(EVENT_PLAYER_UNIT_SPELL_CAST, function HH, function jH)
endfunction
function kH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local unit ut = GetSpellTargetUnit()
    local integer lv = GetUnitAbilityLevel(uc, GetSpellAbilityId())
    local group g = CreateGroup()
    local unit up
    call ch(uc, 2, 0, 2, 2, 0, 0, 0, 0, 0, 0)
    call GroupEnumUnitsInRange(g, GetUnitX(ut), GetUnitY(ut), 150, Condition(function Bh))
    call GroupRemoveUnit(g, ut)
    loop
        set up = FirstOfGroup(g)
        exitwhen up == null
        call bh(GetOwningPlayer(uc), uc, up, Bv, lv, "entanglingroots", 25, false)
        call GroupRemoveUnit(g, up)
    endloop
    call DestroyGroup(g)
    set gg = null
    set uc = null
    set ut = null
    set g = null
    set up = null
endfunction
function KH takes nothing returns boolean
    if GetSpellAbilityId() == 'A004' then
        return true
    endif
    return false
endfunction
function lH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function KH, function kH)
endfunction
function LH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local integer lv = GetUnitAbilityLevel(uc, GetSpellAbilityId())
    call Nh(GetOwningPlayer(uc), uc, cv, lv, "fanofknives", 2, false)
    set uc = null
endfunction
function mH takes nothing returns boolean
    if GetSpellAbilityId() == 'AEfk' or GetSpellAbilityId() == 'A08Q' then
        return true
    endif
    return false
endfunction
function MH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function mH, function LH)
endfunction
function pH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local integer lv = GetUnitAbilityLevel(uc, GetSpellAbilityId())
    local location l = GetSpellTargetLoc()
    local real x = GetLocationX(l)
    local real y = GetLocationY(l)
    local real ph = 200 + (25 * lv)
    local real s = ph * 0.01
    local unit PH
    set PH = CreateUnit(GetOwningPlayer(uc), 'h01N', x, y, GetUnitFacing(uc))
    call SetUnitScale(PH, 1.5 * s, 1.5 * s, 1.5 * s)
    call UnitApplyTimedLife(PH, 'BTLF', 0.5)
    call SetUnitVertexColorBJ(PH, 100, 100, 100, 20)
    call SetUnitFlyHeight(PH, 50, 1400)
    call TriggerSleepAction(0.4)
    call VG(PH)
    set PH = CreateUnit(GetOwningPlayer(uc), 'e00N', x, y, 0)
    call UnitApplyTimedLife(PH, 'BTLF', 2)
    call UnitAddAbility(PH, dv)
    call SetUnitAbilityLevel(PH, dv, lv)
    call IssueImmediateOrder(PH, "stomp")
    call DestroyEffect(AddSpecialEffect("LightningWrath.mdx", x, y))
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", x, y))
    call RemoveLocation(l)
    set l = null
    set uc = null
    set PH = null
endfunction
function qH takes nothing returns boolean
    if GetSpellAbilityId() == Cv then
        return true
    endif
    return false
endfunction
function QH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function qH, function pH)
endfunction
function sH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local unit ut = GetSpellTargetUnit()
    local integer lv = GetUnitAbilityLevel(uc, Dv)
    local unit ud = CreateUnit(GetOwningPlayer(uc), 'e00O', GetUnitX(uc), GetUnitY(uc), 0)
    call SetUnitFlyHeight(ud, GetUnitFlyHeight(uc), 0)
    call UnitApplyTimedLife(ud, 'BTLF', 2)
    call UnitAddAbility(ud, fv)
    call SetUnitAbilityLevel(ud, fv, lv)
    call IssueTargetOrder(ud, "shadowstrike", ut)
    set Zb[GetPlayerId(GetOwningPlayer(uc)) + 1] = uc
    set uc = null
    set ut = null
    set ud = null
endfunction
function SH takes nothing returns boolean
    if GetSpellAbilityId() == Dv then
        return true
    endif
    return false
endfunction
function tH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local unit ut = GetSpellTargetUnit()
    if GetSpellAbilityId() == Dv then
        if GetUnitTypeId(ut) == 'h00F' or GetUnitTypeId(ut) == 'h00K' or GetUnitTypeId(ut) == 'nmmu' then
            call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(uc)), 1, "|cffffcc00Can't use on that unit.|r")
            call IssueImmediateOrderBJ(uc, "stop")
            call TriggerSleepAction(0.01)
            call SetUnitAnimation(uc, "stand")
        elseif IsUnitAlly(uc, GetOwningPlayer(ut))and GetUnitStatePercent(ut, UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE) == 100 then
            call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(uc)), 1, "|cffffcc00Already at full health.|r")
            call IssueImmediateOrderBJ(uc, "stop")
            call TriggerSleepAction(0.01)
            call SetUnitAnimation(uc, "stand")
        elseif IsUnitEnemy(uc, GetOwningPlayer(ut))and IsUnitType(ut, UNIT_TYPE_MAGIC_IMMUNE)then
            call DisplayTimedTextToForce(GetForceOfPlayer(GetOwningPlayer(uc)), 1, "|cffffcc00That unit is immune to magic.|r")
            call IssueImmediateOrderBJ(uc, "stop")
            call TriggerSleepAction(0.01)
            call SetUnitAnimation(uc, "stand")
        endif
    endif
    set uc = null
    set ut = null
endfunction
function TH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function SH, function sH)
    call Eh(EVENT_PLAYER_UNIT_SPELL_CAST, function SH, function tH)
endfunction
function uH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local unit ut = GetSpellTargetUnit()
    local integer lv = GetUnitAbilityLevel(uc, GetSpellAbilityId())
    call bh(GetOwningPlayer(uc), uc, ut, gv, lv, "thunderbolt", 5, false)
    set uc = null
    set ut = null
endfunction
function UH takes nothing returns boolean
    if GetSpellAbilityId() == Fv then
        return true
    endif
    return false
endfunction
function wH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function UH, function uH)
endfunction
function WH takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local integer lv = GetUnitAbilityLevel(uc, GetSpellAbilityId())
    local real x = GetUnitX(uc)
    local real y = GetUnitY(uc)
    local real ph = 200 + (50 * lv)
    local real s = ph * 0.01
    local unit PH
    set PH = CreateUnit(GetOwningPlayer(uc), 'h01O', x, y, GetRandomReal(1, 360))
    call SetUnitScale(PH, 0.3 * s, 0.3 * s, 0.3 * s)
    call SetUnitTimeScale(PH, 2)
    call UnitApplyTimedLife(PH, 'BTLF', 0.1)
    set PH = null
    set uc = null
endfunction
function yH takes nothing returns boolean
    if GetSpellAbilityId() == Gv then
        return true
    endif
    return false
endfunction
function YH takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function yH, function WH)
endfunction
function zH takes unit ZH, unit fG returns boolean
    return IsUnitEnemy(ZH, GetOwningPlayer(fG))
endfunction
constant function vj takes integer i returns boolean
return i < uv + tv
endfunction
constant function ej takes integer i returns boolean
return i < Uv + Tv
endfunction
constant function xj takes integer i returns boolean
return hv[i] != null and i != 1
endfunction
function oj takes integer id, integer i returns boolean
    return(jv[id] > 0 and Hv[i] != null)
endfunction
constant function rj takes integer id returns integer
return kv[id] + Kv[id]
endfunction
function ij takes unit u returns string
    return pG(GetOwningPlayer(u))
    return""
endfunction
function aj takes nothing returns nothing
    local integer i = 0
    local boolean b = true
    local unit FoG
    loop
        if jv[i] > 0 then
            set jv[i] = RMaxBJ(0, jv[i] - Wv)
            if jv[i] == 0 then
                set Jv[i] = 0
            else
                set b = false
            endif
        endif
        exitwhen i == 11
        set i = i + 1
    endloop
    if b then
        call PauseTimer(Qv)
    endif
endfunction
function nj takes unit Vj, unit fG returns boolean
    local integer TG = GetPlayerId(GetOwningPlayer(fG))
    if kv[TG] < 2 then
        return true
    endif
    call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, ij(Vj) + " |c00999999ended|r " + ij(fG) + "|c00999999's killing spree!  ( " + I2S(rj(TG)) + " kills )|r")
    return false
endfunction
function Ej takes nothing returns boolean
    local unit Xj = GetKillingUnit()
    local unit Oj = GetTriggerUnit()
    local player fG = GetOwningPlayer(Oj)
    local player Vj = GetOwningPlayer(Xj)
    local boolean b = true
    local integer Rj = GetPlayerId(Vj)
    local integer Ij = GetPlayerId(fG)
    if not yv or Pv[Rj] != null and Xj != null and zH(Xj, Oj)and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO)and GetOwningPlayer(Oj) != Player(5)and GetOwningPlayer(Oj) != Player(11)and GetOwningPlayer(Oj) != Player(PLAYER_NEUTRAL_AGGRESSIVE)and GetOwningPlayer(Xj) != Player(5)and GetOwningPlayer(Xj) != Player(11)and GetOwningPlayer(Xj) != Player(PLAYER_NEUTRAL_AGGRESSIVE)then
        if vj(kv[Rj])then
            set kv[Rj] = kv[Rj] + 1
        else
            set kv[Rj] = uv
            set Kv[Rj] = Kv[Rj] + tv + 1
        endif
        set b = nj(Xj, Oj)
        set kv[Ij] = 0
        set Jv[Ij] = 0
        set jv[Ij] = 0
        set Kv[Ij] = 0
        if not sv then
            set sv = true
            call StartSound(hv[1])
            call PG(Zb[GetPlayerId(GetOwningPlayer(GetKillingUnit())) + 1], Lv[1], 4, 1, null)
            if wv and b then
                call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, ij(Xj) + Mv[1] + Lv[1] + "|c00999999 after killing|r " + ij(Oj))
                set b = false
            else
                call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, ij(Xj) + Mv[1] + Lv[1])
            endif
        elseif xj(kv[Rj])then
            call StartSound(hv[kv[Rj]])
            call PG(Zb[GetPlayerId(GetOwningPlayer(GetKillingUnit())) + 1], Lv[kv[Rj]], 4, 1, null)
            if wv and b then
                call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, ij(Xj) + Mv[kv[Rj]] + Lv[kv[Rj]] + "|c00999999 after killing|r " + ij(Oj))
                set b = false
            else
                call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, ij(Xj) + Mv[kv[Rj]] + Lv[kv[Rj]])
            endif
        endif
        if ej(Jv[Rj])then
            set Jv[Rj] = Jv[Rj] + 1
        else
            set Jv[Rj] = Uv
        endif
        if oj(Rj, Jv[Rj])then
            call StartSound(Hv[Jv[Rj]])
            call PG(Zb[GetPlayerId(GetOwningPlayer(GetKillingUnit())) + 1], mv[Jv[Rj]], 4, - 1, null)
            if wv and b then
                call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, ij(Xj) + pv[Jv[Rj]] + mv[Jv[Rj]] + "|c00999999 after killing|r " + ij(Oj))
                set b = false
            else
                call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, ij(Xj) + pv[Jv[Rj]] + mv[Jv[Rj]])
            endif
        endif
        if b and wv then
            call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, ij(Xj) + " |c00999999killed|r " + ij(Oj))
        endif
        set jv[Rj] = Sv
        call TimerStart(Qv, Wv, true, function aj)
    elseif yv then
        if Pv[Ij] != null then
            call nj(Xj, Oj)
            set kv[Ij] = 0
            set Jv[Ij] = 0
            set jv[Ij] = 0
            set Kv[Ij] = 0
        endif
    endif
    set Xj = null
    set Oj = null
    return false
endfunction
function Aj takes nothing returns nothing
    set Lv[1] = "|c00ff3333First Blood!|r"
    set Lv[2] = "|c006666ffKilling Spree!|r"
    set Lv[3] = "|c00ff00ffDominating!|r"
    set Lv[4] = "|c00660099Mega Kill!|r"
    set Lv[5] = "|c00cccc00Unstoppable!|r"
    set Lv[6] = "|c0033cc00Whicked Sick!|r"
    set Lv[7] = "|c00cc6600Monsterkill!|r"
    set Lv[8] = "|c0033ffffGODLIKE|r"
    set Lv[9] = "|c00cc0033HOLY SHIT|r"
    set Lv[10] = "|c00993300OWNAGE!|r"
    set Mv[1] = " |c00999999has|r "
    set Mv[2] = " |c00999999is on a|r "
    set Mv[3] = " |c00999999is|r "
    set Mv[4] = " |c00999999performed|r "
    set Mv[5] = " |c00999999is|r "
    set Mv[6] = " |c00999999is|r "
    set Mv[7] = " |c00999999performed|r "
    set Mv[8] = " |c00999999is|r "
    set Mv[9] = " |c00999999is|r "
    set Mv[10] = " |c00999999is on|r "
    set hv[1] = UD
    set hv[2] = pD
    set hv[3] = lD
    set hv[4] = PD
    set hv[5] = TD
    set hv[6] = uD
    set hv[7] = qD
    set hv[8] = mD
    set hv[9] = MD
    set hv[10] = QD
    set Hv[2] = LD
    set Hv[3] = SD
    set Hv[4] = tD
    set Hv[5] = KD
    set mv[2] = "|c00ff6633Double Kill!|r"
    set mv[3] = "|c000066ffTriple Kill!|r"
    set mv[4] = "|c009900ccUltra Kill!|r"
    set mv[5] = "|c0000ff66Combowhore!|r"
    set pv[2] = " |c00999999has|r "
    set pv[3] = " |c00999999has|r "
    set pv[4] = " |c00999999has|r "
    set pv[5] = " |c00999999is|r "
    call TriggerRegisterAnyUnitEventBJ(qv, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(qv, Condition(function Ej))
endfunction
function Nj takes nothing returns nothing
    local unit uc = GetTriggerUnit()
    local integer lv = GetUnitAbilityLevel(uc, GetSpellAbilityId())
    call Nh(GetOwningPlayer(uc), uc, Yv, lv, "tranquility", 16, false)
endfunction
function bj takes nothing returns boolean
    if GetSpellAbilityId() == 'A0AI' then
        return true
    endif
    return false
endfunction
function Bj takes nothing returns nothing
    call Eh(EVENT_PLAYER_UNIT_SPELL_EFFECT, function bj, function Nj)
endfunction
function SetupData takes nothing returns nothing
    local integer i = 0
    set zv = CreateTimer()
    set Zv = 0
    set ee = CreateTimer()
    set xe = CreateTimer()
    set oe = CreateTimer()
    set re = CreateTimer()
    set ie = CreateTimer()
    set ae = CreateTimer()
    set ne = CreateTimer()
    set Ve = CreateTimer()
    set Ee = CreateTimer()
    set Xe = CreateTimer()
    set i = 0
    loop
        exitwhen(i > 1)
        set Re[i] = false
        set i = i + 1
    endloop
    set Ie = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set Ae[i] = ""
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set Ne[i] = ""
        set i = i + 1
    endloop
    set be = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set Be[i] = 0
        set i = i + 1
    endloop
    set ce = DialogCreate()
    set Ce = 0
    set de = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set De[i] = false
        set i = i + 1
    endloop
    set fe = 39
    set Fe = 1
    set i = 0
    loop
        exitwhen(i > 1)
        set ge[i] = 0
        set i = i + 1
    endloop
    set Ge = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set he[i] = false
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set He[i] = 0
        set i = i + 1
    endloop
    set je = 0
    set Je = 39
    set ke = 0
    set Ke = "Thanks to original authors IPAL & ZIGZAGGER for this opportunity. Thanks to DARKY26 for his tutorials on trigger skills. Thanks to God for His boundless love and blessings."
    set le = 100
    set Le = 0
    set me = .0
    set Me = 100
    set pe = 0
    set Pe = false
    set qe = false
    set Qe = 0
    set se = 0
    set Se = 0
    set te = 0
    set Te = 0
    set ue = 0
    set Ue = false
    set We = false
    set ye = false
    set Ye = false
    set ze = false
    set vx = .0
    set i = 0
    loop
        exitwhen(i > 1)
        set ex[i] = 0
        set i = i + 1
    endloop
    set xx = 0
    set ox = 0
    set rx = 0
    set ix = 0
    set ax = 27
    set nx = 0
    set Vx = .0
    set Ex = 4.0
    set Xx = false
    set Ox = 0
    set Rx = 0
    set Ix = 0
    set Ax = CreateTimer()
    set i = 0
    loop
        exitwhen(i > 1)
        set bx[i] = 0
        set i = i + 1
    endloop
    set Bx = 852230
    set cx = 'Azv9'
    set Cx = 10
    set dx = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set Dx[i] = false
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set Fx[i] = false
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set gx[i] = false
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set Gx[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set hx[i] = 0
        set i = i + 1
    endloop
    set Hx = 0
    set jx = 20
    set Jx = 7
    set kx = 2
    set Kx = 6
    set lx = 3
    set mx = 80.
    set i = 0
    loop
        exitwhen(i > 1)
        set Mx[i] = false
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set px[i] = false
        set i = i + 1
    endloop
    set Px = 0
    set qx = DialogCreate()
    set i = 0
    loop
        exitwhen(i > 1)
        set Sx[i] = false
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set tx[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set Tx[i] = false
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set ux[i] = CreateTrigger()
        set i = i + 1
    endloop
    set Ux = 0
    set wx = CreateTrigger()
    set i = 0
    loop
        exitwhen(i > 1)
        set Wx[i] = false
        set i = i + 1
    endloop
    set yx = 0
    set eo = CreateForce()
    set xo = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set oo[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set ro[i] = 0
        set i = i + 1
    endloop
    set io = false
    set i = 0
    loop
        exitwhen(i > 1)
        set ao[i] = 0
        set i = i + 1
    endloop
    set Vo = CreateTimer()
    set i = 0
    loop
        exitwhen(i > 1)
        set Eo[i] = 0
        set i = i + 1
    endloop
    set Xo = false
    set Oo = false
    set Ro = false
    set Io = 0
    set bo = CreateGroup()
    set go = ""
    set Go = false
    set ko = CreateGroup()
    set Ko = CreateTimer()
    set i = 0
    loop
        exitwhen(i > 1)
        set mo[i] = false
        set i = i + 1
    endloop
    set Mo = 0
    set Po = 0
    set qo = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set Qo[i] = false
        set i = i + 1
    endloop
    set So = 0
    set to = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set To[i] = 0
        set i = i + 1
    endloop
    set uo = 0
    set Uo = 0
    set wo = 0
    set Wo = 0
    set yo = 0
    set Yo = 0
    set zo = 0
    set Zo = 0
    set vr = 0
    set er = 0
    set xr = CreateTimer()
    set ir = 0
    set ar = 0
    set nr = 0
    set Vr = 0
    set Er = 0
    set Ir = 80.
    set Nr = CreateTimer()
    set dr = CreateGroup()
    set gr = false
    set Gr = 0
    set hr = 0
    set jr = 0
    set kr = 0
    set Kr = 0
    set lr = 0
    set Lr = 0
    set mr = 0
    set Mr = 0
    set Pr = CreateGroup()
    set oi = "Sound\\\\Music\\\\mp3Music\\\\IllidansTheme.mp3"
    set Vi = "Sound\\\\Music\\\\mp3Music\\\\PH1.mp3"
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
    set hn = CreateTrigger()
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
    set Un = CreateTrigger()
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
    set OV = CreateTrigger()
    set RV = CreateTrigger()
    set IV = CreateTrigger()
    set AV = CreateTrigger()
    set NV = CreateTrigger()
    set bV = CreateTrigger()
    set BV = CreateTrigger()
    set cV = CreateTrigger()
    set CV = CreateTrigger()
    set dV = CreateTrigger()
    set DV = CreateTrigger()
    set fV = CreateTrigger()
    set FV = CreateTrigger()
    set gV = CreateTrigger()
    set GV = CreateTrigger()
    set hV = CreateTrigger()
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
    set DX = CreateTrigger()
    set fX = CreateTrigger()
    set FX = CreateTrigger()
    set gX = CreateTrigger()
    set GX = CreateTrigger()
    set hX = CreateTrigger()
    set HX = CreateTrigger()
    set jX = CreateTrigger()
    set JX = CreateTrigger()
    set kX = CreateTrigger()
    set KX = CreateTrigger()
    set lX = CreateTrigger()
    set LX = CreateTrigger()
    set mX = CreateTrigger()
    set MX = CreateTrigger()
    set pX = CreateTrigger()
    set PX = CreateTrigger()
    set qX = CreateTrigger()
    set QX = CreateTrigger()
    set sX = CreateTrigger()
    set SX = CreateTrigger()
    set tX = CreateTrigger()
    set TX = CreateTrigger()
    set uX = CreateTrigger()
    set UX = CreateTrigger()
    set wX = CreateTrigger()
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
    set nR = CreateTrigger()
    set VR = CreateTrigger()
    set ER = CreateTrigger()
    set XR = CreateTrigger()
    set OR = CreateTrigger()
    set RR = CreateTrigger()
    set IR = CreateTrigger()
    set AR = CreateTrigger()
    set NR = CreateTrigger()
    set bR = CreateTrigger()
    set BR = CreateTrigger()
    set cR = CreateTrigger()
    set CR = CreateTrigger()
    set dR = CreateTrigger()
    set DR = CreateTrigger()
    set fR = CreateTrigger()
    set FR = CreateTrigger()
    set gR = CreateTrigger()
    set GR = CreateTrigger()
    set hR = CreateTrigger()
    set HR = CreateTrigger()
    set jR = CreateTrigger()
    set JR = CreateTrigger()
    set kR = CreateTrigger()
    set KR = CreateTrigger()
    set lR = CreateTrigger()
    set LR = CreateTrigger()
    set mR = CreateTrigger()
    set MR = CreateTrigger()
    set pR = CreateTrigger()
    set PR = CreateTrigger()
    set qR = CreateTrigger()
    set QR = CreateTrigger()
    set sR = CreateTrigger()
    set SR = CreateTrigger()
    set tR = CreateTrigger()
    set TR = CreateTrigger()
    set uR = CreateTrigger()
    set UR = CreateTrigger()
    set wR = CreateTrigger()
    set WR = CreateTrigger()
    set yR = CreateTrigger()
    set YR = CreateTrigger()
    set zR = CreateTrigger()
    set ZR = CreateTrigger()
    set vI = CreateTrigger()
    set eI = CreateTrigger()
    set xI = CreateTrigger()
    set oI = CreateTrigger()
    set rI = CreateTrigger()
    set iI = CreateTrigger()
    set aI = CreateTrigger()
    set nI = CreateTrigger()
    set VI = CreateTrigger()
    set EI = CreateTrigger()
    set XI = CreateTrigger()
    set OI = CreateTrigger()
    set RI = CreateTrigger()
    set II = CreateTrigger()
    set AI = CreateTrigger()
    set NI = CreateTrigger()
    set bI = CreateTrigger()
    set BI = CreateTrigger()
    set cI = CreateTrigger()
    set CI = CreateTrigger()
    set dI = CreateTrigger()
    set DI = CreateTrigger()
    set fI = CreateTrigger()
    set FI = CreateTrigger()
    set gI = CreateTrigger()
    set GI = CreateTrigger()
    set hI = CreateTrigger()
    set HI = CreateTrigger()
    set jI = CreateTrigger()
    set JI = CreateTrigger()
    set kI = CreateTrigger()
    set KI = CreateTrigger()
    set lI = CreateTrigger()
    set LI = CreateTrigger()
    set mI = CreateTrigger()
    set MI = CreateTrigger()
    set pI = CreateTrigger()
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
    set bb = CreateTrigger()
    set Bb = CreateTrigger()
    set cb = CreateTrigger()
    set Cb = CreateTrigger()
    set db = CreateTrigger()
    set i = 0
    loop
        exitwhen(i > 1)
        set yb[i] = CreateGroup()
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set Yb[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set zb[i] = false
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set vB[i] = false
        set i = i + 1
    endloop
    set eB = CreateForce()
    set xB = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set oB[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set rB[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set iB[i] = 0
        set i = i + 1
    endloop
    set aB = 0
    set nB = 0
    set VB = false
    set EB = 0
    set XB = 0
    set OB = CreateGroup()
    set RB = CreateGroup()
    set i = 0
    loop
        exitwhen(i > 1)
        set AB[i] = CreateForce()
        set i = i + 1
    endloop
    set NB = CreateForce()
    set i = 0
    loop
        exitwhen(i > 1)
        set bB[i] = ""
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set BB[i] = ""
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set cB[i] = ""
        set i = i + 1
    endloop
    set CB = 0
    set dB = CreateMultiboard()
    set DB = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set fB[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set FB[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set gB[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set GB[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set hB[i] = 0
        set i = i + 1
    endloop
    set HB = 0
    set jB = 0
    set JB = 0
    set kB = 0
    set KB = ""
    set lB = ""
    set i = 0
    loop
        exitwhen(i > 1)
        set LB[i] = ""
        set i = i + 1
    endloop
    set mB = CreateForce()
    set MB = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set QB[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set sB[i] = 0
        set i = i + 1
    endloop
    set SB = CreateGroup()
    set i = 0
    loop
        exitwhen(i > 1)
        set uB[i] = 0
        set i = i + 1
    endloop
    set UB = 0
    set wB = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set YB[i] = 0
        set i = i + 1
    endloop
    set zB = CreateGroup()
    set i = 0
    loop
        exitwhen(i > 1)
        set ZB[i] = 0
        set i = i + 1
    endloop
    set vc = CreateGroup()
    set i = 0
    loop
        exitwhen(i > 1)
        set xc[i] = 0
        set i = i + 1
    endloop
    set oc = false
    set rc = false
    set ic = CreateGroup()
    set ac = false
    set i = 0
    loop
        exitwhen(i > 1)
        set Ec[i] = 0
        set i = i + 1
    endloop
    set Xc = CreateGroup()
    set Ic = 0
    set bc = 0
    set Cc = 0
    set dc = 0
    set gc = false
    set i = 0
    loop
        exitwhen(i > 12)
        set hc[i] = 1.00
        set i = i + 1
    endloop
    set Hc = 0
    set Jc = CreateGroup()
    set kc = 0
    set Kc = 0
    set i = 0
    loop
        exitwhen(i > 1)
        set Lc[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set mc[i] = 0
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen(i > 1)
        set Mc[i] = 0
        set i = i + 1
    endloop
    set pc = 0
    set Pc = ""
    set qc = ""
    set Qc = CreateForce()
    set sc = CreateForce()
    set Sc = false
    set tc = false
    set Tc = DialogCreate()
    set wc = DialogCreate()
    set yc = 0
    set Yc = 0
    set zc = ""
    set vC = DialogCreate()
    set xC = false
    set oC = CreateForce()
    set rC = 40
endfunction