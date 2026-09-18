

struct EventSpell
    static method check takes nothing returns boolean 
        local unit caster = GetTriggerUnit() 
        local unit target = GetSpellTargetUnit() 
        local ability abi = GetSpellAbility()
        local integer sid = GetSpellAbilityId() 
        local item it = GetSpellTargetItem() 
        local integer cid = Num.uid(caster)
        local integer c_utid = Num.utid(caster)
        local integer chid = GetHandleId(caster)
        local integer lv = GetUnitAbilityLevel(caster, sid) 
        local real targetX = GetSpellTargetX() //Point X of skill                    
        local real targetY = GetSpellTargetY() //Point T of skill                    
        local real xc = Unit.x(caster) 
        local real yc = Unit.y(caster) 
        local integer thid = GetHandleId(target)
        local integer t_utid = Num.utid(target)
        local real xt = Unit.x(target) //Position X of target unit                   
        local real yt = Unit.y(target) //Position T of target unit  
        local integer tid = Num.uid(target)

        if c_utid == DummyX.dummy_id then 
            return true
        endif
        //


        call Sentry.run_spell( caster , sid, targetX, targetY, lv)
      
        return false 
    endmethod 
    static method setup takes nothing returns nothing 
        local trigger t = CreateTrigger() 
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT) 
        call TriggerAddAction(t, function thistype.check) 
        set t = null

    endmethod 
endstruct 

