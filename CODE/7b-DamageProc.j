




struct Proc 
    static method BSTAT takes nothing returns nothing 
        local integer lv = 0
        local integer i = 0
        local real r = 0.00
        if Boo.ishero( DMGSTAT.caster) then 
            set DMGSTAT.spell_bonus = DMGSTAT.spell_bonus + (Hero.intr(DMGSTAT.caster) * 0.005)
        endif
    endmethod 
    static method SpellStat takes nothing returns nothing 
        if IsUnitType(DMGSTAT.caster, UNIT_TYPE_HERO) then 
        endif 
    endmethod 
     
    static method onHit takes nothing returns nothing 
  
  
    endmethod 
    static method onCritical takes nothing returns nothing 
 
  
    endmethod 
    static method onStuck takes nothing returns nothing 
        local real r = 0 
        local string p = "" 
      
    endmethod 
    static method onEvasion takes nothing returns nothing 
        local real r = 0 
        local string p = "" 
      
        
    endmethod 

    static method onBlock takes nothing returns nothing 
        local real r = 0 
        local string p = "" 
    
    endmethod 
    static method cloneBuff takes unit caster , unit dummy returns nothing 
       
    endmethod
    static method onAfterDamage takes nothing returns nothing 
      
        
    endmethod
    static method onLastHit takes nothing returns nothing 
      
   
    endmethod
    
    static method onStun takes unit target, real duration returns nothing 
      
    endmethod
    static method onSlow takes unit target, real duration, real move_rate, real attack_rate returns nothing
    
    endmethod

    static method onSpell takes unit caster , unit target , real targetX, real targetY, integer id , ability abi returns nothing 
     
    endmethod 
endstruct 

