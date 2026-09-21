




struct TextDmg 
    static real text_size = 10 
    static real zOffset = 0 
    static real lifespan = 0.725 
    static real speed = 96 
    static real angle = 120 
    static boolean permanent = false 
    static real fadepoint = 1.00 
    static method setting takes texttag tt, unit caster, unit victim returns nothing 
        if tt != null then 
            call Texttag.velocity(tt, .speed, .angle) 
            call Texttag.permanent(tt, .permanent) 
            call Texttag.fadepoint(tt, .fadepoint) 
            call Texttag.lifespan(tt, .lifespan) 
            if GetLocalPlayer() == GetOwningPlayer(caster)and zb[GetPlayerId(GetOwningPlayer(caster))]and IsUnitVisible(victim, GetOwningPlayer(caster))then
                call SetTextTagVisibility(tt, true)
            endif
            if IsPlayerInForce(GetLocalPlayer(), eB)and zb[GetPlayerId(GetLocalPlayer())]and IsUnitVisible(victim, GetLocalPlayer())and GetOwningPlayer(caster) == GetOwningPlayer(IB[GetPlayerId(GetLocalPlayer())])and IB[GetPlayerId(GetLocalPlayer())] != null then
                call SetTextTagVisibility(tt, true)
            endif
        endif
    endmethod 
    // static method UG takes unit caster, unit victim, string s, real WG, real yG, boolean YG returns boolean
    //     local real x = GetUnitX(victim)
    //     local real y = GetUnitY(victim)
    //     local texttag zG = CreateTextTag()
    //     local real a = (WG * 0.071 / 128) * Cos(90 * bj_DEGTORAD)
    //     local real b = (WG * 0.071 / 128) * Sin(90 * bj_DEGTORAD)
    //     call SetTextTagText(zG, s, 10 * 0.023 / 10)
    //     call SetTextTagColor(zG, 255, 255, 255, 255)
    //     call SetTextTagPosUnit(zG, victim, yG)
    //     call SetTextTagVisibility(zG, false)
    //     if not YG then
    //         if GetLocalPlayer() == GetOwningPlayer(caster)and zb[GetPlayerId(GetOwningPlayer(caster))]and IsUnitVisible(victim, GetOwningPlayer(caster))then
    //             call SetTextTagVisibility(zG, true)
    //         endif
    //         if IsPlayerInForce(GetLocalPlayer(), eB)and zb[GetPlayerId(GetLocalPlayer())]and IsUnitVisible(victim, GetLocalPlayer())and GetOwningPlayer(caster) == GetOwningPlayer(IB[GetPlayerId(GetLocalPlayer())])and IB[GetPlayerId(GetLocalPlayer())] != null then
    //             call SetTextTagVisibility(zG, true)
    //         endif
    //     else
    //         call SetTextTagVisibility(zG, true)
    //     endif
    //     call SetTextTagVelocity(zG, a, b)
    //     call SetTextTagPermanent(zG, false)
    //     call SetTextTagLifespan(zG, 2)
    //     call SetTextTagFadepoint(zG, 1)
    //     set zG = null
    // endmethod
    // call TextDmg.run(olorName,  dmg,  victim,  caster)
    static method run takes string colorName, real dmg, unit victim, unit caster returns boolean 
        local integer cid = GetPlayerId(GetOwningPlayer(caster)) 
        local integer vid = GetPlayerId(GetOwningPlayer(victim)) 
        local texttag tt = null 
        local real dmg2
        if GetUnitTypeId(victim) == DummyX.dummy_id then 
            // call BJDebugMsg("dummy dmg")
            return false 
        endif
        if (colorName == "Gold") then 
            call PLAYER.addgold(Num.uid(caster), R2I(dmg))
            // set tt = Texttag.unit("+ " + Num.ri2s(dmg) + "G", caster, .zOffset, .text_size) 
            // call Texttag.colorpercent(tt, 93.00, 79, 0, 0 ) 
        endif
        if dmg >= 1 then 
            if colorName == "Physical" then 
                set tt = Texttag.unit("-" + Num.ri2s(dmg), victim, .zOffset, .text_size) 
                call Texttag.colorpercent(tt, 100.00, 100, 100, 0) 
            elseif colorName == "Spell" then
                set tt = Texttag.unit("-" + Num.ri2s(dmg), victim, .zOffset, .text_size) 
                call Texttag.colorpercent(tt, 10.00, 50, 80, 0) 
            elseif colorName == "Cold" then
                set tt = Texttag.unit("-" + Num.ri2s(dmg), victim, .zOffset, .text_size) 
                call Texttag.colorpercent(tt, 0.00, 60.00, 80.00, 0) 
            elseif colorName == "Poison" then
                set tt = Texttag.unit("-" + Num.ri2s(dmg), victim, .zOffset, .text_size) 
                call Texttag.colorpercent(tt, 10.00, 100, 10.00, 0) 
            elseif colorName == "Fire" then
                set tt = Texttag.unit("-" + Num.ri2s(dmg), victim, .zOffset, .text_size) 
                call Texttag.colorpercent(tt, 100.00, 20.00, 0.00, 0) 
            elseif colorName == "Lightning" then
                set tt = Texttag.unit("-" + Num.ri2s(dmg), victim, .zOffset, .text_size) 
                call Texttag.colorpercent(tt, 93.00, 93.00, 0, 0)
            elseif colorName == "Chao" then
                set tt = Texttag.unit("-" + Num.ri2s(dmg), victim, .zOffset, .text_size) 
                call Texttag.colorpercent(tt, 100.00, 24.00, 59, 0)
            elseif colorName == "Thorn" then
                set tt = Texttag.unit("-" + Num.ri2s(dmg), victim, .zOffset, .text_size) 
                call Texttag.colorpercent(tt, 54.00, 17.00, 89, 0)
            elseif colorName == "Crit" then
                set tt = Texttag.unit("-" + Num.ri2s(dmg), victim, .zOffset, .text_size) 
                call Texttag.colorpercent(tt, 89.00, 51.00, 6.00, 0)
            endif
        endif
       
        if colorName == "Miss" then
            set tt = Texttag.unit("Miss !", victim, .zOffset, .text_size) 
            call Texttag.colorpercent(tt, 30.00, 74.00, 20.00, 0) 
        elseif colorName == "Block" then
            if Boo.ishero(victim)  then 
                set tt = Texttag.unit("Block !", victim, .zOffset, .text_size) 
                call Texttag.colorpercent(tt, 70.00, 70.00, 70.00, 0) 
            endif
        elseif colorName == "Heal" and dmg > 0 then
            if Unit.haveabi(victim, 'B01K') or Unit.haveabi(victim, 'B01L') then 
                set dmg2 = dmg / 2
            else
                set dmg2 = dmg
            endif
            if Bonus.stat_real_bonus_rate(caster, Bonus.HealBonus, 0) > 0 then 
                call Unit.setlife(victim, Unit.life(victim) + (dmg2 * (1 + Bonus.stat_real_bonus_rate(caster, Bonus.HealBonus, 0))) )
            else
                call Unit.setlife(victim, Unit.life(victim) + dmg2)
            endif
            if dmg2 > 1 then 
                
                if Bonus.stat_int(caster, Bonus.HealBonus, 0) > 0 then 
                    set tt = Texttag.unit("+" + Num.ri2s(dmg2 * (1 + Bonus.stat_real_bonus_rate(caster, Bonus.HealBonus, 0))) + "(" + I2S(Bonus.stat_int(caster, Bonus.HealBonus, 0)) + " %)", victim, .zOffset, .text_size) 
                else
                    set tt = Texttag.unit("+" + Num.ri2s(dmg2), victim, .zOffset, .text_size) 

                endif
                call Texttag.colorpercent(tt, 0, 60, 0, 0) 
            endif
        elseif colorName == "HealMana" and dmg > 0  then
            call Unit.setmana(victim, Unit.mana(victim) + dmg)
            if dmg > 1 then 
                set tt = Texttag.unit("+" + Num.ri2s(dmg), victim, .zOffset, .text_size) 
                call Texttag.colorpercent(tt, 0, 0, 153, 0) 
            endif
        endif
        if tt != null then 
            call SetTextTagVisibility(tt, false)
            call.setting(tt, caster, victim) 
            if(colorName == "HealMana") then 
                call Texttag.velocity(tt, .speed, .angle + 60) 
            endif 
            if(colorName == "Crit") then 
                call Texttag.text(tt, Num.ri2s(dmg), .text_size + 3) 
            endif 
        endif 
        set tt = null
        return false 
    endmethod 
endstruct 
