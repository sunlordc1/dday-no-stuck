
function CallFunc takes nothing returns nothing
    call Q3()
    call T3()
    call W3()
    call Z3()
    call o4()
    call O4()
    call A4()
    call k4()
    call p4()
    call Q4()
    call S4()
    call U4()
    call y4()
    call Z4()
    call o5()
    call V5()
    call O5()
    call I5()
    call N5()
    call d5()
    call F5()
    call j5()
    call k5()
    call m5()
    call q5()
    call H6()
    call l6()
    call P6()
    call t6()
    call y6()
    call e7()
    call a7()
    call X7()
    call I7()
    call b7()
    call C7()
    call f7()
    call W8()
    call z8()
    call vev()
    call vov()
    call vav()
    call vEv()
    call vRv()
    call vNv()
    call vDv()
    call vHv()
    call vUv()
    call vZv()
    call v3v()
    call v8v()
    call eov()
    call eVv()
    call eOv()
    call eAv()
    call eBv()
    call eDv()
    call eFv()
    call eGv()
    call ekv()
    call eLv()
    call eqv()
    call eTv()
    call ewv()
    call e8v()
    call xvv()
    call xMv()
    call obv()
    call o7v()
    call rev()
    call rrv()
    call rXv()
    call rLv()
    call rMv()
    call rsv()
    call rTv()
    call r2v()
    call r6v()
    call r8v()
endfunction


///======= Preload Function   
// === When creating a new ability or unit that hasn't been used in the map,he game may experience a slight lag.   
// === Therefore, you should initialize them at the start of the game to ensure a smooth gameplay experience.  

function Preload_Unit takes integer id returns nothing 
    call RemoveUnit(CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), id, GetRandomReal(- 1000, 1000), GetRandomReal(- 1000, 1000), 270)) 
endfunction 
   
function Preload_Item takes integer id returns nothing 
    call RemoveItem(CreateItem(id, 0, 0)) 
endfunction 
   
function Preload_Ability takes integer id returns nothing 
    local unit u = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'nzin', GetRandomReal(- 1000, 1000), 0, 270) 
    call UnitAddAbility(u, id) 
    call UnitRemoveAbility(u, id) 
    call RemoveUnit(u) 
    set u = null 
endfunction 
   
function Preload_Sound takes unit u, string path returns nothing 
    local sound s = CreateSound(path, false, true, true, 12700, 12700, "") 
    call SetSoundVolume(s, 100) 
    call AttachSoundToUnit(s, u) 
    call StartSound(s) 
    call KillSoundWhenDone(s) 
endfunction 

//====================================================================================  
///======= Ultils   

function CreateImageEx takes string imagePath, real size, real x, real y, real z, boolean showImage returns image
    local image i = CreateImage(imagePath, size, size, 0, x - (size / 2), y - (size / 2), z, 0, 0, 0, 2)
    call SetImageRenderAlways(i, true)
    call ShowImage(i, showImage)
    return i
endfunction


