struct Interval 
    static integer times = 0 
    static timer t
    static boolean endgame = false
    static method periodic takes integer interval returns boolean 
        if ModuloInteger(Interval.times, interval) == 0 then 
            return true
        endif
        return false
    endmethod
    static method elapsed takes integer interval returns boolean 
        if Interval.times == interval then 
            return true
        endif
        return false
    endmethod
    static method tick takes nothing returns nothing 
        local integer i = 0
        set.times =.times + 1 
        if .times == 1 then 
            call DummyX.setup_dummy()
         
        endif
        if ModuloInteger(.times, 180) == 0 then 
            call CreateItem('I03B', GetRectCenterX(gg_rct_LightBounty), GetRectCenterY(gg_rct_LightBounty))
            call CreateItem('I03B', GetRectCenterX(gg_rct_DarkBounty), GetRectCenterY(gg_rct_DarkBounty))
            call CreateItem('I03C', GetRectCenterX(gg_rct_DarkBounty2), GetRectCenterY(gg_rct_DarkBounty2))
            call CreateItem('I03C', GetRectCenterX(gg_rct_LightBounty2), GetRectCenterY(gg_rct_LightBounty2))
        endif

   

        if Interval.endgame then 
            call DestroyTimer(Interval.t)
            // call ConditionalTriggerExecute( gg_trg_Initialize_Rematch )
        endif
    endmethod 
    static method start takes nothing returns nothing 
        set Interval.t = CreateTimer()
        call TimerStart( Interval.t, 1, true, function thistype.tick) 
    endmethod 
endstruct