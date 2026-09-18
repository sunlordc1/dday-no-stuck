
struct Sentry 
    static method onHit takes nothing returns nothing 
        local DelayDamage dd
        if LoadBoolean(ht, GetHandleId(DMGSTAT.caster), moonrage.onHit_mr) then 
            set dd = DelayDamage.create()
            set dd.caster = DMGSTAT.caster
            set dd.target = DMGSTAT.victim
            set dd.DMG_TYPE = DAMAGE_TYPE_NORMAL
            set dd.ATK_TYPE = ATTACK_TYPE_NORMAL
            set dd.dmg = (15 * Unit.abilv(DMGSTAT.caster, 'A0CQ')) + (Hero.intr(DMGSTAT.caster) * 0.3)
            set dd.time = 2
            set dd.attach_name = "chest"
            set dd.attach_path = "Abilities\\Weapons\\WingedSerpentMissile\\WingedSerpentMissile.mdl"
            call dd.spell_now()
        endif
    endmethod
    static method run_spell takes unit caster , integer sid, real targetX, real targetY, integer lv returns boolean 

        //[Q] - Moonwave
        if sid == 'A0CI' then 
            call moonwave.mw_now(caster, Math.ab(Unit.x(caster), Unit.y(caster), targetX, targetY), 80 * lv, lv)
        endif
        //[W] - Moonstep
        if sid == 'A0CM' then 
            call DummyX.antimagicshell(DummyX.load[Num.uid(caster)], caster, 5, 80 * lv, DummyX.lunar_shield)
            call SetFly(caster, 50, 0.5, Math.ab(Unit.x(caster), Unit.y(caster), targetX, targetY), 800)
            call moonstep.ms_now(caster, (50 * lv) + (2 * Hero.intr(caster)))
        endif
        //[E] - Moonrage
        if sid == 'A0CQ' then 
            call moonrage.mr_now(caster)
        endif
        //[R] - Moonfall
        if sid == 'A0CR' then 
            call moonfall.mf_now(caster, 30)
        endif
        
        return false
    endmethod
endstruct
struct Stun 
    static method remove_stun takes unit u , integer a returns nothing 
        if Unit.haveabi(u, a) then 
            call Unit.removeabi(u, a) 
        endif
    endmethod
    static method dispel_stun takes unit u returns nothing 
        call Stun.remove_stun(u, 'BSTN')
        call Stun.remove_stun(u, 'BPSE')
    endmethod
endstruct

struct moonwave extends SKILL 
    string attach = ""
    integer lv
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster) then 
            call Group.release(.g)
            call Eff.remove( .missile) 
            call Eff.remove( .missile2) 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        set.x = Math.ppx( .x, .speed, .a) 
        set.y = Math.ppy( .y, .speed, .a) 
        call Eff.angle( .missile, .a) 
        call Eff.pos( .missile, .x, .y, Math.pz( .x, .y) + 80) 
        call Eff.angle( .missile2, .a) 
        call Eff.pos( .missile2, .x, .y, Math.pz( .x, .y) + 10) 
        set g = CreateGroup() 
        call Group.enum(g, .x, .y, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null)
            if not IsUnitInGroup(e, .g) and.FilterUnit( .caster, e) then 
                call Group.add(e, .g)
                call Eff.attach("Abilities\\Weapons\\SpiritOfVengeanceMissile\\SpiritOfVengeanceMissile.mdl", e, "chest")
                call UnitDamageTargetBJ(.caster, e, .dmg, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL) 
                call DummyX.faeriefire2(DummyX.load[Num.uid(.caster)], e, .lv * 2, 5.0, DummyX.lunar_mark)
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        set.time = .time - 1 
        if.time <= 0  then 
            call Group.release(.g)
            call Eff.remove( .missile) 
            call Eff.remove( .missile2) 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    static method mw_now takes unit caster , real a , real dmg , integer lv returns nothing
        local thistype this = thistype.create()
        set .caster = caster 
        set .x = Unit.x(.caster)
        set .y = Unit.y(.caster)
        set .a = a
        set .aoe = 150
        set .time = 40
        set .speed = 800 / 40
        set .lv = lv 
        set .dmg = dmg

        set.g = CreateGroup()
        set.missile = Eff.new( "Units\\NightElf\\Owl\\Owl.mdl", .x, .y, Math.pz( .x, .y) + 80) 
        set.missile2 = Eff.new( "war3mapImported\\Moon Fire Slash.mdx", .x, .y, Math.pz( .x, .y) + 10) 
        call Eff.size( .missile2, 0.6) 
        call Eff.size( .missile, 2) 
        call Eff.angle( .missile, .a) 
        call Eff.angle( .missile2, .a) 
        call runtime.new(this, P32, true, function thistype.spell_update) 
    endmethod 
endstruct

struct moonstep extends SKILL 

    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null
        if Boo.isdead( .caster) or.is_touch then 
            call Eff.remove(.missile)
            call Group.release(.g)
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        set .x = Unit.x(.caster)
        set .y = Unit.y(.caster)
    
        set g = CreateGroup() 
        call Group.enum(g, .x, .y, 120) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null)
            if .FilterUnit( .caster, e) and not Boo.isstructure(e) and not .is_touch then 
                call UnitDamageTargetBJ(.caster, e, .dmg, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
                call Eff.attach("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", e, "chest") 
                call DummyX.slow(DummyX.load[Num.uid(.caster)], e, 3.0, 0.5, 0.5)
                call SetFly(.caster, 10, 0.1, 0, 10)
                set .is_touch = true
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        
        set.time = .time - 1 
        if.time <= 0  then 
            call Eff.remove(.missile)
            call Group.release(.g)
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    static method ms_now takes unit caster , real dmg returns boolean 
        local thistype this = thistype.create()
        set .caster = caster
        set .dmg = dmg
        set .time = 16  
        set .missile = AddSpecialEffectTarget("Abilities\\Weapons\\ZigguratMissile\\ZigguratMissile.mdl", .caster, "chest")
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
 
endstruct

struct moonrage extends SKILL 
    static key onHit_mr
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        if Boo.isdead( .caster) then 
            call SaveBoolean(ht, GetHandleId(.caster), moonrage.onHit_mr, false)
            call Unit.removeabi(.caster, 'A0CO')
            call Eff.remove(.missile)
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        call Stun.dispel_stun(.caster)
        set.time = .time - 1 
        if.time <= 0  then 
            call SaveBoolean(ht, GetHandleId(.caster), moonrage.onHit_mr, false)
            call Unit.removeabi(.caster, 'A0CO')
            call Eff.remove(.missile)
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    static method mr_now takes unit caster returns boolean 
        local thistype this = thistype.create()
        set .caster = caster
        set .missile = AddSpecialEffectTarget("Abilities\\Weapons\\ZigguratMissile\\ZigguratMissile.mdl", .caster, "hand right")
        call SaveBoolean(ht, GetHandleId(.caster), moonrage.onHit_mr, true)
        call Unit.addabi(.caster, 'A0CO')
        set .time = 32 * 5  
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod
endstruct

struct moonfall extends SKILL 
    static method AoEDmg takes unit caster, real x, real y , real aoe , real dmg, string nova_path, real nova_size, string attach_path , attacktype atk_type, damagetype dmg_type returns nothing 
        local group g = null 
        local unit e = null 
        // set bj_lastCreatedTerrainDeformation = TerrainDeformCrater( x, y, 250, 128, R2I(0.5 * 2000) , false)
        // call TerrainDeformStop(bj_lastCreatedTerrainDeformation, R2I(0.35 * 2000))
        if nova_path != "" then 
            set bj_lastCreatedEffect = Eff.new(nova_path, x, y, Math.pz(x, y) + 5)
            call Eff.size(bj_lastCreatedEffect, nova_size)
            call DestroyEffect(bj_lastCreatedEffect)
        endif
        set g = CreateGroup() 
        call Group.enum(g, x, y, aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null )
            if.FilterUnit( caster, e) then 
                if attach_path != "" then 
                    call Eff.attach( attach_path, e, "chest")
                endif
                call UnitDamageTarget(caster, e, dmg, true, true, atk_type, dmg_type, null) 
                call DummyX.slow(DummyX.load[Num.uid(caster)], e, 3.0, 0.5, 0.5)
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 
    endmethod
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        if Boo.isdead( .caster) then 
            call Eff.remove(.missile)
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        if .time > 32 * 4 then 
            call BlzSetSpecialEffectZ(.missile2, .Lerp(Math.pz(.x, .y) + 500, Math.pz(.x, .y) + 10, ((32 * 5) - I2R(.time)) / 32   )) 
        elseif .time == 32 * 4 then 
            call Eff.remove(.missile2)
        endif
        if .time <= 32 * 4 and ModuloInteger(.time, 32) == 0  then 
            set bj_real = GetRandomReal(- 200, 200)
            call .AoEDmg(.caster, Math.ppx(.x, bj_real, GetRandomReal(1, 360)), Math.ppy(.y, bj_real, GetRandomReal(1, 360)), 300, .dmg, "Units\\NightElf\\Wisp\\WispExplode.mdl", 1.5, "Abilities\\Weapons\\SpiritOfVengeanceMissile\\SpiritOfVengeanceMissile.mdl", ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        endif
        if .time <= 32 * 4 and ModuloInteger(.time, 24) == 0  then 
            set bj_real = GetRandomReal(- 200, 200)
            call .AoEDmg(.caster, Math.ppx(.x, bj_real, GetRandomReal(1, 360)), Math.ppy(.y, bj_real, GetRandomReal(1, 360)), 300, .dmg, "Units\\NightElf\\Wisp\\WispExplode.mdl", 1.5, "Abilities\\Weapons\\SpiritOfVengeanceMissile\\SpiritOfVengeanceMissile.mdl", ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        endif
        if .time <= 32 * 4 and ModuloInteger(.time, 12) == 0  then 
            set bj_real = GetRandomReal(- 200, 200)
            call .AoEDmg(.caster, Math.ppx(.x, bj_real, GetRandomReal(1, 360)), Math.ppy(.y, bj_real, GetRandomReal(1, 360)), 300, .dmg, "Units\\NightElf\\Wisp\\WispExplode.mdl", 1.5, "Abilities\\Weapons\\SpiritOfVengeanceMissile\\SpiritOfVengeanceMissile.mdl", ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        endif
        set.time = .time - 1 
        if.time <= 0  then 
            call Eff.remove(.missile)
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    static method mf_now takes unit caster , real dmg returns boolean 
        local thistype this = thistype.create()
        set .caster = caster
        set .dmg = dmg
        set .time = 32 * 5  
        set .x = Unit.x(.caster)
        set .y = Unit.y(.caster)
        set .missile = Eff.new("Abilities\\Spells\\NightElf\\Starfall\\StarfallCaster.mdl", .x, .y, Math.pz(.x, .y) + 20)
        set .missile2 = Eff.new("war3mapImported\\Moon Fire Slash.mdx", .x, .y, Math.pz(.x, .y) + 500)
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
 
endstruct
