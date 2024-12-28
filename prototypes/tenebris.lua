if mods["tenebris"] then  
    local tenebris = data.raw["planet"]["tenebris"]
    
    if tenebris then
        tenebris.orientation = 0.14
        tenebris.distance = 305
        tenebris.draw_orbit = false
    end
    
    local modify_space_connection = settings.startup["modify_space_connection"].value -- 如果开启新的星际旅行路线，则修改 space-connection
    if modify_space_connection then

        local ssetotenebris = data.raw["space-connection"]["solar-system-edge-tenebris"]
        if ssetotenebris then
            ssetotenebris.from = "sye-nexuz-sw"
        end
    end
else
    log("Tenebris planet not found in the Tenebris mod.")
end
