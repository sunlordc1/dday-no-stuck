struct Eff
    static method new takes string path, real x, real y, real z returns effect 
        set bj_eff = AddSpecialEffect(path, x, y) 
        call BlzSetSpecialEffectZ(bj_eff, z) 
        return bj_eff 
    endmethod
    static method add takes unit u, string s returns effect //su dung attach effect vao unit        
        return AddSpecialEffectTarget(s, u, "chest") 
    endmethod
    static method nova takes string s, real x, real y returns nothing //nova effect of XY        
        call DestroyEffect(AddSpecialEffect(s, x, y)) 
    endmethod
    static method remove takes effect e returns nothing //nova effect attach unit chest  
        if e != null then       
            call DestroyEffect(e) 
        endif
    endmethod
    static method attach takes string s, unit u , string attach returns nothing //nova effect attach unit chest        
        call DestroyEffect(AddSpecialEffectTarget(s, u, attach)) 
    endmethod
    static method pos takes effect e, real x, real y, real z returns nothing //move XYZ        
        call BlzSetSpecialEffectPosition(e, x, y, z) 
    endmethod
    static method angle takes effect e, real angle returns nothing //set goc'        
        call BlzSetSpecialEffectYaw(e, angle * bj_DEGTORAD) 
    endmethod
    static method pitch takes effect e, real angle returns nothing //set do ngieng        
        call BlzSetSpecialEffectPitch(e, angle * bj_DEGTORAD) 
    endmethod
    static method roll takes effect e, real angle returns nothing //set do lang        
        call BlzSetSpecialEffectRoll(e, angle * bj_DEGTORAD) 
    endmethod
    static method size takes effect e, real size returns nothing //set size        
        call BlzSetSpecialEffectScale(e, size) 
    endmethod
    static method height takes effect e, real height returns nothing //255        
        call BlzSetSpecialEffectHeight(e, height) 
    endmethod
    static method speed takes effect e, real speed returns nothing //animation speed        
        call BlzSetSpecialEffectTimeScale(e, speed) 
    endmethod
    static method alpha takes effect e, integer alpha returns nothing //255        
        call BlzSetSpecialEffectAlpha(e, alpha) 
    endmethod
    static method pc takes effect e, player p returns nothing //color player        
        call BlzSetSpecialEffectColorByPlayer(e, p) 
    endmethod
    static method color takes effect e, integer r, integer g, integer b returns nothing //color R G B        
        call BlzSetSpecialEffectColor(e, r, g, b) //color        
    endmethod

    static method time takes effect e, real time returns nothing //destroy        
        call BlzSetSpecialEffectTime(e, time / 32) 
    endmethod
    static method setanimtype takes effect e , animtype aat returns nothing 
        call BlzPlaySpecialEffect(e, aat)
    endmethod
endstruct


struct ExRT 
    private integer i 
    private effect ex 
    private static method update takes nothing returns nothing 
        local thistype this = runtime.get() 
        set.i = i - 1 
        if( .i < 0) then 
            call Eff.pos( .ex, 0, 2180, - 100)
            call Eff.size( .ex, 0.001)
            call DestroyEffect( .ex) 
            call runtime.end()
            call this.destroy()
        endif 
    endmethod 
    static method runrt takes effect eff , integer i returns nothing
        local thistype this = thistype.create() 
        set.i = i
        set.ex = eff
        call runtime.new(this, P32, true, function thistype.update)
    endmethod
endstruct
struct QueueAnim 
    private integer i 
    private integer ida 
    private string anim 
    private unit caster   
    private static method update takes nothing returns nothing 
        local thistype this = runtime.get() 
        set.i = i - 1 
        if( .i < 0) then 
            call SetUnitAnimation(.caster, .anim)
            call runtime.end()
            call this.destroy()
        endif 
    endmethod 
    private static method update2 takes nothing returns nothing 
        local thistype this = runtime.get() 
        set.i = i - 1 
        if( .i < 0) then 
            call SetUnitAnimationByIndex(.caster, .ida)
            call runtime.end()
            call this.destroy()
        endif 
    endmethod 
    static method animrt takes unit caster , integer i, string anim returns nothing
        local thistype this = thistype.create() 
        set.i = i
        set.caster = caster
        set.anim = anim
        call runtime.new(this, P32, true, function thistype.update)
    endmethod
    static method animrt2 takes unit caster , integer i, integer id returns nothing
        local thistype this = thistype.create() 
        set.i = i
        set.caster = caster
        set.ida = id
        call runtime.new(this, P32, true, function thistype.update2)
    endmethod
endstruct


struct Image
    static method NewXY takes string imagePath, real size, real x, real y, real z, boolean showImage returns image
        local image i = CreateImage(imagePath, size, size, 0, x - (size / 2) , y - (size / 2) , z, 0, 0, 0, 2)
        call SetImageRenderAlways(i, true)
        call ShowImage(i, showImage)
        return i
    endmethod
    static method NewLoc takes string imagePath, real size, location whichLocation, real z, boolean showImage returns image
        return.NewXY(imagePath, size, GetLocationX(whichLocation) , GetLocationY(whichLocation) , z, showImage)
    endmethod
endstruct
