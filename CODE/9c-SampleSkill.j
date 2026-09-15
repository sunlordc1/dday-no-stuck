struct SKILL 
    unit caster = null 
    unit target = null 
    unit u = null 
    group g = null 
    damagetype DMG_TYPE = null 
    attacktype ATK_TYPE = null 
    integer time = 0 
    integer time_total = 0 
    real increment = 0.00
    real speed = 0.00 
    real dmg = 0.00 
    real aoe = 0.00 
    real a = 0.00 
    real p = 0.00 
    real x = 0.00 
    real y = 0.00 
    real d = 0.00 
    real xxt = 0.00 
    real yyt = 0.00 
    real z = 0.00 
    real h = 0.00
    integer buff_id 
    integer buff_lv 
    integer buff_dur 

    effect missile = null 
    effect missile2 = null 
    string missile_path = "" 
    real missile_size = 1.00
    real missile_speed = 1.00
    boolean is_touch = false 
    integer count = 0
    image img = null

    lightning light = null 
    string light_name = ""
    lightning light2 = null 
    string light_name2 = ""

    real t = 0.00 // Giá trị tham số (0.0 -> 1.0)
    real startX = 0.00 
    real startY = 0.00 
    real startZ = 0.00 
    real midX = 0.00 
    real midY = 0.00 
    real midZ = 0.00 
    real endX = 0.00  
    real endY = 0.00 
    real endZ = 0.00 
    // method setlight takes real x1, real y1, real z1, real x2, real y2 , real z2 returns nothing 
    //     //"DRAL"
    //     // call AddLightningLoc( "DRAL", GetUnitLoc(GetTriggerUnit()), GetRectCenter(GetPlayableMapRect()) )
    //     // AddLightningEx("DRAL", true,  x1, y1, z1, x2, y2, z2)
    //     // call MoveLightningEx(.light, true, x1, y1, z1, x2, y2, z2)
    // endmethod
    method setxyz takes real x, real y, real z returns nothing 
        set.x = x 
        set.y = y 
        set.z = z 
    endmethod 
    method setxyza takes real targetX, real targetY, real z returns nothing 
        set.x = Unit.x(.caster) 
        set.y = Unit.y(.caster)  
        set.z = z 
        set.a = Math.ab(.x, .y, targetX, targetY)
    endmethod 
    static method Ally takes unit u , unit e returns boolean 
        if not Boo.isdead(e) and IsUnitAlly(u, GetOwningPlayer(e)) and not Boo.isstructure(e)  then 
            return true 
        endif 
        return false
    endmethod
     static method FilterUnit takes unit u, unit e returns boolean 
        if not Boo.isdead(e) and GetUnitState(u, UNIT_STATE_LIFE) > 0  and IsUnitEnemy(u, GetOwningPlayer(e)) and BlzIsUnitInvulnerable(e) == false then 
            return true 
        endif 
        return false
    endmethod
    method Lerp takes real start, real end, real t returns real
        return start + (end - start) * t
    endmethod
    method ParabolicZ takes real t, real height returns real
        return 4 * height * t * (1 - t)
    endmethod
    // === Bezier helper ===
    method QuadraticBezier takes real t, real pp1, real pp2, real pp3 returns real
        return Pow(1 - t, 2) * pp1 + 2 * (1 - t) * t * pp2 + Pow(t, 2) * pp3
    endmethod
    method QuadraticBezierDeriv takes real t, real pp1, real pp2, real pp3 returns real
        return 2.0 * (1.0 - t) * (pp2 - pp1) + 2.0 * t * (pp3 - pp2)
    endmethod
    static method AoE takes unit caster, real x, real y , real aoe , real dmg, string nova_path, real nova_size, string attach_path , attacktype atk_type, damagetype dmg_type returns nothing 
        local group g = null 
        local unit e = null 
        if nova_path != "" then 
            set bj_lastCreatedEffect = Eff.new(nova_path, x, y, Math.pz(x, y) + 5)
            call Eff.size(bj_lastCreatedEffect, nova_size)
            call DestroyEffect(bj_lastCreatedEffect)
        endif
        set g = CreateGroup() 
        call Group.enum(g, x, y, aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null )
            if.FilterUnit( caster, e) then 
                if attach_path != "" then 
                    call Eff.attach( attach_path, e, "chest")
                endif
                call UnitDamageTarget(caster, e, dmg, true, true, atk_type, dmg_type, null) 
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 
    endmethod
    private static method aoe_delay takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster) then 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif

        set.time = .time - 1 
        if.time <= 0  then 
            if .missile_path != "" then 
                set bj_lastCreatedEffect = Eff.new(.missile_path, .x, .y, Math.pz(.x, .y) + 5)
                call Eff.size(bj_lastCreatedEffect, .missile_size)
                call DestroyEffect(bj_lastCreatedEffect)
            endif
            set g = CreateGroup() 
            call Group.enum(g, .x, .y, .aoe) 
            loop 
                set e = FirstOfGroup(g) 
                exitwhen(e == null )
                if.FilterUnit( .caster, e) then 
                    if .light_name != "" then 
                        call Eff.attach( .light_name, e, "chest")
                    endif
                    call UnitDamageTarget(.caster, e, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
                endif 
                call Group.remove(e, g) 
            endloop 
            call Group.release(g) 
            set e = null 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    static method AoEDelay takes unit caster, real x, real y , real aoe , real dmg, string nova_path, real nova_size, string attach_path , attacktype atk_type, damagetype dmg_type , integer time returns nothing 
        local thistype this = thistype.create()
        set .caster = caster
        set .x = x
        set .y = y
        set .aoe = aoe
        set .dmg = dmg
        set .missile_path = nova_path
        set .missile_size = nova_size
        set .light_name = attach_path
        set .ATK_TYPE = atk_type
        set .DMG_TYPE = dmg_type
        set .time = time
        call runtime.new(this, P32, true, function thistype.aoe_delay) 
    endmethod
endstruct 

struct missile_Touch extends SKILL 
    string attach = ""
    string attach_path = ""
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster) then 
            call DestroyEffect( .missile) 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        set.x = Math.ppx( .x, .speed, .a) 
        set.y = Math.ppy( .y, .speed, .a) 
        call Eff.angle( .missile, .a) 
        call Eff.pos( .missile, .x, .y, Math.pz( .x, .y) + .z) 

        set g = CreateGroup() 
        call Group.enum(g, .x, .y, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null or.is_touch == true)
            if not.is_touch and.FilterUnit( .caster, e) then 
                set.is_touch = true 
                if .attach_path != "" then 
                    call Eff.attach( .attach_path, e, .attach)
                endif
                call UnitDamageTarget(.caster, e, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        set.time = .time - 1 
        if.time <= 0 or.is_touch then 
            call DestroyEffect( .missile) 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        // set mt = missile_Touch.create()
        set.missile = Eff.new( .missile_path, .x, .y, Math.pz( .x, .y) + .z) 
        call Eff.size( .missile, .missile_size) 
        call Eff.angle( .missile, .a) 
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct
struct missile_Touch_Nova extends SKILL 
    real aoe_nova = 0
    string nova_path = "Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl"
    string attach_path = ""
    real nova_size = 1.00
    string attach = ""
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster) then 
            call DestroyEffect( .missile) 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        set.x = Math.ppx( .x, .speed, .a) 
        set.y = Math.ppy( .y, .speed, .a) 
        call Eff.angle( .missile, .a) 
        call Eff.pos( .missile, .x, .y, Math.pz( .x, .y) + .z) 

        set g = CreateGroup() 
        call Group.enum(g, .x, .y, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null or.is_touch == true)
            if not.is_touch and.FilterUnit( .caster, e) then 
                set.is_touch = true 
                call Eff.attach( .attach_path, e, .attach)
                call UnitDamageTarget(.caster, e, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        set.time = .time - 1 
        if.time <= 0 or.is_touch then 
            call DestroyEffect( .missile) 
            set bj_lastCreatedEffect = AddSpecialEffect(.nova_path, .x, .y) 
            call Eff.size( bj_lastCreatedEffect, .nova_size) 
            call DestroyEffect(bj_lastCreatedEffect)
            
            set g = CreateGroup() 
            call Group.enum(g, .x, .y, .aoe_nova) 
            loop 
                set e = FirstOfGroup(g) 
                exitwhen(e == null )
                if .FilterUnit( .caster, e) then 
                    call UnitDamageTarget(.caster, e, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
                endif 
                call Group.remove(e, g) 
            endloop 
            call Group.release(g) 
            set e = null 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        // set mt = missile_Touch.create()
        set.missile = Eff.new( .missile_path, .x, .y, Math.pz( .x, .y) + .z) 
        call Eff.size( .missile, .missile_size) 
        call Eff.angle( .missile, .a) 
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct


struct missile_Pierce extends SKILL 
    string attach = ""
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster) then 
            call DestroyEffect( .missile) 
            if .g != null then 
                call Group.release(.g)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        set.x = Math.ppx( .x, .speed, .a) 
        set.y = Math.ppy( .y, .speed, .a) 
        call Eff.angle( .missile, .a) 
        call Eff.pos( .missile, .x, .y, Math.pz( .x, .y) + .z) 

        set g = CreateGroup() 
        call Group.enum(g, .x, .y, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null)
            if not IsUnitInGroup(e, .g) and.FilterUnit( .caster, e) then 
                call Group.add(e, .g)
                call Eff.attach(.attach, e, "chest")
                call UnitDamageTargetBJ(.caster, e, .dmg, .ATK_TYPE, .DMG_TYPE) 
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        set.time = .time - 1 
        if.time <= 0  then 
            if .g != null then 
                call Group.release(.g)
            endif
            call DestroyEffect( .missile) 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        set.g = CreateGroup()
        set.missile = Eff.new( .missile_path, .x, .y, Math.pz( .x, .y) + .z) 
        call Eff.size( .missile, .missile_size) 
        call Eff.angle( .missile, .a) 
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct
struct DelayDamage extends SKILL 
    string attach_path = ""
    string attach_name = ""
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster) or Boo.isdead(.target) then 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        set.time = .time - 1 
        if.time <= 0  then 
            if .attach_path != "" then
                call Eff.attach(.attach_path, .target, .attach_name)
            endif
            call UnitDamageTargetBJ(.caster, .target, .dmg, .ATK_TYPE, .DMG_TYPE) 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct
// struct missile_Find extends SKILL 
//     private static method spell_update takes nothing returns nothing 
//         local thistype this = runtime.get() 
//         local group g = null 
//         local unit e = null 
//         if Boo.isdead( .caster)  or Boo.isdead(.target) then 
//             call DestroyEffect( .missile) 
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance 
//         endif
//         set .a = Math.ab(.x, .y, GetUnitX(.target), GetUnitY(.target))
//         set.x = Math.ppx( .x, .speed, .a) 
//         set.y = Math.ppy( .y, .speed, .a) 
//         call Eff.angle( .missile, .a) 
//         call Eff.pos( .missile, .x, .y, Math.pz( .x, .y) + .z) 

//         set g = CreateGroup() 
//         call Group.enum(g, .x, .y, .aoe) 
//         loop 
//             set e = FirstOfGroup(g) 
//             exitwhen(e == null or.is_touch == true)
//             if not.is_touch and.FilterUnit( .caster, e) and e ==.target then 
//                 set.is_touch = true 
//                 call dmg.mag( .caster, e, .DMG_TYPE, .dmg)
//             endif 
//             call Group.remove(e, g) 
//         endloop 
//         call Group.release(g) 
//         set e = null 

//         set.time = .time - 1 
//         if.time <= 0 or.is_touch then 
//             call DestroyEffect( .missile) 
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance                                                                   
//         endif 
//     endmethod 
//     method spell_now takes nothing returns boolean 
//         set.missile = Eff.new( .missile_path, .x, .y, Math.pz( .x, .y) + .z) 
//         call Eff.size( .missile, .missile_size) 
//         call Eff.angle( .missile, .a) 
//         call runtime.new(this, P32, true, function thistype.spell_update) 
//         return false 
//     endmethod 
// endstruct
struct missile_Rain extends SKILL
    real gravity = 5.00
    string nova_path = ""
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster) then 
            call DestroyEffect( .missile)
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        set.z = .z - .gravity
        // call BJDebugMsg(R2S(.z))
        call BlzSetSpecialEffectZ( .missile, Math.pz( .x, .y) + .z) 
        if.z <= 0 then 
            if.nova_path != "" then 
                call Eff.nova( .nova_path, .x, .y)
            endif
            set g = CreateGroup() 
            call Group.enum(g, .x, .y, .aoe) 
            loop 
                set e = FirstOfGroup(g) 
                exitwhen e == null 
                if.FilterUnit( .caster, e) then 
                    call UnitDamageTarget(.caster, e, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
                endif 
                call Group.remove(e, g) 
            endloop 
            call Group.release(g) 
            set e = null 
            call BlzSetSpecialEffectPosition(.missile, .x, .y, Math.pz( .x, .y)) 
            call DestroyEffect( .missile)

            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance   
        endif
      
    endmethod 
    method spell_now takes nothing returns boolean 
        set.missile = Eff.new( .missile_path, .x, .y, Math.pz( .x, .y) + .z)
        call Eff.size( .missile, .missile_size) 
        set.p = 180
        call Eff.pitch( .missile, .p)
        call Eff.angle( .missile, .a)
        call Eff.speed( .missile, .missile_speed)
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct

// //🎀 Gán u là một unit missile, cho nó di chuyển tới target chỉ định và gây dmg kết thúc
// struct missile_Unit_Find extends SKILL 
//     private static method spell_update takes nothing returns nothing 
//         local thistype this = runtime.get() 
//         local group g = null 
//         local unit e = null 
//         if Boo.isdead( .caster)  or Boo.isdead(.target) then 
//             call RemoveUnit(.u)
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance 
//         endif
//         set .a = Math.ab(.x, .y, GetUnitX(.target), GetUnitY(.target))
//         set .speed = .speed + .increment
//         set.x = Math.ppx( .x, .speed, .a) 
//         set.y = Math.ppy( .y, .speed, .a) 
//         call SetUnitFacing(.u, .a)
//         call SetUnitX(.u, .x)
//         call SetUnitY(.u, .y)
//         call SetUnitFlyHeight(.u, Math.pz( .x, .y) + .z, 0)
//         set g = CreateGroup() 
//         call Group.enum(g, .x, .y, .aoe) 
//         loop 
//             set e = FirstOfGroup(g) 
//             exitwhen(e == null or.is_touch == true)
//             if not.is_touch and.FilterUnit( .caster, e) and e ==.target then 
//                 set.is_touch = true 
//                 call Eff.chest(.missile_path, e)
//                 call dmg.mag( .caster, e, .DMG_TYPE, .dmg)
//             endif 
//             call Group.remove(e, g) 
//         endloop 
//         call Group.release(g) 
//         set e = null 

//         set.time = .time - 1 
//         if.time <= 0 or.is_touch then 
//             call RemoveUnit(.u)
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance                                                                   
//         endif 
//     endmethod 
//     method spell_now takes nothing returns boolean 
//         call SetUnitPathing(.u, false)
//         call UnitAddAbility(.u, 'Arav')
//         call UnitRemoveAbility(.u, 'Arav')
//         call runtime.new(this, P32, true, function thistype.spell_update) 
//         return false 
//     endmethod 
// endstruct

//🎀 Bẫy sau X giây tự phát nổ
struct Trap_AoE_Auto extends SKILL 
    string nova_path = ""
    string attach_path = ""
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster)  then 
        
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif

        set g = CreateGroup() 
        call Group.enum(g, .x, .y, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null)
            if .FilterUnit( .caster, e) then 
                set.is_touch = true 
                if .attach_path != "" then
                    call Eff.attach(.attach_path, e, "chest")
                endif
                call UnitDamageTargetBJ(.caster, e, .dmg, .ATK_TYPE, .DMG_TYPE) 
                // call dmg.mag( .caster, e, .DMG_TYPE, .dmg)
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        if .is_touch then 
            call Eff.nova(.nova_path, .x, .y)
        endif

        set.time = .time - 1 
        if .time <= 0 then 
            set g = CreateGroup() 
            call Group.enum(g, .x, .y, .aoe) 
            loop 
                set e = FirstOfGroup(g) 
                exitwhen(e == null)
                if .FilterUnit( .caster, e) then 
                    set.is_touch = true 
                    call Eff.attach(.attach_path, e, "chest")
                    call UnitDamageTargetBJ(.caster, e, .dmg, .ATK_TYPE, .DMG_TYPE) 
                    // call dmg.mag( .caster, e, .DMG_TYPE, .dmg)
                endif 
                call Group.remove(e, g) 
            endloop 
            call Group.release(g) 
            set e = null 
            call Eff.nova(.nova_path, .x, .y)
        endif
        if.time <= 0 or.is_touch then 
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        set.missile = Eff.new( .missile_path, .x, .y, Math.pz( .x, .y) + .z) 
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct
//🎀 Gọi ra 1 cái bẫy tồn tại X giây, khi có kẻ địch trong phạm vi thì phát nổ
struct Trap_AoE extends SKILL 
    string nova_path = ""
    string attach_path = ""
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster)  then 
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif

        set g = CreateGroup() 
        call Group.enum(g, .x, .y, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null)
            if .FilterUnit( .caster, e) then 
                set.is_touch = true 
                call Eff.attach(.attach_path, e, "chest")
                // call dmg.mag( .caster, e, .DMG_TYPE, .dmg)
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        if .is_touch then 
            call Eff.nova(.nova_path, .x, .y)
        endif

        set.time = .time - 1 
        if.time <= 0 or.is_touch then 
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        set.missile = Eff.new( .missile_path, .x, .y, Math.pz( .x, .y) + .z) 
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct

// //🎀 AoE DPS : Mỗi X time gọi ra effect và gây dmg aoe | tick: Mỗi x time sẽ gọi , increment : Giảm x time mỗi lần gọi
struct AoE_DPS extends SKILL 
    string nova_path = ""
    string attach_path = ""
    integer tick = 0
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster)  then 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        if ModuloInteger(.time , .tick) == 0 then 
            set .tick = .tick - R2I(.increment)
            set .missile = Eff.new(.missile_path, .x, .y, Math.pz(.x, .y) +.z)
            call Eff.size(.missile, .missile_size)
            call DestroyEffect(.missile)
            set g = CreateGroup() 
            call Group.enum(g, .x, .y, .aoe) 
            loop 
                set e = FirstOfGroup(g) 
                exitwhen(e == null)
                if .FilterUnit( .caster, e)  then 
                    if .attach_path != "" then 
                        call Eff.attach(.attach_path, e, "chest")
                    endif
                    call UnitDamageTarget(.caster, e, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
                endif 
                call Group.remove(e, g) 
            endloop 
            call Group.release(g) 
            set e = null 
        endif

        set.time = .time - 1 
        if.time <= 0 then 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct
//DPS nhưng reset, mỗi khi join khu vực sẽ ăn dmg, reset mỗi tick
struct AoE_DPS_Reset extends SKILL 
    string nova_path = ""
    string attach_path = ""
    integer tick = 0
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster)  then 
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            if .g != null then 
                call Group.release(.g)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif

        set g = CreateGroup() 
        call Group.enum(g, .x, .y, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null)
            if not IsUnitInGroup(e, .g) and .FilterUnit( .caster, e)  then 
                call Group.add(e, .g)
                call UnitDamageTarget(.caster, e, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
                if .attach_path != "" then 
                    call Eff.attach(.attach_path, e, "chest")
                endif
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        if ModuloInteger(.time , .tick) == 0 then 
            set .tick = .tick - R2I(.increment)
            if .g != null then 
                call Group.release(.g)
            endif
            set .g = CreateGroup()
        endif

        set.time = .time - 1 
        if.time <= 0 then 
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            if .g != null then 
                call Group.release(.g)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        set .g = CreateGroup()
        set .missile = Eff.new(.missile_path, .x, .y, Math.pz(.x, .y) +.z)
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct
// //🎀 DPS : Mỗi X time gọi ra effect và gây dmg target | tick: Mỗi x time sẽ gọi , increment : Giảm x time mỗi lần gọi
// struct DPS extends SKILL 
//     string nova_path = ""
//     string attach_path = ""
//     integer tick = 0
//     private static method spell_update takes nothing returns nothing 
//         local thistype this = runtime.get() 
//         local group g = null 
//         local unit e = null 
//         if Boo.isdead( .caster)  then 
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance 
//         endif
//         if ModuloInteger(.time , .tick) == 0 then 
//             set .tick = .tick - R2I(.increment)
//             call Eff.chest(.attach_path, .target)
//             call dmg.mag( .caster, .target, .DMG_TYPE, .dmg)
//         endif

//         set.time = .time - 1 
//         if.time <= 0 then 
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance                                                                   
//         endif 
//     endmethod 
//     method spell_now takes nothing returns boolean 
//         call runtime.new(this, P32, true, function thistype.spell_update) 
//         return false 
//     endmethod 
// endstruct
// //Gây sát thương đơn lẻ lên target sau X giây
struct DE extends SKILL 
    string attach_path = ""
    integer tick = 0
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster)  then 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        set.time = .time - 1 
        if.time <= 0 then 
            call Eff.attach(.attach_path, .target, "chest")
            call UnitDamageTarget(.caster, .target, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct
// //🎀 missile_Nova: Di chuyển missile từ caster tới vị trí chỉ định và gây sát thương sau khi tới vị trí chỉ định
// struct missile_Nova extends SKILL 
//     string nova_path = "Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl"
//     string attach_path = ""
//     real nova_size = 1.00
//     private static method spell_update takes nothing returns nothing 
//         local thistype this = runtime.get() 
//         local group g = null 
//         local unit e = null 
//         if Boo.isdead( .caster)  then 
//                 if .missile != null then 
//call DestroyEffect(.missile)
//endif
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance 
//         endif

//         set.x = Math.ppx( .x, .speed, .a) 
//         set.y = Math.ppy( .y, .speed, .a) 
//         call Eff.angle( .missile, .a) 
//         call Eff.pos( .missile, .x, .y, Math.pz( .x, .y) + .z) 

    

//         set.time = .time - 1 
//         if.time <= 0 then 
//                 if .missile != null then 
//call DestroyEffect(.missile)
//endif

//             set bj_lastCreatedEffect = AddSpecialEffect(.nova_path, .x, .y) 
//             call Eff.size( bj_lastCreatedEffect, .nova_size) 
//             call DestroyEffect(bj_lastCreatedEffect)

//             set g = CreateGroup() 
//             call Group.enum(g, .x, .y, .aoe) 
//             loop 
//                 set e = FirstOfGroup(g) 
//                 exitwhen(e == null )
//                 if .FilterUnit( .caster, e) then 
//                     call dmg.mag( .caster, e, .DMG_TYPE, .dmg)
//                 endif 
//                 call Group.remove(e, g) 
//             endloop 
//             call Group.release(g) 
//             set e = null 

//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance                                                                   
//         endif 
//     endmethod 
//     method spell_now takes nothing returns boolean 
//         set .time = R2I( (Math.db (.x, .y, .xxt, .yyt)) / .speed)
//         set.missile = Eff.new( .missile_path, .x, .y, Math.pz( .x, .y) + .z) 
//         call Eff.size( .missile, .missile_size) 
//         call Eff.angle( .missile, .a)  
//         call runtime.new(this, P32, true, function thistype.spell_update) 
//         return false 
//     endmethod 
// endstruct

// //🎀 AoE_Cone : Gây sát thương theo hình nón
// struct AoE_Cone extends SKILL 
//     string nova_path = ""
//     string attach_path = ""
//     real cone_angle = 35
//     method AngleBetween takes real a1, real a2 returns real
//         local real diff = RAbsBJ(a1 - a2)
//         if diff > 180 then
//             set diff = 360 - diff
//         endif
//         return diff
//     endmethod
//     private static method spell_update takes nothing returns nothing 
//         local thistype this = runtime.get() 
//         local group g = null 
//         local unit e = null 
//         if Boo.isdead( .caster)  then 
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance 
//         endif
//         set.time = .time - 1 
//         if.time <= 0 then 
//             call Eff.nova(.nova_path, .x, .y)
//             set g = CreateGroup() 
//             call Group.enum(g, .x, .y, .aoe) 
//             loop 
//                 set e = FirstOfGroup(g) 
//                 exitwhen(e == null)
//                 if .FilterUnit( .caster, e) and .AngleBetween(Math.ab(Math.ppx(.x, - 1 * (.aoe / 2), .a ), Math.ppy(.y, - 1 * (.aoe / 2), .a ), GetUnitX(e), GetUnitY(e)), .a) <= .cone_angle / 2 then 
//                     call Eff.chest(.attach_path, e)
//                     call dmg.mag( .caster, e, .DMG_TYPE, .dmg)
//                 endif 
//                 call Group.remove(e, g) 
//             endloop 
//             call Group.release(g) 
//             set e = null 
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance                                                                   
//         endif 
//     endmethod 
//     method spell_now takes nothing returns boolean 
//         call runtime.new(this, P32, true, function thistype.spell_update) 
//         return false 
//     endmethod 
// endstruct

// //🎀 VFX_Unit_Scale : Tăng hoặc giảm kích cỡ một unit trong time
// struct VFX_Unit_Scale extends SKILL 
//     real scale_increment = 0.025
//     boolean is_reverse = true 
//     boolean default_end = true
//     real scale_original = 1.00
//     real scale = 1.00
//     integer reverse_tick = 0 // 
//     private static method spell_update takes nothing returns nothing 
//         local thistype this = runtime.get() 
     
//         if Boo.isdead( .caster)  then 
//             if .default_end then 
//                 call SetUnitScale(.caster, .scale_original, .scale_original, .scale_original)
//             endif
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance 
//         endif
//         if .time <= .reverse_tick and .is_reverse then 
//             set .scale = .scale - .scale_increment
//         else
//             set .scale = .scale + .scale_increment
//         endif
//         call SetUnitScale(.caster, .scale, .scale, .scale)
//         set.time = .time - 1 
//         if.time <= 0 then 
//             if .default_end then 
//                 call SetUnitScale(.caster, .scale_original, .scale_original, .scale_original)
//             endif
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance                                                                   
//         endif 
//     endmethod 
//     method spell_now takes nothing returns boolean 
//         set .scale = .scale_original
//         call runtime.new(this, P32, true, function thistype.spell_update) 
//         return false 
//     endmethod 
// endstruct
// struct SFX_VoHon extends SKILL 
//     real scale_increment = 0.025
//     real scale = 1.00
//     integer reverse_tick = 0 // 
//     integer alpha = 255
//     integer alpha_increment = - 5
//     real height = 100
//     real height_increment = 3
//     private static method spell_update takes nothing returns nothing 
//         local thistype this = runtime.get() 
//         if Boo.isdead( .caster)  then 
//             call RemoveUnit(.u)
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance 
//         endif
//         set .scale = .scale + .scale_increment
//         set .height = .height + .height_increment
//         set .alpha = .alpha + .alpha_increment
//         set .x = Math.ppx(.x, .speed, .a)
//         set .y = Math.ppy(.y, .speed, .a)
//         call SetUnitX(.u, .x)
//         call SetUnitY(.u, .y)
//         call SetUnitScale(.u, .scale, .scale, .scale)
//         call SetUnitFlyHeight(.u, .height, 0)
//         call SetUnitVertexColor(.u, 255, 255, 255, .alpha)
//         set.time = .time - 1 
//         if.time <= 0 then 
//             call RemoveUnit(.u)
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance                                                                   
//         endif 
//     endmethod 
//     method spell_now takes nothing returns boolean 
//         set .a = GetUnitFacing(.caster)
//         set .x = Math.ppx(GetUnitX(.caster), - 80, .a)
//         set .y = Math.ppy(GetUnitY(.caster), - 80, .a)
//         call PauseUnit(.u, true)
//         //
//         // set vh.caster = caster 
//         // set vh.u = CreateUnit(GetOwningPlayer(.caster), 'n000', .x, .y, .a)
//         // set vh.alpha = 200
//         // set vh.height = GetUnitDefaultFlyHeight(.u) + 100
//         // set vh.height_increment = 3
//         // set vh.speed = - 5
//         // set vh.time = 16
//         call UnitAddAbility(.u, 'Avul')
//         call UnitAddAbility(.u, 'Aloc')
//         call UnitAddAbility(.u, 'Arav')
//         call UnitRemoveAbility(.u, 'Arav')
//         call SetUnitFacing(.u, .a)
  

//         call SetUnitVertexColor(.u, 255, 255, 255, .alpha)
//         call runtime.new(this, P32, true, function thistype.spell_update) 
//         return false 
//     endmethod 
// endstruct


struct BezierMissile extends SKILL
    string attach_path = ""
    string attach = ""
    method spell_now takes nothing returns nothing 
        // set mss.missile = AddSpecialEffect(.missile_path, GetUnitX(.caster), GetUnitY(.caster))
        // set mss.target = .target
        // set mss.t = 0.0
        // set mss.speed = 0.05
        // set mss.DMG_TYPE = DOC
        // set mss.dmg = .dmg
        // set mss.is_lv20 = .is_lv20
        // set mss.endX = GetUnitX(.target)
        // set mss.endY = GetUnitY(.target)
        // set mss.endZ = GetUnitFlyHeight(.target)
        // set mss.startX = Math.ppx(GetUnitX(.caster), distance, angle)
        // set mss.startY = Math.ppy(GetUnitY(.caster), distance, angle)
        // set mss.startZ = Math.pz( GetUnitX(.caster), GetUnitY(.caster))
        // set mss.midX = ((mss.startX + mss.endX) / 2.0 ) + GetRandomReal(- 200, 200)
        // set mss.midY = ((mss.startY + mss.endY) / 2.0 ) + GetRandomReal(- 200, 200)
        // set mss.midZ = GetRandomReal(200, 400)
        // set mss.caster = .caster
        call runtime.new(this, P32, true, function thistype.move) 
    endmethod
    private static method move takes nothing returns nothing
        local timer t = GetExpiredTimer()
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        local real u = this.t
        local real v = 1.0 - u
        // Tính toán vị trí mới theo phương trình Bezier
        local real x = v * v * this.startX + 2 * v * u * this.midX + u * u * this.endX
        local real y = v * v * this.startY + 2 * v * u * this.midY + u * u * this.endY
        local real z = v * v * this.startZ + 2 * v * u * this.midZ + u * u * this.endZ
        // call BJDebugMsg(R2S(.t))

        // Di chuyển hiệu ứng
        call BlzSetSpecialEffectPosition(this.missile, x, y, z)
        call Eff.angle(this.missile, Math.ab(x, y, GetUnitX(.target), GetUnitY(.target)))
        // Tăng giá trị tham số
        set this.t = (this.t + this.speed) 
        // call BJDebugMsg(R2S(.t))

        if this.t >= 1.0 then

            set g = CreateGroup() 
            call Group.enum(g, x, y, .aoe) 
            loop 
                set e = FirstOfGroup(g) 
                exitwhen(e == null )
                if .FilterUnit( .caster, e) then 
                    if .attach_path != "" then 
                        call Eff.attach( .attach_path, e, .attach)
                    endif
                    call UnitDamageTarget(.caster, e, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
                    // call DummyX.stun(DummyX.load[Num.uid(.caster)] , e, 1.00)
                endif 
                call Group.remove(e, g) 
            endloop 
            call Group.release(g) 
            set e = null 

            call DestroyEffect(this.missile)
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance      
        endif
    endmethod
endstruct



struct RotatingBullet extends SKILL
    real rotationSpeed   // Tốc độ quay
    real radius

    // Khởi tạo một viên đạn
    method spell_now takes nothing returns nothing
        local real x = GetUnitX(caster)
        local real y = GetUnitY(caster)

        // Thiết lập giá trị
        // set this.caster = caster
        // set this.a = angle
        // set this.rotationSpeed = 360
        // set this.aoe = 600
        // set this.dmg = DAMAGE
        // set this.time = 32

        // Tạo hiệu ứng
        set this.missile = AddSpecialEffect(.missile_path, x, y)

        call runtime.new(this, P32, true, function thistype.move) 
    endmethod
    // Cập nhật vị trí và xử lý va chạm
    private static method move takes nothing returns nothing
        local timer t = GetExpiredTimer()
        local thistype this = runtime.get() 
        local real casterX = GetUnitX(this.caster)
        local real casterY = GetUnitY(this.caster)
        local real newX
        local real newY
        local group g = null 
        local unit e = null
        if Boo.isdead( .caster)  then 
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        // Cập nhật góc và tính toán vị trí mới
        set this.a = this.a + this.rotationSpeed * P32
        if this.a >= 360 then
            set this.a = this.a - 360
        endif

        set newX = casterX + this.radius * Cos(this.a * bj_DEGTORAD)
        set newY = casterY + this.radius * Sin(this.a * bj_DEGTORAD)

        // Cập nhật vị trí hiệu ứng
        call Eff.pos( .missile, newX, newY, Math.pz( newX, newY) + .z) 
        call Eff.angle(.missile, .a + 90)

        set g = CreateGroup() 
        call Group.enum(g, newX, newY, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null or.is_touch == true)
            if not.is_touch and.FilterUnit( .caster, e) then 
                set.is_touch = true 
                call UnitDamageTarget(.caster, e, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 
        set .time = .time - 1 
 
        if.time <= 0  or .is_touch then 
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod
endstruct


// struct Missile_Rain2 extends SKILL
//     real targetX
//     real targetY
//     real currentX
//     real currentY
//     real height
//     real angleYaw   // Góc xoay ngang (roll)
//     real anglePitch // Góc nghiêng (pitch)
//     real distance
//     real progress
//     string nova_path = ""
//     real h_start = 0.00
//     real h_end = 0.00
//     method spell_now takes nothing returns nothing
//         // set .targetX = targetX
//         // set .targetY = targetY
//         // set .caster = caster
//         // set .speed = 600
//         // set .dmg = 20
//         // set .DMG_TYPE = HOA
//         // set .height = 400.00
//         // set .missile_path = "Abilities\\Weapons\\RedDragonBreath\\RedDragonMissile.mdl"
//         // set .aoe = 200
//         // set .nova_path = "Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl" 
//         // set .h_start = 400
//         // set .h_end = 0
//         set .startX = GetUnitX(.caster)
//         set .startY = GetUnitY(.caster)

//         set .currentX = .startX
//         set .currentY = .startY
//         set .distance = SquareRoot((targetX - .startX) * (targetX - .startX) + (targetY - .startY) * (targetY - .startY))
//         set .angleYaw = Atan2(targetY - .startY, targetX - .startX)
//         set .progress = 0.0
//         set .missile = AddSpecialEffect(.missile_path, .startX, .startY)
//         call runtime.new(this, P32, true, function thistype.move) 

//     endmethod

//     private static method move takes nothing returns nothing
//         local thistype this = runtime.get() 
//         local real speed = .speed * P32
//         local real ddz
//         local unit e = null 
//         local group g = null
//         if Boo.isdead( .caster)   then 
//                 if .missile != null then 
//call DestroyEffect(.missile)
//endif
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance 
//         endif
//         // Tăng tiến độ và vị trí
//         set .t = .t + speed / .distance
//         set .currentX = .startX + (.targetX - .startX) * .t
//         set .currentY = .startY + (.targetY - .startY) * .t
//         set .height = .h_start + (.h_end - .h_start) * .t

//         // Tính góc pitch
//         set ddz = .height - Math.pz(.currentX, .currentY)  // Độ chênh lệch chiều cao
//         set .anglePitch = Atan2(ddz, speed * P32)

//         // Di chuyển và xoay hiệu ứng
//         call Eff.pos(.missile, .currentX, .currentY, .height)
//         call Eff.pitch(.missile, .anglePitch)
//         call Eff.roll(.missile, .angleYaw)

//         // Kiểm tra va chạm
//         if .t >= 1.0 then
//             call Eff.nova(.nova_path, .currentX, .currentY)
//             set g = CreateGroup() 
//             call Group.enum(g, .currentX, .currentY, .aoe) 
//             loop 
//                 set e = FirstOfGroup(g) 
//                 exitwhen(e == null )
//                 if .FilterUnit( .caster, e) then 
//                     call dmg.mag( .caster, e, .DMG_TYPE, .dmg)
//                 endif 
//                 call Group.remove(e, g) 
//             endloop 
//             call Group.release(g) 
//             set e = null 
//                 if .missile != null then 
//call DestroyEffect(.missile)
//endif
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance    
//         endif
//     endmethod

// endstruct


// struct missile_Bouncing extends SKILL 
//     integer cliff = 0
//     private static method move takes nothing returns nothing 
//         local thistype this = runtime.get() 
//         local group g = null 
//         local unit e = null 
//         local real x = 0 
//         local real y = 0 
//         local boolean b = false 
//         if Boo.isdead( .caster)   then 
//                 if .missile != null then 
//call DestroyEffect(.missile)
//endif
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance 
//         endif
//         set x = Math.ppx(.x, .speed, .a) 
//         set y = Math.ppy(.y, .speed, .a) 
//         if Boo.iswalk(x, y) and GetTerrainCliffLevel(x, y) <=.cliff then 
//             set .cliff = GetTerrainCliffLevel(x, y)
//             set b = true 
//         else 
//             set.a =.a + 180 
//         endif 

//         if b then 
//             set.x = x 
//             set.y = y 
//             call Eff.angle(.missile, .a) 
//             call Eff.pos(.missile, .x, .y, Math.pz(.x, .y) +.z) 
//         endif 

//         set g = CreateGroup() 
//         call Group.enum(g, .x, .y, .aoe) 
//         loop 
//             set e = FirstOfGroup(g) 
//             exitwhen (e == null or .is_touch)
//             if .FilterUnit(.caster, e) and not .is_touch then 
//                 call dmg.mag( .caster, e, .DMG_TYPE, .dmg)
//                 set .is_touch = true
//             endif 
//             call Group.remove(e, g) 
//         endloop 
//         call Group.release(g) 
//         set e = null 


//         set.time =.time - 1 
//         if.time <= 0 or .is_touch then 
//                 if .missile != null then 
//call DestroyEffect(.missile)
//endif 
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance   
//         endif 
//     endmethod 
//     method spell_now takes nothing returns nothing 
//         // set mb = missile_Bouncing.create()
//         // set mb.time = 32*6 
//         // set mb.caster = caster
//         // call mb.setxyz(x,y,z)
//         // set mb.a = Math.ab(GetUnitX(caster),GetUnitY(caster),xxt,yyt)
//         // set mb.DMG_TYPE = LOI 
//         // set mb.dmg = 20 
//         // set mb.aoe = 50 
//         // set mb.speed = 15 
//         // set mb.missile_path = "Abilities\\Weapons\\FarseerMissile\\FarseerMissile.mdl"
//         // set mb.missile_size = 0.75
//         // set mb.cliff = GetTerrainCliffLevel(.x, .y) 
//         // call mb.spell_now()

//         set.missile = Eff.new(.missile_path, .x, .y, Math.pz(.x, .y) +.z) 
//         call Eff.size(.missile, .missile_size) 
//         call Eff.angle(.missile, .a) 
//         call runtime.new(this, P32, true, function thistype.move) 
//     endmethod 
// endstruct

struct missile_Volley_Touch extends SKILL 
    boolean is_touch2 = false
    real a2 = 30.0
    real a3 = 20.0
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g 
        local unit e 
        local real r = 0 
        local real rr2 = 0 

        set r =.a + (.a2 * Cos(I2R(.time) * bj_PI / .a3) )
        set rr2 =.a + ( .a2 * Sin(I2R(.time) * bj_PI / .a3)) 
        set.speed = ((.d / 60) + ((30.00 / (800 + 50)) *.d))                                                                                                                                                                                                                                                        
        set.x = Math.ppx(.x, .speed, r) 
        set.y = Math.ppy(.y, .speed, r) 
        set.xxt = Math.ppx(.xxt, .speed, rr2) 
        set.yyt = Math.ppy(.yyt, .speed, rr2) 
        call Eff.angle(.missile, r) 
        call Eff.angle(.missile2, rr2) 
        call Eff.pos(.missile, .x, .y, Math.pz(.x, .y) +.z) 
        call Eff.pos(.missile2, .xxt, .yyt, Math.pz(.xxt, .yyt) +.z) 

        set g = CreateGroup() 
        call Group.enum(g, .x, .y, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen e == null 
            if .FilterUnit(.caster, e) and not IsUnitInGroup(e, .g) then 
                call Group.add(e, .g)
                call UnitDamageTargetBJ(.caster, e, .dmg, .ATK_TYPE, .DMG_TYPE) 
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        set g = CreateGroup() 
        call Group.enum(g, .xxt, .yyt, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen e == null 
            if .FilterUnit(.caster, e) and not IsUnitInGroup(e, .g) then 
                call Group.add(e, .g)
                call UnitDamageTargetBJ(.caster, e, .dmg, .ATK_TYPE, .DMG_TYPE) 
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        // set.t2 =.t2 + 1 
        // set this.t = R2I(.d /.speed) * 4                                                                                                                                                                                                                                                          
 
        set.time =.time - 1 
        if.time <= 0 or GetUnitState(.caster, UNIT_STATE_LIFE) <= 0 then 

            if .g != null then 
                call Group.release(.g)
            endif
            if .missile != null then 
                call DestroyEffect(.missile)
            endif 
            if .missile2 != null then 
                call DestroyEffect(.missile2)
            endif 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance     
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        // set.caster = caster 
        // set.x = x 
        // set.y = y 
        // set.xxt = x 
        // set.yyt = y 
        // set.z = z 
        // set.a = a 
        // set.d = Math.dbu(caster, target) 
        // set.t2 = 0 
        // set.missile = Eff.new(path, .x, .y, Math.pz(.x, .y) +.z) 
        // call Eff.size(.missile, SizemissileEff) 
        // call Eff.angle(.missile, a) 
        // set.missile2 = Eff.new(path, .x, .y, Math.pz(.x, .y) +.z) 
        // call Eff.size(.missile2, SizemissileEff) 
        // call Eff.angle(.missile2, a) 
        // set.aoe = aoe 
        // set.dmg = dmg 
        // set.eff = eff 
        // set.DAMAGE_TYPE = dmgtype 
        // set.ATK_TYPE = atktype 
        // set.time = time 
        // set.speed = speed 
        // set.is_touch = false 
        // set.is_touch2 = false                                                                                                                                                                                                                                                   
        // set.time = time 
        set .g = CreateGroup()
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct

struct missile_Volley_Touch2 extends SKILL 
    real xx2 
    real yy2 
    real xx3 
    real yy3 
    real spiralRadius = 40.00
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g 
        local unit e 
        local real r = 0 
        local real rr2 = 0 

        local real spiralSpeed = 0.3 // tốc độ xoắn
        local real baseX
        local real baseY
        local real x1
        local real y1
        local real x2
        local real y2
        local real spiralAngle
        local real offsetAngleDeg

        set.t =.t + .speed 

        set baseX = Math.ppx(.x, .t, .a)
        set baseY = Math.ppy(.y, .t, .a)
        set spiralAngle = .t * spiralSpeed
        set offsetAngleDeg = .a + 90.0
           
        // Dummy 1: góc lệch +90, phase +π/2
        set x1 = Math.ppx(baseX, .spiralRadius * Cos(spiralAngle + bj_PI / 2), offsetAngleDeg)
        set y1 = Math.ppy(baseY, .spiralRadius * Cos(spiralAngle + bj_PI / 2), offsetAngleDeg)

        // Dummy 2: góc lệch +90, phase -π/2
        set x2 = Math.ppx(baseX, .spiralRadius * Cos(spiralAngle - bj_PI / 2), offsetAngleDeg)
        set y2 = Math.ppy(baseY, .spiralRadius * Cos(spiralAngle - bj_PI / 2), offsetAngleDeg)

        call Eff.angle(.missile, Math.ab(.xx2, .yy2, x1, y1)) 
        call Eff.angle(.missile2, Math.ab(.xx3, .yy3, x2, y2)) 
        call Eff.pos(.missile, x1, y1, Math.pz(x1, y1) +.z) 
        call Eff.pos(.missile2, x2, y2, Math.pz(x2, y2) +.z) 
        set .xx2 = x1
        set .yy2 = y1
        set .xx3 = x2
        set .yy3 = y2
        set g = CreateGroup() 
        call Group.enum(g, x1, y1, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen e == null 
            if .FilterUnit(.caster, e) and not IsUnitInGroup(e, .g) then 
                call Group.add(e, .g)
                call UnitDamageTargetBJ(.caster, e, .dmg, .ATK_TYPE, .DMG_TYPE) 
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        set g = CreateGroup() 
        call Group.enum(g, x2, y2, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen e == null 
            if .FilterUnit(.caster, e) and not IsUnitInGroup(e, .g) then 
                call Group.add(e, .g)
                call UnitDamageTargetBJ(.caster, e, .dmg, .ATK_TYPE, .DMG_TYPE) 
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        // set.t2 =.t2 + 1 
        // set this.t = R2I(.d /.speed) * 4                                                                                                                                                                                                                                                          
 
        if.t > .d or GetUnitState(.caster, UNIT_STATE_LIFE) <= 0 then 

            if .g != null then 
                call Group.release(.g)
            endif
            if .missile != null then 
                call DestroyEffect(.missile)
            endif 
            if .missile2 != null then 
                call DestroyEffect(.missile2)
            endif 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance     
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        set .xx2 = .x
        set .xx3 = .x
        set .yy2 = .y
        set .yy3 = .y
        set .t = 0
        // set.caster = caster 
        // set.x = x 
        // set.y = y 
        // set.xxt = x 
        // set.yyt = y 
        // set.z = z 
        // set.a = a 
        // set.d = Math.dbu(caster, target) 
        // set.t2 = 0 
        // set.missile = Eff.new(path, .x, .y, Math.pz(.x, .y) +.z) 
        // call Eff.size(.missile, SizemissileEff) 
        // call Eff.angle(.missile, a) 
        // set.missile2 = Eff.new(path, .x, .y, Math.pz(.x, .y) +.z) 
        // call Eff.size(.missile2, SizemissileEff) 
        // call Eff.angle(.missile2, a) 
        // set.aoe = aoe 
        // set.dmg = dmg 
        // set.eff = eff 
        // set.DAMAGE_TYPE = dmgtype 
        // set.ATK_TYPE = atktype 
        // set.time = time 
        // set.speed = speed 
        // set.is_touch = false 
        // set.is_touch2 = false                                                                                                                                                                                                                                                   
        // set.time = time 
        set .g = CreateGroup()
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct

// struct Lightning_Link_DPS extends SKILL 
//     string nova_path = ""
//     string attach_path = ""
//     integer tick = 0
//     private static method spell_update takes nothing returns nothing 
//         local thistype this = runtime.get() 
//         local group g = null 
//         local unit e = null 
//         if Boo.isdead( .caster) or Boo.isdead( .target)   then 
//             call DestroyLightningBJ( .light )
//             call DestroyLightningBJ( .light2 )

//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance 
//         endif
//         call MoveLightningEx(.light, true, .x, .y, Math.pz( .x, .y) + .z, .xxt, .yyt, Math.pz( .xxt, .yyt) + .z)
//         call MoveLightningEx(.light2, true, .x, .y, Math.pz( .x, .y) + .z, .xxt, .yyt, Math.pz( .xxt, .yyt) + .z)

//         if ModuloInteger(.time , .tick) == 0 then 
//             set .tick = .tick - R2I(.increment)
//             call Eff.nova(.nova_path, .x, .y)
//             set g = CreateGroup() 
//             call Group.enum(g, .x, .y, .aoe) 
//             loop 
//                 set e = FirstOfGroup(g) 
//                 exitwhen(e == null)
//                 if .FilterUnit( .caster, e)  then 
//                     call Eff.chest(.attach_path, e)
//                     call dmg.mag( .caster, e, .DMG_TYPE, .dmg)
//                 endif 
//                 call Group.remove(e, g) 
//             endloop 
//             call Group.release(g) 
//             set e = null 
//         endif

//         set.time = .time - 1 
//         if.time <= 0 then 
//             call DestroyLightningBJ( .light )
//             call DestroyLightningBJ( .light2 )

//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance                                                                   
//         endif 
//     endmethod 
//     method spell_now takes nothing returns boolean 
//         //set light.caster = caster 
//         //set light.target = target 
//         //set light.light_name = CLPB 
//         //set light.light_name2 = CLSB 
//         //set light.z = 120
//         //set light.tick = 16
//         //set light.time = 32*3
        
//         //Chain Lighning Primary: CLPB
//         //Chain Lighning Secondary: CLSB
//         //Fork lightning: FORK
//         //Finger Of Death: AFOD
        
//         set .x = GetUnitX(.caster)
//         set .y = GetUnitY(.caster)
//         set .xxt = GetUnitX(.target)
//         set .yyt = GetUnitY(.target)
//         set .light = AddLightningEx(.light_name, true, .x, .y, Math.pz( .x, .y) + .z, .xxt, .yyt, Math.pz( .xxt, .yyt) + .z)
//         set .light2 = AddLightningEx(.light_name2, true, .x, .y, Math.pz( .x, .y) + .z, .xxt, .yyt, Math.pz( .xxt, .yyt) + .z)
//         // call SetLightningColorBJ( GetLastCreatedLightningBJ(), 1.00, 1.00, 1.00, 1.00 )
//         call runtime.new(this, P32, true, function thistype.spell_update) 
//         return false 
//     endmethod 
// endstruct
struct RotatingBulletPierce extends SKILL
    real rotationSpeed   // Tốc độ quay
    real radius
    string attach_path = ""
    string attach = ""

    // Khởi tạo một viên đạn
    method spell_now takes nothing returns nothing
        local real x = GetUnitX(caster)
        local real y = GetUnitY(caster)
        set .g = CreateGroup()
        // Thiết lập giá trị
        // set this.caster = caster
        // set this.a = angle
        // set this.rotationSpeed = 360
        // set this.aoe = 600
        // set this.dmg = DAMAGE
        // set this.time = 32
        // set this.radius = 32
        
        // Tạo hiệu ứng
        set this.missile = Eff.new(.missile_path, x, y, Math.pz(x, y) + .z)
        call Eff.size(.missile, .missile_size)
        call runtime.new(this, P32, true, function thistype.move) 
    endmethod
    // Cập nhật vị trí và xử lý va chạm
    private static method move takes nothing returns nothing
        local thistype this = runtime.get() 
        local real casterX = GetUnitX(this.caster)
        local real casterY = GetUnitY(this.caster)
        local real newX
        local real newY
        local group g = null 
        local unit e = null
        if Boo.isdead( .caster)  then 
            call Group.release(.g) 
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        // Cập nhật góc và tính toán vị trí mới
        set this.a = this.a + this.rotationSpeed * P32
        if this.a >= 360 then
            set this.a = this.a - 360
        endif

        set newX = casterX + this.radius * Cos(this.a * bj_DEGTORAD)
        set newY = casterY + this.radius * Sin(this.a * bj_DEGTORAD)

        // Cập nhật vị trí hiệu ứng
        call Eff.pos( .missile, newX, newY, Math.pz( newX, newY) + .z) 
        call Eff.angle(.missile, .a + 90)

        set g = CreateGroup() 
        call Group.enum(g, newX, newY, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null or.is_touch == true)
            if not IsUnitInGroup(e, .g) and.FilterUnit( .caster, e) then 
                call Group.add(e, .g)
                call Eff.attach( .attach_path, e, .attach)
                call UnitDamageTarget(.caster, e, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 
        set .time = .time - 1 
 
        if.time <= 0  then 
            if .g != null then 
                call Group.release(.g)
            endif
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod
endstruct


struct Escape //Escape
    static key Dash
    static key Airborne 
    static key Knockback 
    static key Jumped 
    static key Immune 
    static key status 
    static key key_id 
    static hashtable ht = InitHashtable()
    static method change_status takes unit u, integer status_id , integer key_id returns boolean
        local integer hid = GetHandleId(u)
        // call BJDebugMsg("Jump:" + I2S(.Jumped))
        // call BJDebugMsg("Knockback:" + I2S(.Knockback))
        // call BJDebugMsg("Airborne:" + I2S(.Knockback))
        // call BJDebugMsg("Input:" + I2S(status_id) + "Now: " + I2S(LoadInteger(.ht, hid, .status ) ))
        if status_id ==.Jumped then 
            call Unit.enabledmove(u)
            call Unit.enablecontrol(u)
            call SetUnitFlyHeight(u, GetUnitDefaultFlyHeight(u), 0)
            call SetUnitPosition(u, GetUnitX(u), GetUnitY(u))
            if LoadInteger(.ht, hid, .status ) ==.Knockback then
                return false
            endif
            if LoadInteger(.ht, hid, .status ) ==.Airborne then
                return false
            endif
            call SaveInteger(.ht, hid, .status, status_id) 
            call SaveInteger(.ht, hid, .key_id, key_id)
            return true
        endif
        if status_id ==.Knockback then 
            if LoadInteger(.ht, hid, .status ) ==.Jumped then
                call Unit.enabledmove(u)
                call Unit.enablecontrol(u)
                // call SetUnitFlyHeight(u, GetUnitDefaultFlyHeight(u), 0.0)
                call SetUnitPosition(u, GetUnitX(u), GetUnitY(u))
            endif
            if LoadInteger(.ht, hid, .status ) ==.Airborne then
                return false
            endif
            if LoadInteger(.ht, hid, .status ) ==.Immune then
                return false
            endif
            
            call SaveInteger(.ht, hid, .status, status_id) 
            call SaveInteger(.ht, hid, .key_id, key_id)
            return true
        endif
        if status_id ==.Airborne then 
            if LoadInteger(.ht, hid, .status ) ==.Jumped then
                call Unit.enabledmove(u)
                call Unit.enablecontrol(u)
                // call SetUnitFlyHeight(u, GetUnitDefaultFlyHeight(u), 0.0)
                call SetUnitPosition(u, GetUnitX(u), GetUnitY(u))
            endif
            if LoadInteger(.ht, hid, .status ) ==.Knockback then
                call Unit.enabledmove(u)
                call Unit.enablecontrol(u)
                return false
            endif
            if LoadInteger(.ht, hid, .status ) ==.Immune then
                return false
            endif
            call SaveInteger(.ht, hid, .status, status_id) 
            call SaveInteger(.ht, hid, .key_id, key_id)
            return true
        endif
        return false
    endmethod
    static method reset takes unit u returns nothing
        call SaveInteger(.ht, GetHandleId(u), .status, 0) 
        call SaveInteger(.ht, GetHandleId(u), .key_id, 0)
    endmethod
    static method is_stack takes unit u, integer status_id , integer key_id returns boolean 
        // call BJDebugMsg(I2S( LoadInteger(.ht, GetHandleId(u), .status)) + " - " + I2S(status_id) + " || " + I2S( LoadInteger(.ht, GetHandleId(u), .key_id)) + " - " + I2S(key_id) )
        if LoadInteger(.ht, GetHandleId(u), .status) == status_id and LoadInteger(.ht, GetHandleId(u), .key_id) == key_id then 
            return false
        endif
        return true
    endmethod
endstruct
struct AirborneX 
    real x = 0.0
    real y = 0.0
    real x1 = 0.0
    real y1 = 0.0
    real a = 0.0
    real col = 0.0
    real g = 0.0
    real z0 = 0.0
    real zMax = 0.0
    real speed = 0.0
    boolean ALLOW_MOVE = false 
    boolean ALLOW_CONTROL = false 
    unit caster = null 
    real dfh = 0.0
    real time = 0
    real t = 0.0
    real tEnd = 0.0
    real dt = 0.0
    real sinZ = 0.0

    integer key_id = 0 
    integer status_id = 0
    integer cliff = 0
    static integer stack = - 8024
    private static method update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        local real fh = 0.0
        local real z = 0.0
        local integer cliff_now = 0
        local boolean can_walk = false
        if this.ALLOW_MOVE then 
            set this.a = GetUnitFacing(this.caster)
        endif
        set.x = Math.ppx(.x, .speed, this.a) 
        set.y = Math.ppy(.y, .speed, this.a) 
        if not IsTerrainPathable(.x, .y, PATHING_TYPE_WALKABILITY) then 
            set can_walk = true 
            // call BJDebugMsg("can walk")
        else
            set can_walk = false
            // call BJDebugMsg("can't walk")

        endif
        set cliff_now = GetTerrainCliffLevel(.x, .y)
        set z = Math.pz(.x, .y) - this.z0
        set this.t = this.t + this.dt
        set fh = this.sinZ * this.t - this.g * this.t * this.t / 2. - z + this.dfh
        // call BJDebugMsg("t: " + R2S(.t) + " || " + "tend: " + R2S(.tEnd))
        //
        if Escape.is_stack(this.caster, .status_id, .key_id) then 
            // call SetUnitPosition(this.caster, this.x, this.y)
            call SetUnitFlyHeight(this.caster, .dfh, 0)
            // call Unit.enabledmove(this.caster)
            // call  Unit.enablecontrol(this.caster)
            // if not this.ALLOW_MOVE then 
            //     call Unit.enabledmove(this.caster)
            // endif
            // if not this.ALLOW_CONTROL then 
            //     call  Unit.enablecontrol(this.caster)
            // endif
            // call SaveBoolean(ht, GetHandleId(this.caster), StringHash("IsDrive"), false)
            call runtime.end() // End the timer                                                                                                                                                                                                        
            call.destroy() // Destroy the instance  
        else
            //Same id
        endif

        if (this.t < this.tEnd and GetUnitState(this.caster, UNIT_STATE_LIFE) > 0 ) and not ( .cliff < cliff_now ) and can_walk then 
            call SetUnitX(this.caster, .x)
            call SetUnitY(this.caster, .y)
            call SetUnitFlyHeight(this.caster, fh, 0)
        else
            call SetUnitPosition(this.caster, this.x, this.y)
            if not this.ALLOW_MOVE then 
                call Unit.enabledmove(this.caster)
            else
                call ResetUnitAnimation(this.caster)
            endif
            if not this.ALLOW_CONTROL then 
                call Unit.enablecontrol(this.caster)
            endif
            call SetUnitFlyHeight(this.caster, .dfh, 0)
            // call SaveBoolean(ht, GetHandleId(this.caster), StringHash("IsDrive"), false)
            // call BJDebugMsg("Airborne End")
            call Escape.reset(.caster)
            call runtime.end() // End the timer                                                                                                                                                                                                        
            call.destroy() // Destroy the instance   
        endif

    endmethod 
    method setxya takes real xxt , real yyt returns nothing
        // call BJDebugMsg(GetUnitName(.caster))
        set .x = GetUnitX(.caster)
        set .y = GetUnitY(.caster)
        set .x1 = xxt 
        set .y1 = yyt
        set .a = Math.ab(.x, .y, .x1, .y1)
        // call BJDebugMsg("x: " + R2S(.x) + " || " + "y: " + R2S(.y))
        // call BJDebugMsg("xxt: " + R2S(.x1) + " || " + "yyt: " + R2S(.x1))
        // call BJDebugMsg("a: " + R2S(.a) + " || " + "yyt: " + R2S(.x1))

    endmethod
    method now takes nothing returns boolean 
        // set jump = AirborneX.create()
        // set jump.caster = caster
        // call jump.setxya(xxt,yyt) 
        // set jump.time = 3.00
        // set jump.zMax = 300
        // set jump.ALLOW_MOVE = false
        // set jump.ALLOW_CONTROL = false
        // call jump.now()
        local real z1 = Math.pz(this.x1, this.y1)
        local boolean b = false
        set this.cliff = GetTerrainCliffLevel(.x, .y)
        // call IssueImmediateOrder(this.caster, "stop")
        set this.speed = (Math.db(.x, .y, .x1, .y1) / this.time) * P32
        // call BJDebugMsg("speed: " + R2S(this.speed))
        set this.dfh = GetUnitDefaultFlyHeight(this.caster)
        set this.z0 = Math.pz(.x, .y)
        set this.col = BlzGetUnitCollisionSize(this.caster)
        set this.g = this.col * 1
        set this.sinZ = SquareRoot(zMax * 2 * this.g)
        set this.tEnd = (this.sinZ + SquareRoot(this.sinZ * this.sinZ - 2 * this.g * (z1 - this.z0))) / this.g
        set this.dt = P32 * (this.tEnd - this.t) / this.time
        // call BJDebugMsg("t: " + R2S(.t) + " || " + "tend: " + R2S(.tEnd))

        set .status_id = Escape.Airborne
        if not this.ALLOW_MOVE then 
            call Unit.disablemove(this.caster)
        endif
        if not this.ALLOW_CONTROL then 
            call Unit.disablecontrol(this.caster)
        endif
        if UnitAddAbility(.caster, 'Arav') and UnitRemoveAbility(.caster, 'Arav') then 
            if not Escape.is_stack(.caster, .status_id, .key_id) then
                set .stack = .stack + 1
                set .key_id = .key_id + .stack
                set b = Escape.change_status(.caster, .status_id, .key_id)
            else
                set b = Escape.change_status(.caster, .status_id, .key_id)
            endif
        endif
        if b then 
            call runtime.new(this, P32, true, function thistype.update) 
        else
            call.destroy() // Destroy the instance   
        endif
        return false 
    endmethod 
endstruct
struct JumpX 
    real x = 0.0
    real y = 0.0
    real x1 = 0.0
    real y1 = 0.0
    real a = 0.0
    real col = 0.0
    real g = 0.0
    real z0 = 0.0
    real zMax = 0.0
    real speed = 0.0
    boolean ALLOW_MOVE = false 
    boolean ALLOW_CONTROL = false 
    unit caster = null 
    real dfh = 0.0
    real time = 0
    real t = 0.0
    real tEnd = 0.0
    real dt = 0.0
    real sinZ = 0.0

    integer key_id = 0 
    integer status_id = 0

    static integer stack = - 8024
    private static method update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        local real fh = 0.0
        local real z = 0.0
        if this.ALLOW_MOVE then 
            // call SetUnitFacingTimed(.caster, quickcast.getUA(.caster), 0.03125 * 2)
            set this.a = GetUnitFacing(this.caster)
        endif
        set.x = Math.ppx(.x, .speed, this.a) 
        set.y = Math.ppy(.y, .speed, this.a) 
        set z = Math.pz(.x, .y) - this.z0
        set this.t = this.t + this.dt
        set fh = this.sinZ * this.t - this.g * this.t * this.t / 2. - z + this.dfh
        // call BJDebugMsg("t: " + R2S(.t) + " || " + "tend: " + R2S(.tEnd))
        //
        if Escape.is_stack(this.caster, .status_id, .key_id) then 
            call SetUnitPosition(this.caster, this.x, this.y)
            call SetUnitFlyHeight(this.caster, .dfh, 0)
            // if not this.ALLOW_MOVE then 
            //     call Unit.enabledmove(this.caster)
            // endif
            // if not this.ALLOW_CONTROL then 
            //     call Unit.enablecontrol(this.caster)
            // endif
            // call SaveBoolean(ht, GetHandleId(this.caster), StringHash("IsDrive"), false)
            call runtime.end() // End the timer                                                                                                                                                                                                        
            call.destroy() // Destroy the instance  
        else
            //Same id
        endif

        if this.t < this.tEnd and GetUnitState(this.caster, UNIT_STATE_LIFE) > 0   then 
            call SetUnitX(this.caster, .x)
            call SetUnitY(this.caster, .y)
            call SetUnitFlyHeight(this.caster, fh, 0)
        else
            call SetUnitPosition(this.caster, this.x, this.y)
            if not this.ALLOW_MOVE then 
                call Unit.enabledmove(this.caster)
            else
                call ResetUnitAnimation(this.caster)
            endif
            if not this.ALLOW_CONTROL then 
                call Unit.enablecontrol(this.caster)
            endif
            // call SaveBoolean(ht, GetHandleId(this.caster), StringHash("IsDrive"), false)
            call Escape.reset(.caster)
            call runtime.end() // End the timer                                                                                                                                                                                                        
            call.destroy() // Destroy the instance   
        endif

    endmethod 
    method setxya takes real xxt , real yyt returns nothing
        // call BJDebugMsg(GetUnitName(.caster))
        set .x = GetUnitX(.caster)
        set .y = GetUnitY(.caster)
        set .x1 = xxt 
        set .y1 = yyt
        set .a = Math.ab(.x, .y, .x1, .y1)
        // call BJDebugMsg("x: " + R2S(.x) + " || " + "y: " + R2S(.y))
        // call BJDebugMsg("xxt: " + R2S(.x1) + " || " + "yyt: " + R2S(.x1))
        // call BJDebugMsg("a: " + R2S(.a) + " || " + "yyt: " + R2S(.x1))

    endmethod
    method now takes nothing returns boolean 
        // set jump = JumpX.create()
        // set jump.caster = caster
        // call jump.setxya(xxt,yyt) 
        // set jump.time = 3.00
        // set jump.zMax = 300
        // set jump.key_id = key of skill
        // set jump.status_id = status of escape
        // set jump.ALLOW_MOVE = true
        // set jump.ALLOW_CONTROL = true
        // call jump.now()
        local real z1 = Math.pz(this.x1, this.y1)
        local boolean b = false
        // call IssueImmediateOrder(this.caster, "stop")
        set this.speed = (Math.db(.x, .y, .x1, .y1) / this.time) * P32
        // call BJDebugMsg("speed: " + R2S(this.speed))
        set this.dfh = GetUnitDefaultFlyHeight(this.caster)
        set this.z0 = Math.pz(.x, .y)
        set this.col = BlzGetUnitCollisionSize(this.caster)
        set this.g = this.col * 1
        set this.sinZ = SquareRoot(zMax * 2 * this.g)
        set this.tEnd = (this.sinZ + SquareRoot(this.sinZ * this.sinZ - 2 * this.g * (z1 - this.z0))) / this.g
        set this.dt = P32 * (this.tEnd - this.t) / this.time
        // call BJDebugMsg("t: " + R2S(.t) + " || " + "tend: " + R2S(.tEnd))

        set .status_id = Escape.Jumped
        if not this.ALLOW_MOVE then 
            call Unit.disablemove(this.caster)
        endif
        if not this.ALLOW_CONTROL then 
            call Unit.disablecontrol(this.caster)
        endif
        if UnitAddAbility(.caster, 'Arav') and UnitRemoveAbility(.caster, 'Arav') then 
            if not Escape.is_stack(.caster, .status_id, .key_id) then
                set .stack = .stack + 1
                set .key_id = .key_id + .stack
                set b = Escape.change_status(.caster, .status_id, .key_id)
            else
                set b = Escape.change_status(.caster, .status_id, .key_id)
            endif
        endif
        if b then 
            call runtime.new(this, P32, true, function thistype.update) 
        else
            call.destroy() // Destroy the instance   
        endif
        return false 
    endmethod 
endstruct

struct KnockX
    unit u
    boolean amove
    boolean ktree
    boolean stop
    real sp
    real h
    real dh
    real dur
    real fa
    string ground_sfx = "Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl"
    string water_sfx = "" 
    integer key_id = 0 
    integer status_id = 0
    real time = 0.00
    effect ex
    static integer stack = - 8024
    private static method KnocLooper takes nothing returns nothing
        local thistype this = runtime.get() 
        local real x = GetUnitX(this.u) + this.sp * Cos(this.fa)
        local real y = GetUnitY(this.u) + this.sp * Sin(this.fa)
        local boolean w = Boo.iswalk(x, y)
        if this.ktree then
            //call KillTreeRadius(x, y, 150)
        endif
        if Escape.is_stack(this.u, .status_id, .key_id) then 
            // call SetUnitFlyHeight(this.u, GetUnitDefaultFlyHeight(.u), 0)
            call runtime.end() // End the timer                                                                                                                                                                                                        
            call.destroy() // Destroy the instance  
        else
            //Same id
        endif
        set .time = .time + 0.03125
        // call BJDebugMsg(R2S(.time) + " [] " + R2S(.dur) )
        if .time > this.dur then
            if w == false then //SFX when don't walkable
                // if .ground_sfx != "" then 
                //     call DestroyEffect(AddSpecialEffect(.ground_sfx, x, y))
                // endif
            endif
            if .ex != null then 
                call DestroyEffect(.ex) 
            endif
            // static if ALLOW_STACK_UNIT then
            //     if not this.amove then
            //         call SetUnitPathing(this.u, true)
            //     endif
            // endif
            call Escape.reset(.u)
            call SetUnitFlyHeight(this.u, GetUnitDefaultFlyHeight(.u), 0)
            set this.sp = 0
            set this.dur = 0
            set this.u = null
            set this.stop = false
            set this.ktree = false
            set this.amove = false
            // call BJDebugMsg("KnockX End")
  
            call runtime.end()
            call this.destroy()
        else
            
            // if IsTerrainPathable(x, y, PATHING_TYPE_FLOATABILITY) then
            //     if .ground_sfx != "" then 
            //         call DestroyEffect(AddSpecialEffect(.ground_sfx, x, y))
            //     endif
            // else
            //     if .water_sfx != "" then 
            //         call DestroyEffect(AddSpecialEffect(.water_sfx, x, y))
            //     endif
            // endif

            if this.amove then
                // if Boo.iswalk(x, y) then
                call SetUnitX(this.u, x)
                call SetUnitY(this.u, y)
                call SetUnitFlyHeight(.u, GetUnitFlyHeight(.u) - .dh, 0)
                // endif
            else
                // if Boo.iswalk(x, y) then
                call SetUnitPosition(this.u, x, y)
                call SetUnitFlyHeight(.u, GetUnitFlyHeight(.u) - .dh, 0)
                // endif
            endif
        endif
    endmethod
    method knock_now takes unit u, real dis, real dur, real fa, boolean AllowMove, boolean KillTree returns nothing
        local boolean b = false
        // call SaveInteger(ht, GetHandleId(u) , 0x281, this)
        set this.stop = false
        set this.amove = AllowMove
        set this.ktree = KillTree
        set this.fa = fa * bj_DEGTORAD
        set this.sp = (dis / (dur / P32)) //this is speed
        set this.u = u
        set this.dur = dur
        set this.h = GetUnitFlyHeight(.u) - GetUnitDefaultFlyHeight(.u)
        set this.dh = (h / (dur / P32))
        set .status_id = Escape.Knockback
        if not Escape.is_stack(.u, .status_id, .key_id) then
            set .stack = .stack + 1
            set .key_id = .key_id + .stack
            set b = Escape.change_status(.u, .status_id, .key_id)
        else
            set b = Escape.change_status(.u, .status_id, .key_id)
        endif
        // static if ALLOW_STACK_UNIT then
        //     if not AllowMove then
        //         call SetUnitPathing(this.u, false)
        //     endif
        // endif
        if Num.utid(u) == 'e011' then // Aqualis link
            set b = false
        endif
        if b then 
            if .ground_sfx != "" then 
                set .ex = Eff.add( .u, .ground_sfx)
            endif
            call runtime.new(this, P32, true, function thistype.KnocLooper)
        else
            call.destroy() // Destroy the instance   
        endif
    endmethod
endstruct

struct DeadFly extends SKILL
    integer tick
    integer max_tick
    integer tick2
    integer max_tick2
    private static method FlyUpdate takes nothing returns nothing
        local thistype this = runtime.get() 
        set .time = .time + 1
        set .tick2 = .tick2 + 1
        call SetUnitX(.u, Math.ppx(Unit.x(.u), .speed, .a))
        call SetUnitY(.u, Math.ppy(Unit.y(.u), .speed, .a))
        if .time < .tick then 
            call SetUnitFlyHeight(.u, .Lerp(GetUnitDefaultFlyHeight(.u), .z, .tick2 /.tick), 0)
        endif
        if .time == .tick then
            set .tick2 = 0
        endif
        if .time > .tick then 
            call SetUnitFlyHeight(.u, .Lerp( .z, GetUnitDefaultFlyHeight(.u), .tick2 / (.max_tick -.tick)), 0)
        endif
        if .time == .max_tick then 
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end()
            call this.destroy()
        endif 
    endmethod
    method fly_now takes nothing returns nothing
        set .max_tick2 = .max_tick - 1
        // set df.u = dying
        // set df.h = 100 
        // set df.max_tick = 10 
        // set df.tick = 5 
        // set df.p = GetUnitDefaultFlyHeight(.u)
        // set df.a = Math.abu(killing, dying)
        // set df.speed = 15


        set .missile = AddSpecialEffectTarget("Objects\\Spawnmodels\\Other\\HumanBloodCinematicEffect\\HumanBloodCinematicEffect.mdl", .u, "chest")
      
        set .z = GetUnitDefaultFlyHeight(.u) +.h
        call UnitAddAbility(.u, 'Arav')
        call UnitRemoveAbility(.u, 'Arav')
        call runtime.new(this, P32, true, function thistype.FlyUpdate)
    endmethod
endstruct
// struct RaiseWeapon extends SKILL
//     integer weapon = 0
//     private static method FlyUpdate takes nothing returns nothing
//         local thistype this = runtime.get() 
//         if Boo.isdead(.u) then 
//             call runtime.end()
//             call this.destroy()
//         endif
//         if Boo.isdead(.caster)  or not UnitHasItemOfTypeBJ(.caster, .count) or GAME.Survivor_Weapon[Num.uid(.caster)] != .weapon then 
//             call KillUnit(.u)
//             call runtime.end()
//             call this.destroy()
//         endif
//         // call BJDebugMsg("Weapon Now:" + I2S( GAME.Survivor_Weapon[Num.uid(.caster)]) + " || Weapon: " + I2S(.weapon))
//         if Math.dbu(.caster, .u) > 10000 then 
//             call SetUnitPosition(.u, GetUnitX(.caster), GetUnitY(.caster))
//         endif
//         set .time = .time + 1
//     endmethod
//     method set_now takes nothing returns nothing
//         //set rw = RaiseWeapon.create()
//         // set rw.u = summoned
//         // set rw.caster = caster
//         // set rw.count = 'I006'  //Item ID
//         // set rw.weapon = 'A009'  //Weapon ID
//         //call rw.set_now()
//         call UnitAddAbility(.u, 'Aeth')
//         call runtime.new(this, P32, true, function thistype.FlyUpdate)
//     endmethod
// endstruct

// struct Dagger extends SKILL 
//     string attach_path = ""
//     integer tick = 0
//     private static method spell_update takes nothing returns nothing 
//         local thistype this = runtime.get() 
//         local group g = null 
//         local unit e = null 
//         if Boo.isdead( .caster) or Boo.isdead(.target)  then 
//             call SetUnitPathing(.caster, true)
//             call Bonus.save_stat(.caster, Bonus.Crit, Bonus.stat(.caster, Bonus.Crit) - 25)
//             call Bonus.save_stat(.caster, Bonus.Evasion, Bonus.stat(.caster, Bonus.Evasion) - 45)
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance 
//         endif
//         if .time ==.tick then 
//             call SetUnitAnimation(.caster, "attack")
//             call SetUnitX(.caster, Math.ppx(Unit.x(.target), 100, GetUnitFacing(.target) - 180))
//             call SetUnitY(.caster, Math.ppy(Unit.y(.target), 100, GetUnitFacing(.target) - 180))
//             call Unit.face(.caster, Math.abu(.caster, .target))
//             call Eff.nova("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", Unit.x(.caster), Unit.y(.caster))
//         endif
//         set.time = .time - 1 
//         if.time <= 0 then 
//             call Bonus.save_stat(.caster, Bonus.Crit, Bonus.stat(.caster, Bonus.Crit) - 25)
//             call Bonus.save_stat(.caster, Bonus.Evasion, Bonus.stat(.caster, Bonus.Evasion) - 45)
//             set g = CreateGroup() 
//             call Group.enum(g, GetUnitX(.target), GetUnitY(.target), .aoe) 
//             loop 
//                 set e = FirstOfGroup(g) 
//                 exitwhen(e == null )
//                 if .FilterUnit( .caster, e) then 
//                     call Eff.attach(.missile_path, e, .light_name)
//                     call UnitDamageTarget(.caster, e, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
//                 endif 
//                 call Group.remove(e, g) 
//             endloop 
//             call Group.release(g) 
//             set e = null 
//             call SetUnitX(.caster, .x)
//             call SetUnitY(.caster, .y)
//             call SetUnitPathing(.caster, true)
//             call runtime.end() // End the timer                                                                                                                                                                                                       
//             call.destroy() // Destroy the instance                                                                   
//         endif 
//     endmethod 
//     method spell_now takes nothing returns boolean 
//         // .caster
//         // .ATK_TYPE
//         // .DMG_TYPE
//         // .time
//         // .missile_path
//         // .light_name
//         // .tick
//         // .target
//         //.aoe
//         // .dmg
//         //.x 
//         //.y
//         call Bonus.save_stat(.caster, Bonus.Crit, Bonus.stat(.caster, Bonus.Crit) + 25)
//         call Bonus.save_stat(.caster, Bonus.Evasion, Bonus.stat(.caster, Bonus.Evasion) + 45)
//         call Eff.nova("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", .x, .y)
//         call SetUnitPathing(.caster, false)
//         call runtime.new(this, P32, true, function thistype.spell_update) 
//         return false 
//     endmethod 
// endstruct



struct RainbowBullet extends SKILL
    method spell_now takes nothing returns boolean 
        // set rb = RainbowBullet.create()
        // set rb.caster = caster
        // set rb.startX = startX
        // set rb.startY = startY
        // set rb.startZ = startZ
        // set rb.endX = endX
        // set rb.endY = endY
        // set rb.h = 400
        // set rb.missile_path = "Abilities\\Weapons\\FaerieDragonMissile\\FaerieDragonMissile.mdl"
        // set rb.speed = 30
        // set rb.a = Math.ab(startX,startY,endX,endY)
        // call rb.spell_now()
        set.missile = Eff.new( .missile_path, .startX, .startY, Math.pz( .startX, .startY) + .startZ) 
        call Eff.size( .missile, .missile_size) 
        call Eff.angle( .missile, .a) 
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster)  then 
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        set .t = .t + (.speed / Math.db(.startX, .startY, .endX, .endY))
        if .t >= 1.0 then
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance     
        endif
        set .x = Lerp(.startX, .endX, .t)
        set .y = Lerp(.startY, .endY, .t)
        set .z = ParabolicZ(.t, .h)
        call MoveEffect(.missile, .x, .y, Math.pz(.x, .y) + .z)
    endmethod 

    static method MoveEffect takes effect fx, real x, real y, real z returns nothing
        call BlzSetSpecialEffectX(fx, x)
        call BlzSetSpecialEffectY(fx, y)
        call BlzSetSpecialEffectZ(fx, z)
    endmethod
endstruct

struct RainbowBullet_AoE extends SKILL
    method spell_now takes nothing returns boolean 
        // set rb = RainbowBullet_AoE.create()
        // set rb.caster = caster
        // set rb.startX = startX
        // set rb.startY = startY
        // set rb.aoe = aoe
        // set rb.dmg = dmg
        // set rb.ATK_TYPE = ATK_TYPE
        // set rb.DMG_TYPE = DMG_TYPE
        // set rb.endX = endX
        // set rb.endY = endY
        // set rb.h = 400
        // set rb.missile_path = "Abilities\\Weapons\\FaerieDragonMissile\\FaerieDragonMissile.mdl"
        // set rb.missile_size = 1.00
        // set rb.speed = 30
        // set rb.a = Math.ab(startX,startY,endX,endY)
        // call rb.spell_now()
        set.missile = Eff.new( .missile_path, .startX, .startY, Math.pz( .startX, .startY) + .startZ) 
        call Eff.size( .missile, .missile_size) 
        call Eff.angle( .missile, .a) 
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        local real prevX = .x
        local real prevY = .y
        local real prevZ = Math.pz(.x, .y) + .z
        if Boo.isdead( .caster)  then 
            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        set .t = .t + (.speed / Math.db(.startX, .startY, .endX, .endY))
        if .t >= 1.0 then

            set g = CreateGroup() 
            call Group.enum(g, .x, .y, .aoe) 
            loop 
                set e = FirstOfGroup(g) 
                exitwhen(e == null)
                if .FilterUnit( .caster, e) then 
                    // call Eff.chest(.attach_path, e)
                    call UnitDamageTarget(.caster, e, .dmg, true, true, .ATK_TYPE, .DMG_TYPE, null) 
                endif 
                call Group.remove(e, g) 
            endloop 
            call Group.release(g) 
            set e = null 

            if .missile != null then 
                call DestroyEffect(.missile)
            endif
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance     
        endif
        set prevZ = Math.pz(.x, .y) + .z
        set .x = Lerp(.startX, .endX, .t)
        set .y = Lerp(.startY, .endY, .t)
        set .z = ParabolicZ(.t, .h)
        call MoveEffect(.missile, .x, .y, Math.pz(.x, .y) + .z)
        call Eff.pitch(.missile, (1 -.t) * 360)
    endmethod 

    static method MoveEffect takes effect fx, real x, real y, real z returns nothing
        call BlzSetSpecialEffectX(fx, x)
        call BlzSetSpecialEffectY(fx, y)
        call BlzSetSpecialEffectZ(fx, z)
    endmethod
endstruct


struct missile_Pierce_Wavy extends SKILL 
    string attach = ""
    real roll = bj_PI * 3
    integer tick = 16
    real rand = 0.0
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster) then 
            call DestroyEffect( .missile) 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        if ModuloInteger(.time, .tick) == 0 then 
            set rand = GetRandomReal(-.roll, roll)
        endif
        set .a = .a + .rand

        set.x = Math.ppx( .x, .speed, .a) 
        set.y = Math.ppy( .y, .speed, .a) 
        call Eff.angle( .missile, .a) 
        call Eff.pos( .missile, .x, .y, Math.pz( .x, .y) + .z) 

        set g = CreateGroup() 
        call Group.enum(g, .x, .y, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null)
            if not IsUnitInGroup(e, .g) and.FilterUnit( .caster, e) then 
                call Group.add(e, .g)
                call Eff.attach(.attach, e, "chest")
                call UnitDamageTargetBJ(.caster, e, .dmg, .ATK_TYPE, .DMG_TYPE) 
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        set.time = .time - 1 
        if.time <= 0  then 
            if .g != null then 
                call Group.release(.g)
            endif
            call DestroyEffect( .missile) 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        set.g = CreateGroup()
        set.missile = Eff.new( .missile_path, .x, .y, Math.pz( .x, .y) + .z) 
        call Eff.size( .missile, .missile_size) 
        call Eff.angle( .missile, .a) 
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct

struct missile_Pierce_TurnBack extends SKILL 
    string attach = ""
    real roll = bj_PI * 3
    integer tick = 16
    real rand = 0.0
    private static method spell_update takes nothing returns nothing 
        local thistype this = runtime.get() 
        local group g = null 
        local unit e = null 
        if Boo.isdead( .caster) then 
            call DestroyEffect( .missile) 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        if ModuloInteger(.time, .tick) == 0 then 
            set .a =.a + 180
            if .g != null then 
                call Group.release(.g)
            endif
            set .g = CreateGroup()
        endif

        set.x = Math.ppx( .x, .speed, .a) 
        set.y = Math.ppy( .y, .speed, .a) 
        call Eff.angle( .missile, .a) 
        call Eff.pos( .missile, .x, .y, Math.pz( .x, .y) + .z) 

        set g = CreateGroup() 
        call Group.enum(g, .x, .y, .aoe) 
        loop 
            set e = FirstOfGroup(g) 
            exitwhen(e == null)
            if not IsUnitInGroup(e, .g) and.FilterUnit( .caster, e) then 
                call Group.add(e, .g)
                call Eff.attach(.attach, e, "chest")
                call UnitDamageTargetBJ(.caster, e, .dmg, .ATK_TYPE, .DMG_TYPE) 
            endif 
            call Group.remove(e, g) 
        endloop 
        call Group.release(g) 
        set e = null 

        set.time = .time - 1 
        if.time <= 0  then 
            if .g != null then 
                call Group.release(.g)
            endif
            call DestroyEffect( .missile) 
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod 
    method spell_now takes nothing returns boolean 
        set.g = CreateGroup()
        set.missile = Eff.new( .missile_path, .x, .y, Math.pz( .x, .y) + .z) 
        call Eff.size( .missile, .missile_size) 
        call Eff.angle( .missile, .a) 
        set .tick = .time / 2
        call runtime.new(this, P32, true, function thistype.spell_update) 
        return false 
    endmethod 
endstruct


// === Bezier missile homing mềm, giữ nguyên điểm xuất phát ===
struct Quarda_Bezier_missile extends SKILL

    // ================= CẤU HÌNH =================
    real DURATION = 0.8
    real ARC_OFFSET = 600.00
    real ARC_HEIGHT = 600.
    real HIT_Z = 20.00
    string attach = ""

    // ================= STATE =================

    real x1
    real y1
    real x2
    real y2
    real x3
    real y3

    real z1
    real z2
    real z3

    real step
    real last_dx
    real last_dy

    // ================= KẾT THÚC =================
    method stop takes nothing returns nothing
        local group g = null
        local unit e = null

        call DestroyEffect(.missile)
        set .missile = null

        set g = CreateGroup()
        call Group.enum(g, .x3, .y3, .aoe)

        loop
            set e = FirstOfGroup(g)
            exitwhen e == null

            if .FilterUnit(.u, e) then
                if .attach != "" then
                    call Eff.attach(.attach, e, "chest")
                endif
                call UnitDamageTargetBJ(.u, e, .dmg, .ATK_TYPE, .DMG_TYPE)
            endif

            call Group.remove(e, g)
        endloop

        call Group.release(g)

        set e = null
        set g = null

        call runtime.end()
        call this.destroy()
    endmethod


    // ================= UPDATE =================
    static method update takes nothing returns nothing
        local thistype this = runtime.get()
        local real nnx
        local real nny
        local real nnz
        local real ddx
        local real ddy
        local real ddz
        local real yaw
        local real pitch
        local real hxy
        local real ang
        local real mmx
        local real mmy

        // tăng tham số t
        set .t = .t + .step
        if .t > 1.0 then
            set .t = 1.0
        endif

        // ===== HOMING CHỈ ẢNH HƯỞNG ĐÍCH =====
        if .target != null and GetWidgetLife(.target) > 0.405 then
            set .x3 = .x3 + (GetUnitX(.target) - .x3) * 0.15
            set .y3 = .y3 + (GetUnitY(.target) - .y3) * 0.15
        endif

        // giữ nguyên x1 y1 (không thay đổi)

        // tính lại control point theo đích mới
        set ang = Math.ab(.x1, .y1, .x3, .y3)

        set mmx = (.x1 + .x3) * 0.5
        set mmy = (.y1 + .y3) * 0.5

        set .x2 = Math.ppx(mmx, .ARC_OFFSET, ang + 180.)
        set .y2 = Math.ppy(mmy, .ARC_OFFSET, ang + 180.)

        // ================= BEZIER =================
        set nnx = .QuadraticBezier(.t, .x1, .x2, .x3)
        set nny = .QuadraticBezier(.t, .y1, .y2, .y3)
        set nnz = .QuadraticBezier(.t, .z1, .z2, .z3)

        set ddx = QuadraticBezierDeriv(.t, .x1, .x2, .x3)
        set ddy = QuadraticBezierDeriv(.t, .y1, .y2, .y3)
        set ddz = QuadraticBezierDeriv(.t, .z1, .z2, .z3)

        if ddx == 0. and ddy == 0. then
            set ddx = .last_dx
            set ddy = .last_dy
        endif

        set .last_dx = ddx
        set .last_dy = ddy

        set yaw = Atan2(ddy, ddx)
        set hxy = SquareRoot(ddx * ddx + ddy * ddy)

        if hxy < 0.0001 then
            set pitch = 0.
        else
            set pitch = Atan2(ddz, hxy)
        endif

        call Eff.pos(.missile, nnx, nny, nnz)
        call BlzSetSpecialEffectYaw(.missile, yaw)
        call BlzSetSpecialEffectPitch(.missile, pitch)

        if .t >= 1.0 then
            call this.stop()
        endif
    endmethod


    // ================= LAUNCH =================
    // xxxc,yyyc = vị trí xuất phát (giữ nguyên tuyệt đối)
    method launch takes unit u, unit v, real xxxc, real yyyc returns nothing
        local real ang
        local real mmx
        local real mmy

        set .u = u
        set .target = v

        // giữ nguyên điểm xuất phát theo tham số
        set .x1 = xxxc
        set .y1 = yyyc

        set .x3 = GetUnitX(v)
        set .y3 = GetUnitY(v)

        set ang = Math.ab(.x1, .y1, .x3, .y3) + GetRandomReal(- 30., 30.)

        set mmx = (.x1 + .x3) * 0.5
        set mmy = (.y1 + .y3) * 0.5

        set .x2 = Math.ppx(mmx, .ARC_OFFSET, ang + 180.)
        set .y2 = Math.ppy(mmy, .ARC_OFFSET, ang + 180.)

        set .HIT_Z = Math.pz(.x1, .y1) + .HIT_Z
        set .z1 = .HIT_Z
        set .z3 = .HIT_Z
        set .z2 = .HIT_Z + .ARC_HEIGHT

        set .t = 0.
        set .step = P32 / .DURATION

        set .missile = Eff.new(.missile_path, .x1, .y1, .z1)
        call Eff.size(.missile, .missile_size)
        call runtime.new(this, P32, true, function thistype.update)
    endmethod

endstruct


struct PassiveRT extends SKILL
    integer abi_id
    private static method move takes nothing returns nothing
        local thistype this = runtime.get() 
        if Boo.isdead( .caster)  then 
            call Unit.removeabi(.caster,.abi_id)
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance 
        endif
        set .time = .time - 1 
 
        if.time <= 0  then 
            call Unit.removeabi(.caster,.abi_id)
            call runtime.end() // End the timer                                                                                                                                                                                                       
            call.destroy() // Destroy the instance                                                                   
        endif 
    endmethod
    static method add takes unit caster, integer abi , integer lv, integer time returns nothing
        local thistype this = thistype.create()
        set .caster = caster 
        set .abi_id = abi 
        set .time = time 
        call Unit.addabi(caster, abi)
        call Unit.setabilv(caster, abi, lv)
        call runtime.new(this, P32, true, function thistype.move) 
    endmethod
endstruct