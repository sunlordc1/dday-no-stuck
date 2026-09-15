
function ivv takes nothing returns nothing
    call ConditionalTriggerExecute(yD)
    call ConditionalTriggerExecute(af)
    call ConditionalTriggerExecute(If)
    call ConditionalTriggerExecute(oF)
    call ConditionalTriggerExecute(XF)
    call ConditionalTriggerExecute(FF)
endfunction

function ImMain takes nothing returns nothing
    local weathereffect we
    call SetCameraBounds(- 6784.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 6912.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 7296.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 7168.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 6784.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 7168.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 7296.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 6912.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCDalaran\\DNCDalaranTerrain\\DNCDalaranTerrain.mdl", "Environment\\DNC\\DNCDalaran\\DNCDalaranUnit\\DNCDalaranUnit.mdl")
    set we = AddWeatherEffect(Rect(- 8192.0, - 8192.0, 8192.0, 8192.0), 'FDwl')
    call EnableWeatherEffect(we, true)
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("DalaranDay")
    call SetAmbientNightSound("DalaranNight")
    call SetMapMusic("Music", true, 0)
    call CreateSoundForGame()
    call CreateRectForMap()
    call CreateUnitForPlayer()
    call InitBlizzard()
    call ExecuteFunc("iov")
    call SetupData()
    call CallFunc()
    call ivv()
endfunction

function irv takes nothing returns boolean
    call f4(eG)
    return true
endfunction
function iov takes nothing returns nothing
    set vG[1] = CreateTrigger()
    call TriggerAddAction(vG[1], function irv)
    call TriggerAddCondition(vG[1], Condition(function irv))
    call ExecuteFunc("XG")
    call ExecuteFunc("AG")
    call ExecuteFunc("CG")
    call ExecuteFunc("lG")
    call ExecuteFunc("uG")
    call ExecuteFunc("lh")
    call ExecuteFunc("qh")
    call ExecuteFunc("wh")
    call ExecuteFunc("Zh")
    call ExecuteFunc("xH")
    call ExecuteFunc("aH")
    call ExecuteFunc("XH")
    call ExecuteFunc("AH")
    call ExecuteFunc("cH")
    call ExecuteFunc("DH")
    call ExecuteFunc("GH")
    call ExecuteFunc("JH")
    call ExecuteFunc("lH")
    call ExecuteFunc("MH")
    call ExecuteFunc("QH")
    call ExecuteFunc("TH")
    call ExecuteFunc("wH")
    call ExecuteFunc("YH")
    call ExecuteFunc("Aj")
    call ExecuteFunc("Bj")
    call ExecuteFunc("D4")
endfunction

struct GAME
    private static method preload takes nothing returns nothing 
        local framehandle tooltip 
        set tooltip = BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0)
        call BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_BOTTOMRIGHT, 0.8, 0.24)
        call Interval.start()
        call EV_Select.setup()
        call DummyX.new()

    endmethod
    private static method onInit takes nothing returns nothing 
        call ImMain()
        call TimerStart(CreateTimer(), 2.00, false, function thistype.preload) 
    endmethod
endstruct