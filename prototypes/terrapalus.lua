if mods["terrapalus"] then  
    local terrapalus = data.raw["planet"]["terrapalus"]
    
    if terrapalus then
        terrapalus.orientation = 0.185
        terrapalus.distance = 21
    end
else
    log("Terrapalus planet not found in the Terrapalus mod.")
end
