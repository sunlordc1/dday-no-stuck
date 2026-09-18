//
struct EAI 
    static method f_Checking takes nothing returns boolean 
        local item acquire_item = GetManipulatedItem() 
        local integer ItemID = GetItemTypeId(acquire_item) 
        local unit u = GetTriggerUnit() 
        local integer pid = GetPlayerId(GetOwningPlayer(u)) 
        local integer charge = GetItemCharges(acquire_item) 
        local boolean b = false
        local integer count = 0
        local integer n = 0
        local item ItemSlot 
        // if (not ItemPickupLock.isAllowed(u, acquire_item)) then
        //     call ItemPickupLock.forceDrop(u, acquire_item)
        //     call PLAYER.systemchat(Player(pid), "The item does not belong to you")
        //     // (Optional) báo tin:
        //     // call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cffff5555Vật phẩm không thuộc quyền sở hữu của cậu.|r")
        // endif
        if ItemID == 'brac' then 
            call Bonus.save_stat(u, Bonus.ResistSpell, Bonus.stat_int(u, Bonus.ResistSpell, 25))
            call PLAYER.systemchat(Player(pid), "Spell Resistance: " + I2S(Bonus.stat_int(u, Bonus.ResistSpell, 0)) + "%%")
        endif
        if ItemID == 'I01S' then 
            call Bonus.save_stat(u, Bonus.ResistSpell, Bonus.stat_int(u, Bonus.ResistSpell, 35))
            call PLAYER.systemchat(Player(pid), "Spell Resistance: " + I2S(Bonus.stat_int(u, Bonus.ResistSpell, 0)) + "%%")
        endif
        // Charge Item
        if GetItemType(acquire_item) == ITEM_TYPE_CHARGED then
     
        endif
     

        set ItemSlot = null
        set acquire_item = null 
        set u = null 
        return false 
    endmethod 
    static method setup takes nothing returns nothing 
        local trigger t = CreateTrigger() 
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM) 
        call TriggerAddAction(t, function thistype.f_Checking) 
        set t = null

    endmethod 

endstruct