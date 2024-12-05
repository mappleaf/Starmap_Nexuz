if mods["erm_zerg"] then
    local char = data.raw["planet"]["char"]
    
    if char then
        char.orientation = 0.138
        char.distance = 165
        char.draw_orbit = false
        char.starmap_icon = "__Starmap_Nexuz__/graphics/icons/zerg.png"  
        char.starmap_icon_size = 686  
    end
        local nauvistochar = data.raw["space-connection"]["nauvis-char"]
if nauvistochar then
    nauvistochar.from = "sye-nexuz-sw"
end
local vulcanustochar = data.raw["space-connection"]["vulcanus-char"]

if vulcanustochar then
    -- 如果有这个航线，删除或者禁用它
    data.raw["space-connection"]["vulcanus-char"] = nil  -- 删除航线
end
    else
        log("char planet not found in the erm_zerg mod.")
    end


    
