



struct EV_Select
    static unit array now
    static integer array utid
    static integer array hid
    static method f_Checking takes nothing returns nothing 
        local unit u = GetTriggerUnit() 
        local player p = GetTriggerPlayer()
        local integer pid = Num.pid(p)
        local AirborneX air
        if GetTriggerEventId() == EVENT_PLAYER_UNIT_SELECTED then 
            set .now[Num.uid(u)] = u
            set .utid[Num.uid(u)] = GetUnitTypeId(u)
            set .hid[Num.uid(u)] = GetHandleId(u)
            // if Boo.ishero(u) and Num.uid(u) < 10 and not Boo.isilussion(u) and not Boo.isdead(u) then 
            //     call Frame.showx(pid, Talent.TalentBTN[Talent.get_btn_id(pid, 1)])
            //     if LoadInteger(ht, GetHandleId(u), Talent.get_btn_id(pid, 1)) > 0 then 
            //         call Frame.changetexture(Talent.TalentBTN[Talent.get_btn_id(pid, 1)], Talent.IconPath[LoadInteger(ht, GetHandleId(u), Talent.get_btn_id(pid, 1))])
            //         call BlzFrameSetText(Talent.TalentBTNTooltip[Talent.get_btn_id(pid, 1)], Talent.Title[LoadInteger(ht, GetHandleId(u), Talent.get_btn_id(pid, 1))] + N + Talent.Desc[LoadInteger(ht, GetHandleId(u), Talent.get_btn_id(pid, 1))])
            //     else 
            //         call Frame.changetexture(Talent.TalentBTN[Talent.get_btn_id(pid, 1)], "frames\\tower_train_btn.tga")
            //         call BlzFrameSetText(Talent.TalentBTNTooltip[Talent.get_btn_id(pid, 1)], "Talent 1 - Unlocks at level 15")
            //     endif
            //     call Frame.showx(pid, Talent.TalentBTN[Talent.get_btn_id(pid, 2)])
            //     call Frame.showx(pid, Talent.TalentBTN[Talent.get_btn_id(pid, 3)])
            //     call Frame.showx(pid, Talent.TalentBTN[Talent.get_btn_id(pid, 4)])
            //     call Frame.showx(pid, Talent.TalentBTN[Talent.get_btn_id(pid, 5)])
            // endif
        else 
            // deselect
            // set Talent.TalentToggle[pid] = false

            // call Frame.hidex(pid, Talent.TalentBTN[Talent.get_btn_id(pid, 1)])
            // call Frame.hidex(pid, Talent.TalentBTN[Talent.get_btn_id(pid, 2)])
            // call Frame.hidex(pid, Talent.TalentBTN[Talent.get_btn_id(pid, 3)])
            // call Frame.hidex(pid, Talent.TalentBTN[Talent.get_btn_id(pid, 4)])
            // call Frame.hidex(pid, Talent.TalentBTN[Talent.get_btn_id(pid, 5)])
            // call Frame.texts(pid, Talent.OptionTitle, "")
            // call Frame.texts(pid, Talent.TalentTitle[0], "")
            // call Frame.texts(pid, Talent.TalentTitle[1], "")
            // call Frame.texts(pid, Talent.TalentTitle[2], "")
            // call Frame.texts(pid, Talent.TalentDesc[0], "")
            // call Frame.texts(pid, Talent.TalentDesc[1], "")
            // call Frame.texts(pid, Talent.TalentDesc[2], "")
            // call Frame.hidex(pid, Talent.TalentOptionBG[0])
            // call Frame.hidex(pid, Talent.TalentOptionBG[1])
            // call Frame.hidex(pid, Talent.TalentOptionBG[2])
            // call Frame.hidex(pid, Talent.TalentOption[Talent.get_learn_btn_id(pid, 1)])
            // call Frame.hidex(pid, Talent.TalentOption[Talent.get_learn_btn_id(pid, 2)])
            // call Frame.hidex(pid, Talent.TalentOption[Talent.get_learn_btn_id(pid, 3)])
        endif
        set u = null 
    endmethod 
    static method setup takes nothing returns nothing 
        local integer n = 0
        local trigger t = CreateTrigger()
        set n = 0
        loop
            call TriggerRegisterPlayerUnitEvent(t, Player(n) , EVENT_PLAYER_UNIT_SELECTED, null)
            call TriggerRegisterPlayerUnitEvent(t, Player(n) , EVENT_PLAYER_UNIT_DESELECTED, null)
            set n = n + 1
            exitwhen n == GetBJMaxPlayerSlots()
        endloop
        call TriggerAddAction(t, function thistype.f_Checking)
        set t = null
    endmethod 
endstruct 
    
    