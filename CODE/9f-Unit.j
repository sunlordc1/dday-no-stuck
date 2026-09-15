//Call struct then Unit instead UNIT        
struct Unit 
    //=================Position================================           
    static method x takes unit u returns real 
        return GetUnitX(u) 
    endmethod 
    static method y takes unit u returns real 
        return GetUnitY(u) 
    endmethod 
    static method a takes unit u returns real 
        return GetUnitFacing(u) 
    endmethod 
    static method z takes unit u returns real 
        return GetUnitFlyHeight(u) 
    endmethod 
    static method face takes unit u, real a returns nothing 
        call SetUnitFacing(u, a) 
    endmethod 
    static method setx takes unit u, real x returns nothing 
        call SetUnitX(u, x) 
    endmethod 
    static method sety takes unit u, real y returns nothing 
        call SetUnitY(u, y) 
    endmethod 
    // Set Flying Height (Required unit have crow form or fly)              
    // Use: Unit.setz(u,height)              
    static method setz takes unit u, real height returns nothing 
        call SetUnitFlyHeight(u, height, 0.) 
    endmethod 
    
        
    //==================Movespeed=========================           
    // Reset MoveSpeed of unit to default           
    method resetms takes unit whichUnit returns nothing 
        call SetUnitMoveSpeed(whichUnit, GetUnitDefaultMoveSpeed(whichUnit)) 
    endmethod 
    // Get MoveSpeed of unit           
    // Use: Unit.ms(u)             
    method ms takes unit whichUnit returns real 
        return GetUnitMoveSpeed(whichUnit) 
    endmethod 
    
    //==================Vertex Color=========================           
    //Reset Vertex Color [Change Color and Alpha of Unit]           
    //Use:  Unit.resetvertexcolor(u)            
    static method resetvertexcolor takes unit u returns nothing 
        call SetUnitVertexColor(u, 255, 255, 255, 255) 
    endmethod 
    
    //Set Vertex Color [Change Color and Alpha of Unit]           
    //Use:  Unit.vertexcolor(u)            
    static method vertexcolor takes unit u, integer red, integer green, integer blue, integer alpha returns nothing 
        call SetUnitVertexColor(u, red, green, blue, alpha) 
    endmethod 
    
    //==================Misc=========================         
    //Get scaling value of unit      
    static method size takes unit u returns real 
        return BlzGetUnitRealField(u, UNIT_RF_SCALING_VALUE) 
    endmethod 
    //Set scaling value of unit      
    static method setsize takes unit u, real r returns nothing 
        call BlzSetUnitRealField(u, UNIT_RF_SCALING_VALUE, r) 
        call SetUnitScale(u, r, r, r) 
    endmethod 
    //Get level unit or hero       
    static method lv takes unit u returns integer 
        local integer i = GetHeroLevel(u) 
        if i < 0 then 
            return GetUnitLevel(u) 
        endif 
        return i 
    endmethod 
    static method lvr takes unit u returns real 
        local integer i = GetHeroLevel(u) 
        if i < 0 then 
            return I2R(GetUnitLevel(u))
        endif 
        return I2R(i) 
    endmethod 
    static method disablemove takes unit u returns nothing
        call SetUnitPropWindow(u, 0)
    endmethod
     
    static method enabledmove takes unit u returns nothing
        call SetUnitPropWindow(u, GetUnitDefaultPropWindow(u) * bj_DEGTORAD)
    endmethod
    
    static method disablecontrol takes unit u returns nothing
        local integer id = GetHandleId(u)
        local real r = LoadReal(ht, id, 0x881)
        if r == 0 then
            call SaveReal(ht, id, 0x881, GetUnitTurnSpeed(u))
        endif
        // call SetUnitTurnSpeed(u, 0)
    endmethod
    static method enablecontrol takes unit u returns nothing
        local integer id = GetHandleId(u)
        local real r = LoadReal(ht, id, 0x881)
        if r != 0 then
            // call SetUnitTurnSpeed(u, r)
        else
            // call SetUnitTurnSpeed(u, GetUnitTurnSpeed(u))
        endif
    endmethod
    // Get Collision of unit u              
    // Use: Unit.collision(u)              
    method collision takes unit u returns real 
        local real l = 0 
        local real h = 300 
        local real m = 150 
        local real nnm = 0 
        local real x = GetUnitX(u) 
        local real y = GetUnitY(u) 
        loop 
            if(IsUnitInRangeXY(u, x + m, y, 0)) then 
                set l = m 
            else 
                set h = m 
            endif 
            set nnm = (l + h) / 2 
            exitwhen nnm + .001 > m and nnm - .001 < m 
            set m = nnm 
        endloop 
        return R2I(m * 10) / 10. 
    endmethod 
    //==================== Ability =======================       
    static method abilv takes unit u, integer a returns integer 
        local integer i = 0 
        set i = GetUnitAbilityLevel(u, a) 
        return i 
    endmethod 
    static method setabilv takes unit u, integer a, integer lv returns nothing 
        call SetUnitAbilityLevel(u, a, lv) 
    endmethod 
    static method removeabi takes unit u, integer a returns nothing 
        call UnitRemoveAbility(u, a) 
    endmethod 
    static method haveabi takes unit u, integer a returns boolean 
        return GetUnitAbilityLevel(u, a) > 0 
    endmethod 
    static method addabi takes unit u, integer a returns nothing 
        call UnitAddAbility(u, a) 
        call UnitMakeAbilityPermanent(u, true, a) 
    endmethod 
    static method hideabi takes unit u, integer a returns nothing 
        call BlzUnitHideAbility(u, a, true) 
    endmethod 
    static method showabi takes unit u, integer a returns nothing 
        call BlzUnitDisableAbility(u, a, false, false) 
    endmethod 
    static method disabledabi takes unit u, integer a returns nothing 
        call BlzUnitDisableAbility(u, a, true, false) 
    endmethod 
    static method timelife takes unit u , real t returns nothing 
        call UnitApplyTimedLife(u, 'BTLF', t)
    endmethod
    
    //===========================STATS========================    
    // static method damage_reduce takes unit u returns real 
    //     return(BlzGetUnitArmor(u) * ARMOR_CONSTANT) / (1 + ARMOR_CONSTANT * BlzGetUnitArmor(u)) 
    // endmethod 
    static method mana takes unit u returns real 
        return GetUnitState(u, UNIT_STATE_MANA) 
    endmethod 
    static method life takes unit u returns real 
        return GetUnitState(u, UNIT_STATE_LIFE) 
    endmethod 
    static method maxlife takes unit u returns real 
        return GetUnitState(u, UNIT_STATE_MAX_LIFE) 
    endmethod 
    static method maxmana takes unit u returns real 
        return GetUnitState(u, UNIT_STATE_MAX_MANA) 
    endmethod 
    static method setlife takes unit v, real newVal returns nothing 
        call SetUnitState(v, UNIT_STATE_LIFE, newVal) 
    endmethod 
    static method addlife takes unit v, real newVal returns nothing 
        call SetUnitState(v, UNIT_STATE_LIFE, GetUnitState(v, UNIT_STATE_LIFE) + newVal) 
    endmethod 
    static method setmana takes unit v, real newVal returns nothing 
        call SetUnitState(v, UNIT_STATE_MANA, newVal) 
    endmethod 
    static method addmana takes unit v, real newVal returns nothing 
        call SetUnitState(v, UNIT_STATE_MANA, GetUnitState(v, UNIT_STATE_MANA) + newVal) 
    endmethod 

    // call Unit.setdmg(u,v)
    // call Unit.setmaxlife(u,v)
    // call Unit.setarmor(u,v)
    // call Unit.sethprg(u,v)
    // call Unit.setmprg(bj_lastCreatedUnit,3.00)
    static method sethprg takes unit v, real newVal returns nothing 
        call BlzSetUnitRealFieldBJ( v, UNIT_RF_HIT_POINTS_REGENERATION_RATE, newVal  )
    endmethod 
    static method setmprg takes unit v, real newVal returns nothing 
        call BlzSetUnitRealFieldBJ( v, UNIT_RF_MANA_REGENERATION, newVal  )
    endmethod 
    static method setdmg takes unit v, integer newVal returns nothing 
        call BlzSetUnitBaseDamage( v, newVal, 0 )
    endmethod 
    static method setmaxlife takes unit v, real newVal returns nothing 
        call BlzSetUnitMaxHP( v, R2I(newVal))
        call BlzSetUnitRealFieldBJ( v, UNIT_RF_HP, newVal  )
        call .setlife(v, newVal)
    endmethod 
    static method setarmor takes unit v, real newVal returns nothing 
        call BlzSetUnitArmor( v, newVal)
        call BlzSetUnitRealFieldBJ( v, UNIT_RF_DEFENSE, newVal)
    endmethod
    static method armor takes unit v returns real 
        return BlzGetUnitArmor(v)
    endmethod
    //Status   
    static method ispause takes unit u returns boolean 
        return IsUnitPaused(u) 
    endmethod 
    //Item   
    //Return inventory size of unit (0-6) 0 is not have
    static method invsize takes unit u returns integer 
        return UnitInventorySize(u) 
    endmethod 
    static method haveitem takes unit u , integer i returns boolean 
        return UnitHasItemOfTypeBJ(u, i)
    endmethod

endstruct