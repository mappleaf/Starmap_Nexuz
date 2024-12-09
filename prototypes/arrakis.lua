if mods["planet-arrakis"] then  
    local planet = data.raw["planet"]["arrakis"]
    
    if planet then
        planet.orientation = 0.133
        planet.distance = 164
        planet.draw_orbit = false
    end
    
    local fulgoratotenebris = data.raw["space-connection"]["nauvis-arrakis"]
    if fulgoratotenebris then
        fulgoratotenebris.from = "sye-nexuz-sw"
    end
else
    log("arrakis planet not found in the planet-arrakis mod.")
end
