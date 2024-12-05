if mods["tenebris"] then  
    local tenebris = data.raw["planet"]["tenebris"]
    
    if tenebris then
        tenebris.orientation = 0.14
        tenebris.distance = 305
        tenebris.draw_orbit = false
    end
    
    local fulgoratotenebris = data.raw["space-connection"]["solar-system-edge-tenebris"]
    if fulgoratotenebris then
        fulgoratotenebris.from = "sye-nexuz-sw"
    end
else
    log("Tenebris planet not found in the Tenebris mod.")
end
