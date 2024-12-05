if mods["erm_toss"] then
    local aiur = data.raw["planet"]["aiur"]
    
    if aiur then
        aiur.orientation = 0.155
        aiur.distance = 181
        aiur.draw_orbit = false
        aiur.starmap_icon = "__Starmap_Nexuz__/graphics/icons/toss.png"  
        aiur.starmap_icon_size = 559  
    end
        local nauvistoaiur = data.raw["space-connection"]["nauvis-aiur"]
if nauvistoaiur then
    nauvistoaiur.from = "sye-nexuz-sw"
end
local fulgoratoaiur = data.raw["space-connection"]["fulgora-aiur"]

if fulgoratoaiur then
    -- 如果有这个航线，删除或者禁用它
    data.raw["space-connection"]["fulgora-aiur"] = nil  -- 删除航线
end
    else
        log("aiur planet not found in the erm_toss mod.")
    end