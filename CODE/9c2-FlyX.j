



function SetFly takes unit u, real height, real duration, real angle, real speed returns nothing

    local integer id = GetHandleId(u)
    local real velocityZ

    // Tránh lỗi
    if duration <= 0.0 then
        return
    endif

    if height < 0.0 then
        set height = 0.0
    endif

    // Vận tốc Z ban đầu
    //
    // v0 = 4H / T
    //
    set velocityZ = 4.0 * height / duration

    call SaveReal(ht, id, fly_height, height)
    call SaveReal(ht, id, fly_duration, duration)

    call SaveReal(ht, id, fly_gravity, velocityZ)
    call SaveReal(ht, id, fly_angle, angle)
    call SaveReal(ht, id, fly_speed, speed)

    call SaveReal(ht, id, fly_time, 0.0)

endfunction

// ============================================================
// GET FLY GRAVITY
// ============================================================

function GetFlyGravity takes unit u returns real

    return LoadReal(ht, GetHandleId(u), fly_gravity)

endfunction



// ============================================================
// GET FLY SPEED
// ============================================================

function GetFlySpeed takes unit u returns real

    return LoadReal(ht, GetHandleId(u), fly_speed)

endfunction


// ============================================================
// FLY X
// ============================================================
struct FlyX

    private real dfh
    private real col
    private unit caster

    private integer time = 0


    // ========================================================
    // UPDATE
    // ========================================================

    private static method update takes nothing returns nothing

        local thistype this = runtime.get()

        local integer id = GetHandleId(this.caster)

        local real height
        local real velocityZ

        local real maxHeight
        local real duration
        local real elapsed

        local real angle
        local real speed

        local real gravityNow

        local real x
        local real y

        if not IsUnitAliveBJ(this.caster) then
            call runtime.end()
        endif

        // ----------------------------------------------------
        // Load data
        // ----------------------------------------------------

        set height = GetUnitFlyHeight(this.caster)

        set velocityZ = LoadReal(ht, id, fly_gravity)

        set maxHeight = LoadReal(ht, id, fly_height)
        set duration = LoadReal(ht, id, fly_duration)

        set elapsed = LoadReal(ht, id, fly_time)

        set angle = LoadReal(ht, id, fly_angle)
        set speed = LoadReal(ht, id, fly_speed)


        // ----------------------------------------------------
        // Calculate gravity dynamically
        // ----------------------------------------------------
        //
        // gravity = 8H / T²
        //
        // Không còn gravity global.
        // ----------------------------------------------------

        set gravityNow = 8.0 * maxHeight / (duration * duration)


        // ====================================================
        // XY MOVEMENT
        // ====================================================

        if speed != 0.0  then

            set x = GetUnitX(this.caster)
            set y = GetUnitY(this.caster)
            if not IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY) then 
                set x = x + Cos(angle * bj_DEGTORAD) * speed * P32
                set y = y + Sin(angle * bj_DEGTORAD) * speed * P32
                call SetUnitX(this.caster, x)
                call SetUnitY(this.caster, y)
            endif
        endif


        // ====================================================
        // Z MOVEMENT
        // ====================================================

        set height = height + velocityZ * P32

        // Apply gravity
        set velocityZ = velocityZ - gravityNow * P32

        call SaveReal(ht, id, fly_gravity, velocityZ)


        // ====================================================
        // Update elapsed time
        // ====================================================

        set elapsed = elapsed + P32

        call SaveReal(ht, id, fly_time, elapsed)


        // ====================================================
        // End of flight
        // ====================================================

        if elapsed >= duration and height > this.dfh then

            set height = this.dfh

            call SaveReal(ht, id, fly_gravity, 0.0)

            call SaveReal(ht, id, fly_time, duration)
            call SaveReal(ht, id, fly_speed, 0)
            call SetUnitFlyHeight(this.caster, this.dfh, 0)

        else
            if height < this.dfh then
                set height = this.dfh
  
            endif
           
            call SetUnitFlyHeight(this.caster, height, 0)
           
        endif


        // ====================================================
        // PATHING
        // ====================================================

        if height > 350.0 then

            call SetUnitPathing(this.caster, false)

        else

            call SetUnitPathing(this.caster, true)

        endif


        // ====================================================
        // Loop counter
        // ====================================================

        set this.time = this.time + 1

        if this.time == 1000 then
            set this.time = 0
        endif

    endmethod


    // ========================================================
    // SETUP
    // ========================================================

     static method setup takes unit u returns nothing

        local thistype this = thistype.create()

        local integer id = GetHandleId(u)


        set this.dfh = GetUnitDefaultFlyHeight(u)

        set this.col = BlzGetUnitCollisionSize(u)

        set this.caster = u


        // ----------------------------------------------------
        // Enable flying
        // ----------------------------------------------------

        if UnitAddAbility(u, 'Arav') and UnitRemoveAbility(u, 'Arav') then
        endif


        // ----------------------------------------------------
        // Default values
        // ----------------------------------------------------

        call SaveReal(ht, id, fly_gravity, 0.0)

        call SaveReal(ht, id, fly_angle, 0.0)

        call SaveReal(ht, id, fly_speed, 0.0)

        call SaveReal(ht, id, fly_height, 0.0)

        call SaveReal(ht, id, fly_duration, 0.0)

        call SaveReal(ht, id, fly_time, 0.0)


        // ----------------------------------------------------
        // Start timer
        // ----------------------------------------------------

        call runtime.new(this, P32, true, function thistype.update)

    endmethod

endstruct
