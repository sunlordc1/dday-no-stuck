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
        if ItemID == 'I002' then 
            call Bonus.save_stat(u, Bonus.BlockRate, Bonus.stat_int(u, Bonus.BlockRate, 30))
            call Bonus.save_stat(u, Bonus.BlockDmg, Bonus.stat_int(u, Bonus.BlockDmg, 40))
            call PLAYER.systemchat(Player(pid), "Block Rate: " + I2S(Bonus.stat_int(u, Bonus.BlockRate, 0)) + "%% \n" + "Block Damage: " + I2S(Bonus.stat_int(u, Bonus.BlockDmg, 0)) + ".")

        endif
        if ItemID == 'I01R' then 
            call Bonus.save_stat(u, Bonus.BlockRate, Bonus.stat_int(u, Bonus.BlockRate, 36))
            call Bonus.save_stat(u, Bonus.BlockDmg, Bonus.stat_int(u, Bonus.BlockDmg, 48))
            call PLAYER.systemchat(Player(pid), "Block Rate: " + I2S(Bonus.stat_int(u, Bonus.BlockRate, 0)) + "%% \n" + "Block Damage: " + I2S(Bonus.stat_int(u, Bonus.BlockDmg, 0)) + ".")
        endif

        //Talisman of evasion
        if ItemID == 'evtl' then 
            call Bonus.save_stat(u, Bonus.Evasion, Bonus.stat_int(u, Bonus.Evasion, 5))
            call Bonus.save_stat(u, Bonus.PierceSpell, Bonus.stat_int(u, Bonus.PierceSpell, 10))
            call PLAYER.systemchat(Player(pid), "Evasion: " + I2S(Bonus.stat_int(u, Bonus.Evasion, 0)) + "%% \n" + "Pierce Spell: " + I2S(Bonus.stat_int(u, Bonus.PierceSpell, 0)) + ".")
        endif
        //Zalmoxes Hammer
        if ItemID == 'I00M' then 
            call Bonus.save_stat(u, Bonus.AtkRating, Bonus.stat_int(u, Bonus.AtkRating, 5))
            call PLAYER.systemchat(Player(pid), "Attack Rating: " + I2S(Bonus.stat_int(u, Bonus.AtkRating, 0)) + "%%.")
        endif
        //Orb Of The Darkmoon
        if ItemID == 'I02P' then 
            call Bonus.save_stat(u, Bonus.Evasion, Bonus.stat_int(u, Bonus.Evasion, 6))
            call Bonus.save_stat(u, Bonus.PierceSpell, Bonus.stat_int(u, Bonus.PierceSpell, 12))
            call PLAYER.systemchat(Player(pid), "Evasion: " + I2S(Bonus.stat_int(u, Bonus.Evasion, 0)) + "%% \n" + "Pierce Spell: " + I2S(Bonus.stat_int(u, Bonus.PierceSpell, 0)) + ".")
        endif
        //Vampiric Power
        if ItemID == 'modt' then 
            call Bonus.save_stat(u, Bonus.LifeSteal, Bonus.stat_int(u, Bonus.LifeSteal, 6))
            call Bonus.save_stat(u, Bonus.ResistSpell, Bonus.stat_int(u, Bonus.ResistSpell, 2))
            call PLAYER.systemchat(Player(pid), "Lifesteal: " + I2S(Bonus.stat_int(u, Bonus.LifeSteal, 0)) + "%% \n" + "Spell Resistance: " + I2S(Bonus.stat_int(u, Bonus.ResistSpell, 0)) + ".")
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