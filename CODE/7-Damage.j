struct Bonus 
    static key Physical 
    static key Spell 



    
    static key Crit 
    static key CritDmg 
    static key ResistSpell 
    static key PierceSpell 
    static key LifeSteal 
    static key AtkRating 
    static key CritSpell 
    static key SlowRes 
    static key StunRes 
    static key HealBonus 

    static key OpenWound
    static key Weakness
    static key Blizzard
    static key Bash
    static key Sleep 
    static key LightProc 

    static key ExeDmg
    static key ExeCritDmg
    static key CtrlBurstDmg
    
    static key SpellBonus 
    static key IgnoreArmor
    static key FireDmg 
    static key PoiDmg 
    static key ColdDmg 
    static key LightDmg 
    static key PhysDmg 
    static key ChaosDmg 

    static key Thorn
    static key Luck

    static key Evasion 
    static key anim
    static key cd
    static integer default_crit = 0
    static integer default_evasion = 0
    static integer default_crit_dmg = 135
    static method stat takes unit u , integer st returns integer 
        return LoadInteger(stats, GetHandleId(u), st)
    endmethod
    static method stat_int takes unit u , integer st, integer bonus returns integer 
        local integer r = 0
        set r = LoadInteger(stats, GetHandleId(u), st) + bonus
        return r
    endmethod
    static method stat_real takes unit u , integer st, real bonus returns real 
        local real r = 0.0
        set r = I2R(LoadInteger(stats, GetHandleId(u), st) ) + bonus 
        return r
    endmethod
    static method stat_real_rate takes unit u , integer st returns real 
        local real r = 0.0
        set r = I2R(LoadInteger(stats, GetHandleId(u), st)) / 100
        return r
    endmethod
    static method stat_real_bonus_rate takes unit u , integer st , integer bonus returns real 
        local real r = 0.0
        set r = I2R(LoadInteger(stats, GetHandleId(u), st) + bonus ) / 100
        return r
    endmethod
    static method save_stat takes unit u , integer st, integer value returns nothing 
        call SaveInteger(stats, GetHandleId(u), st, value)
    endmethod
    static method apply takes unit u returns nothing 
        call .save_stat(u, .Physical, 0)
        call .save_stat(u, .Spell, 0)
        call .save_stat(u, .CritSpell, 0)
        call .save_stat(u, .Crit, 0)

        call .save_stat(u, .OpenWound, 0)
        call .save_stat(u, .Weakness, 0)
        call .save_stat(u, .Bash, 0)
        call .save_stat(u, .Blizzard, 0)
        call .save_stat(u, .Sleep, 0)
        call .save_stat(u, .LightProc, 0)


        call .save_stat(u, .ResistSpell, 0)
        call .save_stat(u, .PierceSpell, 0)
        call .save_stat(u, .FireDmg, 0)
        call .save_stat(u, .PoiDmg, 0)
        call .save_stat(u, .ColdDmg, 0)
        call .save_stat(u, .LightDmg, 0)
        call .save_stat(u, .PhysDmg, 0)
        call .save_stat(u, .ChaosDmg, 0)
        
        call .save_stat(u, .IgnoreArmor, 0)
        call .save_stat(u, .Thorn, 0)
        
        call .save_stat(u, .SpellBonus, 0)
        call .save_stat(u, .ExeDmg, 0)
        call .save_stat(u, .ExeCritDmg, 0)
        call .save_stat(u, .CtrlBurstDmg, 0)
        call .save_stat(u, .HealBonus, 0)
        
        call .save_stat(u, .LifeSteal, 0)
        call .save_stat(u, .SlowRes, 0)
        call .save_stat(u, .StunRes, 0)
        
        call .save_stat(u, .Evasion, 0)
        call .save_stat(u, .Luck, 0)
        call .save_stat(u, .AtkRating, 0)
        call .save_stat(u, .CritDmg, 0)
        call .save_stat(u, .anim, 0)
        call .save_stat(u, .cd, 0)
    endmethod
    static method clone_stat takes unit u, unit caster returns nothing 
        call .save_stat(u, .Physical, .stat_int(caster, .Physical, 0))
        call .save_stat(u, .CritSpell, .stat_int(caster, .CritSpell, 0))
        call .save_stat(u, .Spell, .stat_int(caster, .Spell, 0))
      
        if Boo.ishero(caster) then 
            call .save_stat(u, .Crit, .stat_int(caster, .Crit, 0) )
            call .save_stat(u, .CritDmg, .stat_int(caster, .CritDmg, 0) )
            call .save_stat(u, .PierceSpell, .stat_int(caster, .PierceSpell, 0) )
            call .save_stat(u, .SlowRes, .stat_int(caster, .SlowRes, 0) )
            call .save_stat(u, .StunRes, .stat_int(caster, .StunRes, 0) )
        else
            call .save_stat(u, .Crit, .stat_int(caster, .Crit, 0))
            call .save_stat(u, .CritDmg, .stat_int(caster, .CritDmg, 0))
            call .save_stat(u, .PierceSpell, .stat_int(caster, .PierceSpell, 0))
            call .save_stat(u, .SlowRes, .stat_int(caster, .SlowRes, 0))
            call .save_stat(u, .StunRes, .stat_int(caster, .StunRes, 0))
        endif
    
        call .save_stat(u, .OpenWound, .stat_int(caster, .OpenWound, 0))
        call .save_stat(u, .Weakness, .stat_int(caster, .Weakness, 0))
        call .save_stat(u, .Blizzard, .stat_int(caster, .Blizzard, 0))
        call .save_stat(u, .Bash, .stat_int(caster, .Blizzard, 0))
        call .save_stat(u, .Sleep, .stat_int(caster, .Sleep, 0))
        call .save_stat(u, .LightProc, .stat_int(caster, .LightProc, 0))

        call .save_stat(u, .ExeDmg, .stat_int(caster, .ExeDmg, 0))
        call .save_stat(u, .ExeCritDmg, .stat_int(caster, .ExeCritDmg, 0))
        call .save_stat(u, .CtrlBurstDmg, .stat_int(caster, .CtrlBurstDmg, 0))
        call .save_stat(u, .HealBonus, .stat_int(caster, .HealBonus, 0))

        call .save_stat(u, .ResistSpell, .stat_int(caster, .ResistSpell, 0))
     

        call .save_stat(u, .FireDmg, .stat_int(caster, .FireDmg, 0))
        call .save_stat(u, .PoiDmg, .stat_int(caster, .PoiDmg, 0))
        call .save_stat(u, .SpellBonus, .stat_int(caster, .SpellBonus, 0))
        call .save_stat(u, .LightDmg, .stat_int(caster, .LightDmg, 0))
        call .save_stat(u, .PhysDmg, .stat_int(caster, .PhysDmg, 0))
        call .save_stat(u, .ChaosDmg, .stat_int(caster, .ChaosDmg, 0))
        
        call .save_stat(u, .ColdDmg, .stat_int(caster, .ColdDmg, 0))
        call .save_stat(u, .IgnoreArmor, .stat_int(caster, .IgnoreArmor, 0))
        call .save_stat(u, .Thorn, .stat_int(caster, .Thorn, 0))
        

        

        call .save_stat(u, .LifeSteal, .stat_int(caster, .LifeSteal, 0))
        call .save_stat(u, .Evasion, .stat_int(caster, .Evasion, 0))
        call .save_stat(u, .Luck, .stat_int(caster, .Luck, 0))
        call .save_stat(u, .AtkRating, .stat_int(caster, .AtkRating, 0))
        call .save_stat(u, .anim, .stat_int(caster, .anim, 0))
        call .save_stat(u, .cd, .stat_int(caster, .cd, 0))
    endmethod
endstruct

struct DMGSTAT 
    static real dmg = 0.00 
    static unit victim 
    static unit caster 
    static attacktype ATK_TYPE 
    static damagetype DMG_TYPE 
    static integer uidc = 0 
    static integer uidv = 0 
    static integer idv = 0 
    static integer idc = 0 
    static real armor = 0.00 

    static real open_wound = 0.00
    static real weakness = 0.00
    static real sleep = 0.00 
    static real light_proc = 0.00 

    static real crit_dmg = 0.00 
    static integer crit_spell = 0 
    static real crit_chance = 0.00 
    static real evasion = 0.00 

    static real resist_spell = 0.00 
    static real pierce_spell = 0.00 
    static real spell_bonus = 0.00 
    static real fire_dmg = 0.00 
    static real poi_dmg = 0.00 
    static real cold_dmg = 0.00 
    static real light_dmg = 0.00 
    static real phys_dmg = 0.00 
    static real chaos_dmg = 0.00 
    
    static real armor_ignore = 0.00
    static real atk_rating = 0.00 
    static real life_steal = 0.00 
    static real exe_dmg = 0.00 
    static real exe_crit_dmg = 0.00
    static real control_burst_dmg = 0.00
    static real thorn = 0.00
    static real bash = 0.00
    
    static method f_Get_DMGSTAT takes nothing returns nothing 
        set.armor = BlzGetUnitArmor(DMGSTAT.victim) 
        set.uidc = GetUnitTypeId(DMGSTAT.caster) 
        set.uidv = GetUnitTypeId(DMGSTAT.victim) 
        set.idv = GetHandleId(DMGSTAT.victim) 
        set.idc = GetHandleId(DMGSTAT.caster) 
        set.crit_spell = Bonus.stat_int(DMGSTAT.caster, Bonus.CritSpell, 0)
        set.crit_dmg = Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.CritDmg, Bonus.default_crit_dmg)
        set.life_steal = Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.LifeSteal, 0)
        
        set.crit_chance = Bonus.stat_real(DMGSTAT.caster, Bonus.Crit, Bonus.default_crit)

        set.open_wound = Bonus.stat_real(DMGSTAT.caster, Bonus.OpenWound, 0)
        set.weakness = Bonus.stat_real(DMGSTAT.caster, Bonus.Weakness, 0)
        set.bash = Bonus.stat_real(DMGSTAT.caster, Bonus.Bash, 0)
        set.sleep = Bonus.stat_real(DMGSTAT.victim, Bonus.Sleep, 0) 
        set.light_proc = Bonus.stat_real(DMGSTAT.caster, Bonus.LightProc, 0) 

        set.evasion = Bonus.stat_real(DMGSTAT.victim, Bonus.Evasion, Bonus.default_evasion)
        set.thorn = Bonus.stat_real(DMGSTAT.victim, Bonus.Thorn, 0 )
        
        set.atk_rating = Bonus.stat_real(DMGSTAT.caster, Bonus.AtkRating, 0)

        set.resist_spell = 0 + Bonus.stat_real(DMGSTAT.victim, Bonus.ResistSpell, 0)  
        set.pierce_spell = 0 + Bonus.stat_real(DMGSTAT.caster, Bonus.PierceSpell, 0)  
        
        set.spell_bonus = 0 + Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.SpellBonus, 0)
        set.exe_dmg = 0 + Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.ExeDmg, 0)
        set.exe_crit_dmg = 0 + Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.ExeCritDmg, 0)
        set.control_burst_dmg = 0 + Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.CtrlBurstDmg, 0)
        
        set.fire_dmg = 0 + Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.FireDmg, 0)
        set.poi_dmg = 0 + Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.PoiDmg, 0)
        set.cold_dmg = 0 + Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.ColdDmg, 0)
        set.light_dmg = 0 + Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.LightDmg, 0)
        set.phys_dmg = 0 + Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.PhysDmg, 0)
        set.chaos_dmg = 0 + Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.ChaosDmg, 0)
        
        set.armor_ignore = 0 + Bonus.stat_real_bonus_rate(DMGSTAT.caster, Bonus.IgnoreArmor, 0)
    endmethod 
    static method f_Reset_DMGSTAT takes nothing returns nothing 
        set.uidc = 0 
        set.uidv = 0 
        set.idv = 0 
        set.idc = 0 
        set.crit_spell = 0 
        set.armor = 0.00 
        set.crit_dmg = 0.00 
        set.crit_chance = 0.00 
        set.evasion = 0.00 
        set.life_steal = 0.0
        set.atk_rating = 0.00 

        set.open_wound = 0.00 
        set.weakness = 0.00 
        set.bash = 0.00 
        set.sleep = 0.00 
        set.light_proc = 0.00 


        set.exe_dmg = 0.00
        set.exe_crit_dmg = 0.00
        set.control_burst_dmg = 0.00

        set.resist_spell = 0.00 
        set.pierce_spell = 0.00 
        set.fire_dmg = 0.00 
        set.poi_dmg = 0.00 
        set.cold_dmg = 0.00 
        set.light_dmg = 0.00 
        set.phys_dmg = 0.00 
        set.chaos_dmg = 0.00 
        
        set.armor_ignore = 0.00
        set.thorn = 0.00
        
        set.spell_bonus = 0.00 
      
    endmethod 
endstruct 
struct DMGEVENT 
    static trigger t = CreateTrigger() 
    private static method DamageEvent takes nothing returns nothing 
        call DisableTrigger(GetTriggeringTrigger()) 
        set DMGSTAT.caster = GetEventDamageSource() 
        set DMGSTAT.victim = BlzGetEventDamageTarget() 
        set DMGSTAT.dmg = GetEventDamage() 
        
        call TriggerExecute(.t) 
        set DMGSTAT.caster = null 
        set DMGSTAT.victim = null 
        call EnableTrigger(GetTriggeringTrigger()) 
    endmethod 
    static method Damaged takes nothing returns nothing 
        local string color_dmg_type 
        local real chance_hit = 0 
        local DelayDamage dd
        call DMGSTAT.f_Reset_DMGSTAT() 
        call DMGSTAT.f_Get_DMGSTAT() 
        set DMGSTAT.ATK_TYPE = BlzGetEventAttackType() 
        set DMGSTAT.DMG_TYPE = BlzGetEventDamageType() 
            
        if DMGSTAT.dmg > 0.00 then 
        

            call Proc.BSTAT() 
            // call BJDebugMsg("Crit " + R2S(DMGSTAT.crit_chance))
            if GetUnitLifePercent(DMGSTAT.victim) <= 30.00 then 
                if DMGSTAT.exe_dmg > 0 then 
                    set DMGSTAT.dmg = DMGSTAT.dmg * (1 + DMGSTAT.exe_dmg) // 
                endif
                if DMGSTAT.exe_crit_dmg > 0 then 
                    set DMGSTAT.crit_dmg = DMGSTAT.crit_dmg + DMGSTAT.exe_crit_dmg 
                endif
            endif
          
            set DMGSTAT.armor = DMGSTAT.armor * (1 - DMGSTAT.armor_ignore) // Reduce  % Armror

            
            if Math.rate(RMaxBJ(0, DMGSTAT.evasion - DMGSTAT.atk_rating)) then        
                set chance_hit = 0 
            else 
                set chance_hit = 1 
            endif 

            if BlzGetEventAttackType() != ATTACK_TYPE_NORMAL then 
                set color_dmg_type = "Physical" 
                if BlzGetEventAttackType() == ATTACK_TYPE_CHAOS then 
                    set DMGSTAT.dmg = DMGSTAT.dmg * (1 + DMGSTAT.chaos_dmg) 
                    if Math.rate(DMGSTAT.crit_chance) then 
                        set DMGSTAT.dmg = DMGSTAT.dmg * (DMGSTAT.crit_dmg) 
                        set color_dmg_type = "Crit" 
                    endif 
                    set color_dmg_type = "Chao" 
                endif 
                
                if BlzGetEventAttackType() == ATTACK_TYPE_HERO then 
                    set DMGSTAT.dmg = DMGSTAT.dmg * (1 + DMGSTAT.phys_dmg) 
                endif 
                if BlzGetEventDamageType() == DAMAGE_TYPE_UNIVERSAL then 
                    if(chance_hit > 0 and DMGSTAT.dmg > 0) then 
                        if Math.rate(DMGSTAT.crit_chance) then 
                            set DMGSTAT.dmg = DMGSTAT.dmg * (DMGSTAT.crit_dmg) 
                            call Proc.onCritical()
                            set color_dmg_type = "Crit" 
                        endif
                    endif
                endif
                if BlzGetEventDamageType() == DAMAGE_TYPE_NORMAL then 
                

                    if(chance_hit > 0 and DMGSTAT.dmg > 0) then 
                      
                        call Proc.onHit() 
                        if DMGSTAT.light_proc > 0 and Math.rate(DMGSTAT.light_proc) then 
                            set dd = DelayDamage.create()
                            set dd.caster = DMGSTAT.caster
                            set dd.target = DMGSTAT.victim
                            set dd.DMG_TYPE = DAMAGE_TYPE_LIGHTNING
                            set dd.ATK_TYPE = ATTACK_TYPE_NORMAL
                            set dd.dmg = (2 * I2R(Unit.lv( DMGSTAT.caster))) + (I2R(Hero.all(DMGSTAT.caster)) * 0.50)
                            set dd.time = 2
                            set dd.attach_name = "origin"
                            set dd.attach_path = "war3mapImported\\LightningBolt.mdx"
                            call dd.spell_now()
                        endif
                        if DMGSTAT.bash > 0 and Math.rate(DMGSTAT.bash)  then 
                            call DummyX.stun(DummyX.load[Num.uid(DMGSTAT.caster)], DMGSTAT.victim, 1.5 )
                        endif
                        if DMGSTAT.open_wound > 0 and Math.rate(DMGSTAT.open_wound) then
                            if Boo.ishero(DMGSTAT.victim) then 
                                call DummyX.openwound(DummyX.load[Num.uid(DMGSTAT.caster)], DMGSTAT.caster, DMGSTAT.victim, 15 + (1 * I2R(Unit.lv(DMGSTAT.caster))), 8)
                            else 
                                call DummyX.openwound(DummyX.load[Num.uid(DMGSTAT.caster)], DMGSTAT.caster, DMGSTAT.victim, 30 + (2 * I2R(Unit.lv(DMGSTAT.caster))), 8)
                            endif
                        endif
                        if DMGSTAT.weakness > 0 and Math.rate(DMGSTAT.weakness) then
                            call DummyX.weakness(DummyX.load[Num.uid(DMGSTAT.caster)], DMGSTAT.victim, 4)
                        endif
               
                        if DMGSTAT.life_steal > 0 and DMGSTAT.DMG_TYPE == DAMAGE_TYPE_NORMAL and DMGSTAT.dmg > 0.0 then   
                            if not Unit.haveabi(DMGSTAT.caster, 'B01K') then //Open wound
                                // call GRAPHIC.run_graphic(DMGSTAT.caster, DMGSTAT.caster,  DMGSTAT.dmg * DMGSTAT.life_steal, "Heal") 

                            endif                                 
                        endif   
                        if Math.rate(DMGSTAT.crit_chance) then 
                            set DMGSTAT.dmg = DMGSTAT.dmg * (DMGSTAT.crit_dmg) 
                            call Proc.onCritical()
                            set color_dmg_type = "Crit" 
                        endif 
                    
                        call Proc.onStuck() 
                   
                        if DMGSTAT.thorn > 0 then 
                            set dd = DelayDamage.create()
                            set dd.caster = DMGSTAT.victim
                            set dd.target = DMGSTAT.caster
                            set dd.DMG_TYPE = DAMAGE_TYPE_DISEASE
                            set dd.ATK_TYPE = ATTACK_TYPE_NORMAL
                            set dd.dmg = DMGSTAT.thorn
                            set dd.time = 2
                            set dd.attach_name = "chest"
                            set dd.attach_path = "Abilities\\Spells\\Orc\\Disenchant\\DisenchantSpecialArt.mdl"
                            call dd.spell_now()
                        endif
                    else 
                        if(chance_hit == 0) then 
                            set DMGSTAT.dmg = 0 
                            set color_dmg_type = "Miss" 
                        endif 
                    endif 

                

           
                 
             
                    if DMGSTAT.dmg <= 0 and color_dmg_type != "Miss" then 
                        set color_dmg_type = "Block" 
                    endif 
                endif 
               
            endif 
            if BlzGetEventAttackType() == ATTACK_TYPE_NORMAL then 
                call Proc.SpellStat() 
                set color_dmg_type = "Spell" 
                set DMGSTAT.dmg = DMGSTAT.dmg * (1 + DMGSTAT.spell_bonus)

                if BlzGetEventDamageType() == DAMAGE_TYPE_COLD then 
                    set DMGSTAT.dmg = DMGSTAT.dmg * (1 + DMGSTAT.cold_dmg)
                    set color_dmg_type = "Cold" 
                endif 
                if BlzGetEventDamageType() == DAMAGE_TYPE_POISON then 
                    set DMGSTAT.dmg = DMGSTAT.dmg * (1 + DMGSTAT.poi_dmg)
                    set color_dmg_type = "Poison" 
                endif 
                if BlzGetEventDamageType() == DAMAGE_TYPE_SHADOW_STRIKE then 
                    set color_dmg_type = "Poison" 
                endif 
                if BlzGetEventDamageType() == DAMAGE_TYPE_DEATH then 
                    set color_dmg_type = "" 
                endif 
                if BlzGetEventDamageType() == DAMAGE_TYPE_DEMOLITION then 
                    set color_dmg_type = "" 
                endif 
                if BlzGetEventDamageType() == DAMAGE_TYPE_DISEASE then 
                    set color_dmg_type = "Thorn" 
                endif 
                
                if BlzGetEventDamageType() == DAMAGE_TYPE_FIRE then 
                    set DMGSTAT.dmg = DMGSTAT.dmg * (1 + DMGSTAT.fire_dmg)
                    set color_dmg_type = "Fire" 
                endif 
                if BlzGetEventDamageType() == DAMAGE_TYPE_LIGHTNING then 
                    set color_dmg_type = "Lightning" 
                    set DMGSTAT.dmg = DMGSTAT.dmg * (1 + DMGSTAT.light_dmg)

                    if GetOwningPlayer(DMGSTAT.caster) == GetOwningPlayer(DMGSTAT.victim) then 
                        set color_dmg_type = "Heal" 
                    endif 
                endif 
                if BlzGetEventDamageType() == DAMAGE_TYPE_MAGIC then 
                endif 

                if Math.rate(DMGSTAT.crit_chance) and DMGSTAT.crit_spell == 1 then 
                    set DMGSTAT.dmg = DMGSTAT.dmg * (DMGSTAT.crit_dmg) 
                    call Proc.onCritical()
                    set color_dmg_type = "Crit" 
                endif 
                set DMGSTAT.resist_spell = DMGSTAT.resist_spell - DMGSTAT.pierce_spell 
                set DMGSTAT.dmg = RMaxBJ(0, DMGSTAT.dmg - (DMGSTAT.dmg * (DMGSTAT.resist_spell / 100))) 
            endif 
            
            if DMGSTAT.dmg <= 0 then 
                if color_dmg_type != "Miss" then 
                    set color_dmg_type = "Block" 
                endif 
            endif 
        endif 
        if color_dmg_type == "Miss"  then
            call Proc.onEvasion() 
        endif
        if color_dmg_type == "Block"  then
            call Proc.onBlock() 
        endif
 
        if Unit.life(DMGSTAT.victim) <= DMGSTAT.dmg + 1 or Unit.life(DMGSTAT.victim) <= DMGSTAT.dmg then 
            call Proc.onLastHit() 
        endif 
        if DMGSTAT.dmg > 0 then 
            call Proc.onAfterDamage() 
        endif
        // if Boo.ishero(DMGSTAT.caster) then 
        //     call BJDebugMsg(R2S(DMGSTAT.dmg))
        // endif
        call BlzSetEventDamage(DMGSTAT.dmg) 
        // call GRAPHIC.run_graphic(DMGSTAT.victim, DMGSTAT.caster, DMGSTAT.dmg, color_dmg_type) 
    endmethod 
    private static method onInit takes nothing returns nothing 
        local trigger t = CreateTrigger() 
        call TriggerRegisterAnyUnitEventBJ(t, ConvertPlayerUnitEvent(308)) 
        call TriggerAddAction(t, function thistype.DamageEvent) 
        set t = null 
        call DisableTrigger(.t) 
        call TriggerAddAction(.t, function thistype.Damaged) 
    endmethod 
endstruct