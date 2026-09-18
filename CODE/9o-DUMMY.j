
//Use :                               
// Order :                           
//==> call DUMMY.target("thunderbolt",target, ability_id , level_of_ability) [Search order name of spell u add]                            
// But it's only work for use make some effect to enemy (please select target allow in skill is Air,Ground )  
//when you use freedom dummy then u need use newx, it's will return new dummy  


struct DummyX 
    static integer dummy_id = 'h01T' //Set your id dummy                                     
    static integer dummy_idtest = 'edry' //Set your id dummy    
    static integer lunar_mark = 'A0CJ'
    static integer lunar_shield = 'A0CL'
    static integer slow_id = 'A0CN'   
        
    static integer frost_id = 'A002'     
    static integer banish_id = 'A0DR'


    
  
    static integer purge_id = 'A02B'
    static integer stun_id = 'A02H'     
    static integer frostnova_id = 'A02V'     

    
    static integer shield_id = 'A00E'     
    static key owner
    //Hero skill
    static integer firebolt_id = 'A005'     
    static integer innerfire_id = 'A08R'     
    static integer breath_fire_id = 'A009'     
    static integer finger_id = 'A067'     
    static integer chain_lightning_id = 'A06A'                         
    static integer dispel_id = 'A06B'
    static integer monsoon_id = 'A06E'
    static integer creepbolt_id = 'A06I'
    static integer rockskin_id = 'A06K'     
    static integer earthquake_id = 'A06N'     
    static integer flyrockfly_id = 'A06O'     
    static integer thunderclap_id = 'A06L'     
    static integer stormbolt_id = 'A06W'     
    static integer manaburn_id = 'A071'     
    static integer forked_id = 'A07I'     
    static integer warstomp_id = 'A080'     
    static integer innerfire2_id = 'A08R'     
    static integer unholy_frenzy_id = 'A08U'     
    static integer bloodlust_id = 'A090'     
    static integer roots_id = 'A093'     
    static integer impale_id = 'A095'     
    static integer acid_id = 'A096'     
    static integer faerie_fire_id = 'A097'     
    static integer carrionswarm_id = 'A099'     
    static integer carrionswarm2_id = 'A09A'     
    static integer stampede_id = 'A09B'     
    static integer roar_id = 'A09D'     
    static integer ent_dark = 'A09C'     
    static integer drain_id = 'A09E'     
    static integer infernal_id = 'A09F'     
    static integer rainfire_id = 'A09G'     
    static integer locustw_id = 'A09H'     
    static integer blizzard_id = 'A09I'     
    static integer db_atk_id = 'A0A2'     
    static integer illusion_id = 'A0A3'     
    static integer flameguard_id = 'A0A5'
    static integer overload_id = 'A0AG'
    static integer overcharge_id = 'A0AI'
    static integer open_wound_id = 'A0D8'
    static integer weakness_id = 'A0D9'
    static integer ensnare_id = 'A0DP'
    static integer windshield_id = 'A0E6'






    static integer raise_dead_id = 'A00B'                         
    static unit array load 
    static method new takes nothing returns nothing 
        call Preload_Ability(DummyX.lunar_mark) // Preload skill   
        // call Preload_Ability(DummyX.stun_id) // Preload skill    
        // call Preload_Ability(DummyX.frost_id) // Preload skill    

        // call Preload_Ability(DummyX.unholy_frenzy_id) // Preload skill        
        // call Preload_Ability(DummyX.innerfire_id) // Preload skill        
        // call Preload_Ability(DummyX.innerfire2_id) // Preload skill        
        // call Preload_Ability(DummyX.breath_fire_id) // Preload skill    
        // call Preload_Ability(DummyX.finger_id) // Preload skill    
        // call Preload_Ability(DummyX.chain_lightning_id) // Preload skill    
        // call Preload_Ability(DummyX.dispel_id) // Preload skill    
        // call Preload_Ability(DummyX.purge_id) // Preload skill    
        // call Preload_Ability(DummyX.monsoon_id) // Preload skill    
        // call Preload_Ability(DummyX.creepbolt_id) // Preload skill    
        // call Preload_Ability(DummyX.rockskin_id) // Preload skill    
        // call Preload_Ability(DummyX.earthquake_id) // Preload skill    
        // call Preload_Ability(DummyX.flyrockfly_id) // Preload skill    
        // call Preload_Ability(DummyX.thunderclap_id) // Preload skill    
        // call Preload_Ability(DummyX.stormbolt_id) // Preload skill    
        // call Preload_Ability(DummyX.manaburn_id) // Preload skill    
        // call Preload_Ability(DummyX.forked_id) // Preload skill    
        // call Preload_Ability(DummyX.warstomp_id) // Preload skill    
        // call Preload_Ability(DummyX.bloodlust_id) // Preload skill    
        // call Preload_Ability(DummyX.roots_id) // Preload skill    
        // call Preload_Ability(DummyX.impale_id) // Preload skill    
        // call Preload_Ability(DummyX.acid_id) // Preload skill    
        // call Preload_Ability(DummyX.faerie_fire_id) // Preload skill    
        // call Preload_Ability(DummyX.carrionswarm_id) // Preload skill    
        // call Preload_Ability(DummyX.carrionswarm2_id) // Preload skill    
        // call Preload_Ability(DummyX.roar_id) // Preload skill    
        // call Preload_Ability(DummyX.ent_dark) // Preload skill    
        // call Preload_Ability(DummyX.drain_id) // Preload skill    
        // call Preload_Ability(DummyX.infernal_id) // Preload skill    
        // call Preload_Ability(DummyX.rainfire_id) // Preload skill    
        // call Preload_Ability(DummyX.locustw_id) // Preload skill    
        // call Preload_Ability(DummyX.blizzard_id) // Preload skill    
        // call Preload_Ability(DummyX.db_atk_id) // Preload skill    
        // call Preload_Ability(DummyX.illusion_id) // Preload skill    
        // call Preload_Ability(DummyX.flameguard_id) // Preload skill    
        // call Preload_Ability(DummyX.overload_id) // Preload skill    
        // call Preload_Ability(DummyX.overcharge_id) // Preload skill    
        // call Preload_Ability('A0AZ') // chain lightning element master 
        // call Preload_Ability('A0B2') // Frost nova single 
        // call Preload_Ability('A0BV') // Keen Eye single 
        // call Preload_Ability('A0C2') // Unfinish verse
        // call Preload_Ability('A0CD') // Mana burn miss
        // call Preload_Ability('A0CK') // Evasion mv spd demon hutner
        // call Preload_Ability('A0DC') // Sleep
        // call Preload_Ability('A0DE') // Scroll Speed
        // call Preload_Ability('A0DQ') // Poison Zergling
        // call Preload_Ability('A0DT') // Crushing Wave
        // call Preload_Ability('A0E7') // Eternal potion
        // call Preload_Ability('A0EB') // Purifying Wind
        // call Preload_Ability('A0EF') // Faerie fire
        
        // call Preload_Ability(DummyX.open_wound_id) // Preload skill    
        // call Preload_Ability(DummyX.weakness_id) // Preload skill    
        // call Preload_Ability(DummyX.weakness_id) // Preload skill    
        // call Preload_Ability(DummyX.ensnare_id) // Preload skill    
        // call Preload_Ability(DummyX.banish_id) // Preload skill    
        // call Preload_Ability(DummyX.windshield_id) // Preload skill    
        
    endmethod 
    static method setup_dummy takes nothing returns nothing 
        set bj_forLoopAIndex = 0 
        loop 
            exitwhen bj_forLoopAIndex > 12 
            set.load[bj_forLoopAIndex] = CreateUnit(Player(bj_forLoopAIndex), .dummy_id, 0, 6000, 0) 
            call SetUnitPathing(.load[bj_forLoopAIndex], false)

            // call SaveUnitHandle(ht, GetHandleId(.load[bj_forLoopAIndex]), DummyX.owner, GAME.HERO[bj_forLoopAIndex])
            set bj_forLoopAIndex = bj_forLoopAIndex + 1 
        endloop 
        // set.load[GetPlayerNeutralAggressive()] = CreateUnit(Player(GetPlayerNeutralAggressive()), .dummy_id, 0, 0, 0) 
    endmethod 
    static method newx takes integer pid , unit caster returns unit 
        set bj_lastCreatedUnit = CreateUnit(Player(pid), .dummy_id, 0, 0, 0) 
        call SaveUnitHandle(ht, GetHandleId(bj_lastCreatedUnit), DummyX.owner, caster)
        call UnitAddAbility(bj_lastCreatedUnit, 'Avul') 
        call UnitAddAbility(bj_lastCreatedUnit, 'Aloc') 
        return bj_lastCreatedUnit 
    endmethod 
    static method target takes string ordername, unit dummy, unit u, integer spell_id, integer level returns nothing 
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        call UnitAddAbility(dummy, spell_id) 
        call SetUnitAbilityLevel(dummy, spell_id, level) 
        call IssueTargetOrder(dummy, ordername, u) 
        call UnitRemoveAbility(dummy, spell_id) 
    endmethod 
    static method dispel takes unit dummy, unit u returns nothing 
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        call UnitAddAbility(dummy, .dispel_id) 
        call IssueTargetOrderById(dummy, 852615, u) 
        call Unit.timelife(dummy, 3)
    endmethod 
    static method scrollspeed takes unit dummy, real speed , real duration , real aoe , integer id returns nothing 
        local ability abi = null
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_MOVEMENT_SPEED_INCREASE_ISPI, 0, speed )
        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_AREA_OF_EFFECT, 0, aoe )
        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueImmediateOrderById(dummy, 852285)
        call Unit.timelife(dummy, duration + 2)
        set abi = null
    endmethod

    static method stun takes unit dummy, unit u, real duration returns nothing 
        local real resist = 1.00
        set resist = RMaxBJ(0, resist - ((I2R(LoadInteger(stats, GetHandleId(u), Bonus.StunRes)) / 100) + (Hero.strr(DMGSTAT.caster) * 0.0005)  ))
        // if Unit.haveabi(u, 'A08X') then 
        //     set resist = resist * 0.08
        // endif
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        if resist > 0.0 then 
            call Proc.onStun(u, duration * resist)
            call UnitAddAbility(dummy, .stun_id) 
            // call SetUnitAbilityLevel(dummy, spell_id, 0) 
            call BlzSetAbilityRealLevelFieldBJ( BlzGetUnitAbility(dummy, .stun_id), ABILITY_RLF_DURATION_NORMAL, 0, duration * resist)
            call BlzSetAbilityRealLevelFieldBJ( BlzGetUnitAbility(dummy, .stun_id), ABILITY_RLF_DURATION_HERO, 0, duration * resist )
            call IssueTargetOrder(dummy, "thunderbolt", u) 
            call UnitRemoveAbility(dummy, .stun_id) 
        endif
    endmethod 
    static method illusion takes unit dummy, unit u, real duration returns nothing 
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        call UnitAddAbility(dummy, .illusion_id) 
        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        
        call BlzSetAbilityRealLevelFieldBJ( BlzGetUnitAbility(dummy, .stun_id), ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( BlzGetUnitAbility(dummy, .stun_id), ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrderById(dummy, 852274, u) 
        call UnitRemoveAbility(dummy, .illusion_id) 
    endmethod 
    static method antimagicshell takes unit dummy, unit u, real duration , integer absorb, integer id returns nothing 
        local ability abi = null
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
        call BlzSetAbilityIntegerLevelFieldBJ( abi, ABILITY_ILF_SHIELD_LIFE, 0, absorb )

        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "antimagicshell", u) 
        call UnitRemoveAbility(dummy, id) 
        set abi = null
    endmethod 
    
    static method stormbolt takes unit dummy, unit u, real dmg , real duration returns nothing 
        local ability abi = null 
        local real resist = 1.00
        set resist = RMaxBJ(0.01, resist - (I2R(LoadInteger(stats, GetHandleId(u), Bonus.StunRes)) / 100))
        if Unit.haveabi(u, 'A08X') then 
            set resist = resist * 0.08
        endif
        call UnitAddAbility(dummy, .stormbolt_id) 
        set abi = BlzGetUnitAbility(dummy, .stormbolt_id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_HTB1, 0, dmg )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration * resist)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration * resist )
        call IssueTargetOrder(dummy, "thunderbolt", u) 
        call Unit.timelife(dummy, duration + 3)
        set abi = null
    endmethod 
    static method faeriefire takes unit dummy, unit u, integer ar , real duration returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, .faerie_fire_id) 
        set abi = BlzGetUnitAbility(dummy, .faerie_fire_id)
      
        call BlzSetAbilityIntegerLevelFieldBJ( abi, ABILITY_ILF_DEFENSE_REDUCTION, 0, ar )
        
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "faeriefire", u) 

        call UnitRemoveAbility(dummy, .faerie_fire_id)
        set abi = null
    endmethod 
    static method faeriefire2 takes unit dummy, unit u, integer ar , real duration , integer id returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
      
        call BlzSetAbilityIntegerLevelFieldBJ( abi, ABILITY_ILF_DEFENSE_REDUCTION, 0, ar )
        
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "faeriefire", u) 

        call UnitRemoveAbility(dummy, id)
        set abi = null
    endmethod 
    static method openwound takes unit dummy, unit caster, unit u, real damage , real duration returns nothing 
        // local ability abi = null 
        // call UnitAddAbility(dummy, .open_wound_id) 
        // set abi = BlzGetUnitAbility(dummy, .open_wound_id)
        // call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_HIT_POINTS_GAINED_REJ1, 0, damage * (- 1) )
        // call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        // call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        // call IssueTargetOrder(dummy, "rejuvination", u) 
        // call SaveUnitHandle(ht, GetHandleId(u), ED.open_wound, caster)
        // call UnitRemoveAbility(dummy, .open_wound_id)
        // set abi = null
    endmethod 
    static method rejuvination takes unit dummy, unit caster, unit u, real heal , real duration , integer id returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_HIT_POINTS_GAINED_REJ1, 0, heal * (1 + Bonus.stat_real_bonus_rate(caster, Bonus.HealBonus, 0))  )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "rejuvination", u) 
        call UnitRemoveAbility(dummy, id)
        set abi = null
    endmethod 
    static method weakness takes unit dummy, unit u, real duration returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, .weakness_id) 
        set abi = BlzGetUnitAbility(dummy, .weakness_id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "cripple", u) 

        call UnitRemoveAbility(dummy, .weakness_id)
        set abi = null
    endmethod 
    static method frostnova takes unit dummy, unit u, real dmg , real dmg2, real duration returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, .frostnova_id) 
        set abi = BlzGetUnitAbility(dummy, .frostnova_id)
      
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_AREA_OF_EFFECT_DAMAGE, 0, dmg )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_SPECIFIC_TARGET_DAMAGE_UFN2, 0, dmg2 )
        
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "frostnova", u) 
        call Unit.timelife(dummy, duration + 2)
        set abi = null
    endmethod 
    static method frostnova2 takes unit dummy, unit u, real dmg , real dmg2, real duration , real aoe, integer id returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_AREA_OF_EFFECT_DAMAGE, 0, dmg )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_SPECIFIC_TARGET_DAMAGE_UFN2, 0, dmg2 )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_AREA_OF_EFFECT, 0, aoe )
        
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "frostnova", u) 
        call Unit.timelife(dummy, duration + 2)
        set abi = null
    endmethod 
    static method forkedlightning takes unit dummy, unit u, real dmg , real duration returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, .forked_id) 
        set abi = BlzGetUnitAbility(dummy, .forked_id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_PER_TARGET_OCL1, 0, dmg )
        
        // call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        // call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "forkedlightning", u) 
        call Unit.timelife(dummy, duration + 3)
        set abi = null
    endmethod 
    static method creepthunderbolt takes unit dummy, unit u, real dmg, real duration returns nothing 
        local ability abi = null 
        local real resist = 1.00
        set resist = RMaxBJ(0.01, resist - (I2R(LoadInteger(stats, GetHandleId(u), Bonus.StunRes)) / 100))
        if Unit.haveabi(u, 'A08X') then 
            set resist = resist * 0.08
        endif
        call UnitAddAbility(dummy, .creepbolt_id) 
        set abi = BlzGetUnitAbility(dummy, .creepbolt_id)
        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_DAMAGE_CTB1, 0, dmg )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration * resist)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration * resist )
        call IssueTargetOrderById(dummy, 852252, u)
        call Unit.timelife(dummy, duration + 2)
        set abi = null
    endmethod 
    static method ensnare takes unit dummy, unit u, real duration returns nothing 
        local ability abi = null 
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        call UnitAddAbility(dummy, .ensnare_id) 
        set abi = BlzGetUnitAbility(dummy, .ensnare_id)

        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "ensnare", u) 
        call UnitRemoveAbility(dummy, .ensnare_id) 
        set abi = null
    endmethod 
    static method purge takes unit dummy, unit u, real duration returns nothing 
        local ability abi = null 
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        call UnitAddAbility(dummy, .purge_id) 
        set abi = BlzGetUnitAbility(dummy, .purge_id)

        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "purge", u) 
        call UnitRemoveAbility(dummy, .purge_id) 
        set abi = null
    endmethod 
    static method sleep takes unit dummy, unit u, real duration , real stun, integer id returns nothing 
        local ability abi = null 
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_STUN_DURATION_USL1, 0, stun )

        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "sleep", u) 
        call UnitRemoveAbility(dummy, id) 
        set abi = null
    endmethod 
    static method roots takes unit dummy, unit u, real duration, real dps returns nothing 
        local ability abi = null 
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        call UnitAddAbility(dummy, .roots_id) 
        set abi = BlzGetUnitAbility(dummy, .roots_id)

        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_PER_SECOND_EER1, 0, dps )

        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "entanglingroots", u) 
        call UnitRemoveAbility(dummy, .roots_id) 
        set abi = null
    endmethod 
    static method roots2 takes unit dummy, unit u, real duration, real dps, integer id returns nothing 
        local ability abi = null 
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)

        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_PER_SECOND_EER1, 0, dps )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "entanglingroots", u) 
        call UnitRemoveAbility(dummy, id) 
        set abi = null
    endmethod 
    static method fingerofdeath takes unit dummy, unit u, real dmg , real duration returns nothing 
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        call UnitAddAbility(dummy, .finger_id) 
        call BlzSetAbilityRealLevelFieldBJ(  BlzGetUnitAbility(dummy, .finger_id), ABILITY_RLF_DAMAGE_NFD3, 0, dmg )
        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        call Unit.timelife(dummy, duration + 2)
        call IssueTargetOrder(dummy, "fingerofdeath", u) 
    endmethod 
    static method manaburn takes unit dummy, unit u, real dmg , real duration returns nothing 
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        call UnitAddAbility(dummy, .manaburn_id) 
        call BlzSetAbilityRealLevelFieldBJ(  BlzGetUnitAbility(dummy, .manaburn_id), ABILITY_RLF_MAX_MANA_DRAINED, 0, dmg )
        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        call Unit.timelife(dummy, duration + 2)
        call IssueTargetOrder(dummy, "manaburn", u) 
    endmethod 

    static method breathoffire takes unit dummy, real x , real y , real dmg , real dps , real duration returns nothing  
        local ability abi = null 
        // call SetUnitX(dummy, startX) 
        // call SetUnitY(dummy, startY) 
        call UnitAddAbility(dummy, .breath_fire_id) 
        set abi = BlzGetUnitAbility(dummy, .breath_fire_id)
        call MoveLocation(bj_loc, x, y) 
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_UCS1, 0, dmg )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_MAX_DAMAGE_UCS2, 0, dmg * 5 )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_PER_SECOND_NBF5, 0, dps )

        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssuePointOrderLoc(dummy, "breathoffire", bj_loc) 
        call Unit.timelife(dummy, duration + 2)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod 
    static method rainfire takes unit dummy, real x , real y , integer wave , integer shard , real dmg , real dps, real duration returns nothing  
        local ability abi = null 
        // call SetUnitX(dummy, startX) 
        // call SetUnitY(dummy, startY) 
        call UnitAddAbility(dummy, .rainfire_id) 
        set abi = BlzGetUnitAbility(dummy, .rainfire_id)
        call MoveLocation(bj_loc, x, y) 
        
        call BlzSetAbilityIntegerLevelFieldBJ( abi, ABILITY_ILF_NUMBER_OF_WAVES, 0, wave )
        call BlzSetAbilityIntegerLevelFieldBJ( abi, ABILITY_ILF_NUMBER_OF_SHARDS, 0, shard )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_HBZ2, 0, dmg )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_PER_SECOND_HBZ5, 0, dps )

        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssuePointOrderLoc(dummy, "rainoffire", bj_loc) 
        call Unit.timelife(dummy, wave + 3)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod 
    static method blizzard takes unit dummy, real x , real y , integer wave , integer shard , real dmg , real aoe, real dps, real duration returns nothing  
        local ability abi = null 
        // call SetUnitX(dummy, startX) 
        // call SetUnitY(dummy, startY) 
        call UnitAddAbility(dummy, .blizzard_id) 
        set abi = BlzGetUnitAbility(dummy, .blizzard_id)
        call MoveLocation(bj_loc, x, y) 
        
        call BlzSetAbilityIntegerLevelFieldBJ( abi, ABILITY_ILF_NUMBER_OF_WAVES, 0, wave )
        call BlzSetAbilityIntegerLevelFieldBJ( abi, ABILITY_ILF_NUMBER_OF_SHARDS, 0, shard )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_HBZ2, 0, dmg )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_PER_SECOND_HBZ5, 0, dps )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_AREA_OF_EFFECT, 0, aoe)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssuePointOrderLoc(dummy, "blizzard", bj_loc) 
        call Unit.timelife(dummy, wave + 3)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod 
    static method infernal takes unit dummy, real x , real y , real dmg , real delay , real time, real duration returns nothing  
        local ability abi = null 
        // call SetUnitX(dummy, startX) 
        // call SetUnitY(dummy, startY) 
        call UnitAddAbility(dummy, .infernal_id) 
        set abi = BlzGetUnitAbility(dummy, .infernal_id)
        call MoveLocation(bj_loc, x, y) 
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_UIN1, 0, dmg )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION, 0, time)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_IMPACT_DELAY, 0, delay )

        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssuePointOrderLoc(dummy, "dreadlordinferno", bj_loc) 
        call Unit.timelife(dummy, duration + 2)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod 
    
    static method carrionswarm takes unit dummy, real x , real y , real dmg , real distance, real final , real duration , integer id returns nothing  
        local ability abi = null 
        // call SetUnitX(dummy, startX) 
        // call SetUnitY(dummy, startY) 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
        call MoveLocation(bj_loc, x, y) 
        // call BJDebugMsg(R2S(x) + " [+] " + R2S(y))
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_UCS1, 0, dmg )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_MAX_DAMAGE_UCS2, 0, dmg * 5 )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DISTANCE_UCS3, 0, distance )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_FINAL_AREA_UCS4, 0, final )
        
        
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssuePointOrderLoc(dummy, "carrionswarm", bj_loc) 
        call Unit.timelife(dummy, duration + 3)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod 
    static method locustswarm takes unit dummy, real dmg , real dmgr , integer number , real duration , integer id returns nothing  
        local ability abi = null 
        // call SetUnitX(dummy, startX) 
        // call SetUnitY(dummy, startY) 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_RETURN_FACTOR, 0, dmgr )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_RETURN_THRESHOLD, 0, dmg * 5 )
        call BlzSetAbilityIntegerLevelFieldBJ( abi, ABILITY_ILF_MAX_SWARM_UNITS_PER_TARGET, 0, number )
        
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueImmediateOrder(dummy, "locustswarm" )
        call Unit.timelife(dummy, duration + 3)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod 
    static method stampede takes unit dummy, real x , real y , real dmg  , real duration , integer id returns nothing  
        local ability abi = null 
        // call SetUnitX(dummy, startX) 
        // call SetUnitY(dummy, startY) 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
        call MoveLocation(bj_loc, x, y) 
        // call BJDebugMsg(R2S(x) + " [+] " + R2S(y))
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_AMOUNT_NST3, 0, dmg )
        
        
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssuePointOrderLoc(dummy, "stampede", bj_loc) 
        call Unit.timelife(dummy, duration + 3)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod 

    static method drain takes unit dummy, unit target, real x , real y , real dmg  , real duration , integer id returns nothing  
        local ability abi = null 
        // call SetUnitX(dummy, startX) 
        // call SetUnitY(dummy, startY) 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
        call MoveLocation(bj_loc, x, y) 
        // call BJDebugMsg(R2S(x) + " [+] " + R2S(y))
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_HIT_POINTS_DRAINED, 0, dmg )
        
        
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "drain", target) 
        call Unit.timelife(dummy, duration + 3)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod 
    static method earthquake takes unit dummy, real x , real y , real slow , real duration returns nothing  
        local ability abi = null 
        // call SetUnitX(dummy, startX) 
        // call SetUnitY(dummy, startY) 
        call UnitAddAbility(dummy, .earthquake_id) 
        set abi = BlzGetUnitAbility(dummy, .earthquake_id)
        call MoveLocation(bj_loc, x, y) 
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_UNITS_SLOWED_PERCENT, 0, slow)


        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssuePointOrderLoc(dummy, "earthquake", bj_loc) 
        call Unit.timelife(dummy, duration + 2)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod 
    static method flyrockfly takes unit dummy, real x , real y , real dmg , real duration returns nothing  
        local ability abi = null 
        // call SetUnitX(dummy, startX) 
        // call SetUnitY(dummy, startY) 
        call UnitAddAbility(dummy, .flyrockfly_id) 
        set abi = BlzGetUnitAbility(dummy, .flyrockfly_id)
        call MoveLocation(bj_loc, x, y) 
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_MAX_DAMAGE_NCS4, 0, dmg * 15)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_AMOUNT_NCS1, 0, dmg)



        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssuePointOrderLoc(dummy, "clusterrockets", bj_loc) 
        call Unit.timelife(dummy, duration + 8)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod
    static method thunderclap takes unit dummy, real x , real y , real dmg , real duration returns nothing  
        local ability abi = null 
        call SetUnitX(dummy, x) 
        call SetUnitY(dummy, y) 
        call UnitAddAbility(dummy, .thunderclap_id) 
        set abi = BlzGetUnitAbility(dummy, .thunderclap_id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_AOE_DAMAGE, 0, dmg)

        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueImmediateOrder(dummy, "thunderclap") 

        call Unit.timelife(dummy, duration + 2)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod  
    static method thunderclap2 takes unit dummy, real x , real y , real dmg , real duration , integer id returns nothing  
        local ability abi = null 
        call SetUnitX(dummy, x) 
        call SetUnitY(dummy, y) 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_AOE_DAMAGE, 0, dmg)

        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueImmediateOrder(dummy, "thunderclap") 

        call Unit.timelife(dummy, duration + 2)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod 
    static method warstomp takes unit dummy, real x , real y , real dmg , real duration returns nothing  
        local ability abi = null 
        call SetUnitX(dummy, x) 
        call SetUnitY(dummy, y) 
        call UnitAddAbility(dummy, .warstomp_id) 
        set abi = BlzGetUnitAbility(dummy, .warstomp_id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_AOE_DAMAGE, 0, dmg)

        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueImmediateOrder(dummy, "stomp") 

        call Unit.timelife(dummy, duration + 2)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod  
    static method warstomp2 takes unit dummy, real x , real y , real dmg , real duration , real aoe returns nothing  
        local ability abi = null 
        call SetUnitX(dummy, x) 
        call SetUnitY(dummy, y) 
        call UnitAddAbility(dummy, .warstomp_id) 
        set abi = BlzGetUnitAbility(dummy, .warstomp_id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_AOE_DAMAGE, 0, dmg)
        
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_AREA_OF_EFFECT, 0, aoe )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueImmediateOrder(dummy, "stomp") 

        call Unit.timelife(dummy, duration + 2)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod  
    static method roar takes unit dummy, real x , real y , real dmg , real life_rate, integer armor, real duration , integer id returns nothing  
        local ability abi = null 
        call SetUnitX(dummy, x) 
        call SetUnitY(dummy, y) 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_INCREASE_PERCENT_ROA1, 0, dmg)
        call BlzSetAbilityIntegerLevelFieldBJ( abi, ABILITY_ILF_DEFENSE_INCREASE_ROA2, 0, armor)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_LIFE_REGENERATION_RATE, 0, life_rate)

        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueImmediateOrder(dummy, "roar") 

        call Unit.timelife(dummy, duration + 2)
        set abi = null 
        // call UnitRemoveAbility(dummy, spell_id) 
    endmethod  
    static method firebolt takes unit dummy, unit u, real dmg, real duration returns nothing 
        local ability abi = null 
        local real resist = 1.00
        set resist = RMaxBJ(0.01, resist - (I2R(LoadInteger(stats, GetHandleId(u), Bonus.StunRes)) / 100))
        if Unit.haveabi(u, 'A08X') then 
            set resist = resist * 0.08
        endif
        call UnitAddAbility(dummy, .firebolt_id) 
        set abi = BlzGetUnitAbility(dummy, .firebolt_id)
        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_DAMAGE_HTB1, 0, dmg )

        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration * resist)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration * resist )
        call IssueTargetOrder(dummy, "firebolt", u) 
        call UnitRemoveAbility(dummy, .firebolt_id) 
        set abi = null
    endmethod 
    static method acidbomb takes unit dummy, unit u, integer ar, real dmg, real dmg2, real duration returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, .acid_id) 
        set abi = BlzGetUnitAbility(dummy, .acid_id)
        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        call BlzSetAbilityIntegerLevelField(abi, ABILITY_ILF_ARMOR_PENALTY_NAB3, 0, ar )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_PRIMARY_DAMAGE, 0, dmg )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_SECONDARY_DAMAGE, 0, dmg2 )

        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "acidbomb", u) 
        call UnitRemoveAbility(dummy, .acid_id) 
        set abi = null
    endmethod 
    
    static method innerfire takes unit dummy, unit u, real dmg, integer armor, real duration , integer id returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)

        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_INCREASE_PERCENT_INF1, 0, dmg )
        call BlzSetAbilityIntegerLevelFieldBJ( abi, ABILITY_ILF_DEFENSE_INCREASE_INF2, 0, armor )

        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "innerfire", u) 
        call UnitRemoveAbility(dummy, id) 
        set abi = null 
    endmethod 
    static method unholy takes unit dummy, unit u, real as, real decay, real duration , integer id returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)

        // call SetUnitAbilityLevel(dummy, spell_id, 0) 
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_ATTACK_SPEED_BONUS_PERCENT, 0, as )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_PER_SECOND_UHF2, 0, decay )

        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "unholyfrenzy", u) 
        call UnitRemoveAbility(dummy, id) 
        set abi = null 
    endmethod 
    static method bloodlust takes unit dummy, unit u, real atk_spd, real mv_spd, real scale , integer id returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)
        // Mấy nay code hơi nhiều, quyết định nghỉ code chiều tối hôm nay
        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_ATTACK_SPEED_INCREASE_PERCENT_BLO1, 0, atk_spd)
        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_BLO2, 0, mv_spd)
        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_SCALING_FACTOR, 0, scale)
        
        call IssueTargetOrder(dummy, "bloodlust", u) 
        call UnitRemoveAbility(dummy, id) 
        set abi = null 

    endmethod 
    static method bloodlust2 takes unit dummy, unit u, real atk_spd, real mv_spd, real scale , integer id, real duration returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, id) 
        set abi = BlzGetUnitAbility(dummy, id)

        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_ATTACK_SPEED_INCREASE_PERCENT_BLO1, 0, atk_spd)
        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_BLO2, 0, mv_spd)
        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_SCALING_FACTOR, 0, scale)
        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_DURATION_NORMAL, 0, duration)
        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_DURATION_HERO, 0, duration)

        call IssueTargetOrder(dummy, "bloodlust", u) 

    
        call UnitRemoveAbility(dummy, id) 
        set abi = null 

    endmethod 
    static method shield takes unit dummy, unit u, real duration, real de_spd, real de_atk_spd returns nothing 
        // call SetUnitX(dummy, GetUnitX(u)) 
        // call SetUnitY(dummy, GetUnitY(u)) 
        call UnitAddAbility(dummy, .shield_id) 
        // call SetUnitAbilityLevel(dummy, spell_id, level) 
        call BlzSetAbilityRealLevelFieldBJ(BlzGetUnitAbility(dummy, .shield_id) , ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SLO1, 0, de_spd)
        call BlzSetAbilityRealLevelFieldBJ(BlzGetUnitAbility(dummy, .shield_id) , ABILITY_RLF_ATTACK_SPEED_FACTOR_SLO2, 0, de_atk_spd)

        call BlzSetAbilityRealLevelFieldBJ(BlzGetUnitAbility(dummy, .shield_id) , ABILITY_RLF_DURATION_NORMAL, 0, duration)
        call BlzSetAbilityRealLevelFieldBJ(BlzGetUnitAbility(dummy, .shield_id) , ABILITY_RLF_DURATION_HERO, 0, duration)
        call IssueTargetOrder(dummy, "slow", u) 
        call UnitRemoveAbility(dummy, .shield_id) 
    endmethod
    static method banish takes unit dummy, unit u, real duration, real de_spd, real de_atk_spd returns nothing 
        local ability abi = null
        call UnitAddAbility(dummy, .banish_id) 
        set abi = BlzGetUnitAbility(dummy, .banish_id)

        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_HBN1, 0, de_spd )
        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_HBN2, 0, de_atk_spd )

        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_DURATION_NORMAL, 0, duration )
        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_DURATION_HERO, 0, duration )
        call IssueTargetOrder(dummy, "banish", u) 
        call UnitRemoveAbility(dummy, .banish_id) 
        set abi = null
    endmethod 
    static method emoji takes unit dummy, unit u, integer id returns nothing 
        call UnitAddAbility(dummy, id) 
        call IssueTargetOrder(dummy, "slow", u) 
        call UnitRemoveAbility(dummy, id) 
    endmethod 
    static method slow takes unit dummy, unit u, real duration, real de_spd, real de_atk_spd returns nothing 
        local ability abi = null
        local real resist = 1.00
        set resist = RMaxBJ(0, resist - ((I2R(LoadInteger(stats, GetHandleId(u), Bonus.SlowRes)) / 100) ))
        // if Unit.haveabi(u, 'A08X') then 
        //     set resist = resist * 0.08
        // endif
        if resist > 0.0 then 
            // call BJDebugMsg(GetUnitName(dummy) + " - " + GetUnitName(u))
            call Proc.onSlow(u, duration * resist, de_spd * resist, de_atk_spd * resist)
            call UnitAddAbility(dummy, .slow_id) 
            set abi = BlzGetUnitAbility(dummy, .slow_id)

            call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SLO1, 0, de_spd * resist)
            call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_ATTACK_SPEED_FACTOR_SLO2, 0, de_atk_spd * resist)

            call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_DURATION_NORMAL, 0, duration * resist)
            call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_DURATION_HERO, 0, duration * resist)
            call IssueTargetOrder(dummy, "slow", u) 
            call UnitRemoveAbility(dummy, .slow_id) 
        endif
        set abi = null
    endmethod 
    static method slow2 takes unit dummy, unit u, real duration, real de_spd, real de_atk_spd, integer id returns nothing 
        local ability abi = null
        local real resist = 1.00
        set resist = RMaxBJ(0, resist - I2R(LoadInteger(stats, GetHandleId(u), Bonus.SlowRes)) / 100)
        // if Unit.haveabi(u, 'A08X') then 
        //     set resist = resist * 0.08
        // endif
        if resist > 0.0 then 
            call Proc.onSlow(u, duration * resist, de_spd * resist, de_atk_spd * resist)
            call UnitAddAbility(dummy, id) 
            set abi = BlzGetUnitAbility(dummy, id)

            call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SLO1, 0, de_spd * resist)
            call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_ATTACK_SPEED_FACTOR_SLO2, 0, de_atk_spd * resist)

            call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_DURATION_NORMAL, 0, duration * resist)
            call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_DURATION_HERO, 0, duration * resist)
            call IssueTargetOrder(dummy, "slow", u) 
            call UnitRemoveAbility(dummy, id) 
        endif
        set abi = null
    endmethod 
    static method chain_lightning takes unit dummy, unit target, real reduce_by_target, real damage, integer num_target , real dur returns nothing 
        call UnitAddAbility(dummy, .chain_lightning_id) 
        call SetUnitAbilityLevel(dummy, .chain_lightning_id, 0) 
        call BlzSetAbilityRealLevelFieldBJ(BlzGetUnitAbility(dummy, .chain_lightning_id) , ABILITY_RLF_DAMAGE_REDUCTION_PER_TARGET, 0, reduce_by_target )
        call BlzSetAbilityRealLevelFieldBJ( BlzGetUnitAbility(dummy, .chain_lightning_id), ABILITY_RLF_DAMAGE_PER_TARGET_OCL1, 0, damage )
        call BlzSetAbilityIntegerLevelFieldBJ( BlzGetUnitAbility(dummy, .chain_lightning_id), ABILITY_ILF_NUMBER_OF_TARGETS_HIT, 0, num_target )
        call IssueTargetOrder(dummy, "chainlightning", target) 
        call Unit.timelife(dummy, dur + 1)

        // call UnitRemoveAbility(dummy, .chain_lightning_id) 
    endmethod
    static method chain_lightning2 takes unit dummy, unit target, real reduce_by_target, real damage, integer num_target , real dur, integer id returns nothing 
        local ability abi = null
        call UnitAddAbility(dummy, id) 
        call SetUnitAbilityLevel(dummy, id, 0) 
        set abi = BlzGetUnitAbility(dummy, id)
        call BlzSetAbilityRealLevelFieldBJ( abi, ABILITY_RLF_DAMAGE_REDUCTION_PER_TARGET, 0, reduce_by_target )
        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_DAMAGE_PER_TARGET_OCL1, 0, damage )
        call BlzSetAbilityIntegerLevelFieldBJ( abi, ABILITY_ILF_NUMBER_OF_TARGETS_HIT, 0, num_target )
        call IssueTargetOrder(dummy, "chainlightning", target) 
        call Unit.timelife(dummy, dur + 1)

        // call UnitRemoveAbility(dummy, .chain_lightning_id) 
    endmethod
    static method monsoon takes unit dummy, real x, real y, real damage, real dur returns nothing 
        local ability abi = null 
        call UnitAddAbility(dummy, .monsoon_id) 
        set abi = BlzGetUnitAbility(dummy, .monsoon_id)
        call SetUnitAbilityLevel(dummy, .monsoon_id, 0) 
        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_DAMAGE_DEALT_ESF1, 0, damage )
   
        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_DURATION_NORMAL, 0, dur)
        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_DURATION_HERO, 0, dur)
        call MoveLocation(bj_loc, x, y) 
        call IssuePointOrderLoc(dummy, "monsoon", bj_loc) 
        call Unit.timelife(dummy, dur + 3)
        set abi = null 
        // call UnitRemoveAbility(dummy, .chain_lightning_id) 
    endmethod
    static method raise_dead takes unit dummy , integer first_sum , integer num1, integer sec_sum , integer num2, real duration returns nothing 
        // call UnitAddAbility(dummy, .raise_dead_id) 
        call BlzSetAbilityIntegerLevelFieldBJ( BlzGetUnitAbility(dummy, .raise_dead_id), ABILITY_ILF_UNIT_TYPE_FOR_LIMIT_CHECK, 0, first_sum )
        call BlzSetAbilityStringLevelFieldBJ( BlzGetUnitAbility(dummy, .raise_dead_id), ABILITY_SLF_UNIT_TYPE_ONE, 0, I2S(first_sum) )
        call BlzSetAbilityIntegerLevelFieldBJ( BlzGetUnitAbility(dummy, .raise_dead_id), ABILITY_ILF_UNITS_SUMMONED_TYPE_ONE, 0, num1 )
        call BlzSetAbilityStringLevelFieldBJ( BlzGetUnitAbility(dummy, .raise_dead_id), ABILITY_SLF_UNIT_TYPE_TWO, 0, I2S(sec_sum) )
        call BlzSetAbilityIntegerLevelFieldBJ( BlzGetUnitAbility(dummy, .raise_dead_id), ABILITY_ILF_UNITS_SUMMONED_TYPE_TWO, 0, num2 )

        call BlzSetAbilityRealLevelFieldBJ(BlzGetUnitAbility(dummy, .raise_dead_id) , ABILITY_RLF_DURATION_NORMAL, 0, duration)
        call BlzSetAbilityRealLevelFieldBJ(BlzGetUnitAbility(dummy, .raise_dead_id) , ABILITY_RLF_DURATION_HERO, 0, duration)
        call IssueImmediateOrder(dummy, "instant") 
        // call UnitRemoveAbility(dummy, .raise_dead_id) 
    endmethod 

    static method impale takes string ordername, unit caster, unit dummy, real x, real y , real air_time, real dmg , real dur returns nothing 
        // call SetUnitX(dummy, x)     
        // call SetUnitY(dummy, y)     
        local ability abi = null
        call UnitAddAbility(dummy, .impale_id) 
        set abi = BlzGetUnitAbility(dummy, .impale_id)

        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_AIR_TIME_SECONDS_UIM4, 0, air_time )
        call BlzSetAbilityRealLevelFieldBJ(abi , ABILITY_RLF_DAMAGE_DEALT_UIM3, 0, dmg )
   
        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_DURATION_NORMAL, 0, dur)
        call BlzSetAbilityRealLevelFieldBJ(abi, ABILITY_RLF_DURATION_HERO, 0, dur)
        call MoveLocation(bj_loc, x, y) 
        call IssuePointOrderLoc(dummy, "impale", bj_loc) 
        call Unit.timelife(dummy, dur + 2)
        set abi = null 

    endmethod 
    // call IssuePointOrderLocBJ( GetLastRestoredUnitBJ(), "breathoffire", GetRectCenter(GetPlayableMapRect()) )
    static method point takes string ordername, unit dummy, real x, real y, integer level, integer spell_id returns nothing 
        // call SetUnitX(dummy, x)     
        // call SetUnitY(dummy, y)     
        call UnitAddAbility(dummy, spell_id) 
        call SetUnitAbilityLevel(dummy, spell_id, level) 
        call MoveLocation(bj_loc, x, y) 
        call IssuePointOrderLoc(dummy, ordername, bj_loc) 

        call UnitRemoveAbility(dummy, spell_id) 
    endmethod 
    static method notarget takes string ordername, unit dummy, real x, real y, integer level, integer spell_id returns nothing 
        call SetUnitX(dummy, x) 
        call SetUnitY(dummy, y) 
        call UnitAddAbility(dummy, spell_id) 
        call SetUnitAbilityLevel(dummy, spell_id, level) 
        call IssueImmediateOrder(bj_lastCreatedUnit, ordername) 
        call UnitRemoveAbility(dummy, spell_id) 
    endmethod 

endstruct 

struct Fear 
    integer i 
    unit target 
    integer pid 
    effect ex 
    real a 
    private static method RunTickUpdate takes nothing returns nothing 
        local thistype this = runtime.get() 
        if ModuloInteger(.i, 16) == 0 then 
            set.a =.a + GetRandomReal(- 15, 15) 
        endif 
        set.i =.i - 1 
        call IssuePointOrder(.target, "move", Math.ppx(GetUnitX(.target), 250, .a), Math.ppy(GetUnitY(.target), 250, .a)) 
        if.i == 0 or GetUnitState(.target, UNIT_STATE_LIFE) <= 0 then 
            if .ex != null then 
                call DestroyEffect(.ex) 
            endif
            // call SetUnitOwner(.target, Player(.pid), false)  
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif 
    endmethod 
    static method RunFear takes unit target, real a, integer i returns boolean 
        local thistype this = thistype.create() 
        set.target = target 
        set.a = a
        set.pid = Num.uid(target) 
        set.i = i 
        set.ex = AddSpecialEffectTarget("Abilities\\Spells\\Other\\HowlOfTerror\\HowlTarget.mdl", target, "overhead")
        call runtime.new(this, P32, true, function thistype.RunTickUpdate)  
        return false 
    endmethod 
endstruct 
 