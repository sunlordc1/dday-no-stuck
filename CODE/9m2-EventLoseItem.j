    
struct EULI 
    static unit caster
    static integer pid
    static item Item
    static integer id
    static integer hid
    
    static method f_Checking takes nothing returns boolean 
        set .caster = GetTriggerUnit() 
        set .pid = Num.uid(.caster)
        set .Item = GetManipulatedItem()
        set .id = GetItemTypeId(Item)
        set .hid = GetHandleId(.Item)


        if EULI.id == 'brac' then 
            call Bonus.save_stat(EULI.caster, Bonus.ResistSpell, Bonus.stat_int(EULI.caster, Bonus.ResistSpell, - 25))
        endif
        if EULI.id == 'I01S' then 
            call Bonus.save_stat(EULI.caster, Bonus.ResistSpell, Bonus.stat_int(EULI.caster, Bonus.ResistSpell, - 35))
        endif

        if .id == 'I03B' then 
            if .pid < 5 then 
                call PLAYER.systemchatall("Light Team Get Bounty Gold [150] !!")
                set bj_int = 0
                loop
                    exitwhen bj_int > 4
                    call PLAYER.addgold(bj_int, 150)
                    set bj_int = bj_int + 1
                endloop
            else
                call PLAYER.systemchatall("Dark Team Get Bounty Gold [150] !!")
                set bj_int = 6
                loop
                    exitwhen bj_int > 10
                    call PLAYER.addgold(bj_int, 150)
                    set bj_int = bj_int + 1
                endloop
            endif

        endif
        if .id == 'I03C' then 
            if .pid < 5 then 
                call PLAYER.systemchatall("Light Team Get Bounty Wood [3] !!")
                set bj_int = 0
                loop
                    exitwhen bj_int > 4
                    call PLAYER.addlumber(bj_int, 3)
                    set bj_int = bj_int + 1
                endloop
            else
                call PLAYER.systemchatall("Dark Team Get Bounty Wood [3] !!")
                set bj_int = 6
                loop
                    exitwhen bj_int > 10
                    call PLAYER.addlumber(bj_int, 3)
                    set bj_int = bj_int + 1
                endloop
            endif
        endif
    
        return false 
    endmethod 
    static method setup takes nothing returns nothing 
        local trigger t = CreateTrigger() 
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM) 
        call TriggerAddAction(t, function thistype.f_Checking) 
        set t = null

    endmethod 
endstruct 

 