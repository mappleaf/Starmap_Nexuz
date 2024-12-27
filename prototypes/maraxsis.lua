if mods["maraxsis"] then
    local maraxsis = data.raw["planet"]["maraxsis"]
    
    if maraxsis then
        maraxsis.orientation = 0.120
        maraxsis.distance = 330
        maraxsis.draw_orbit = false
    else
        log("Maraxsis planet not found in the Maraxsis mod.")
    end

    local modify_space_connection = settings.startup["modify_space_connection"].value -- 如果开启新的星际旅行路线，则修改 space-connection
    if modify_space_connection then

        local maraxsis_trench = data.raw["planet"]["maraxsis-trench"]
        if maraxsis_trench then
                maraxsis_trench.orientation = 0.119
                maraxsis_trench.distance = 328
                maraxsis_trench.draw_orbit = false
                maraxsis_trench.label_orientation = 0.7
                maraxsis_trench.starmap_icon = "__Starmap_Nexuz__/graphics/icons/maraxsis-trench.png"
            
                local vulcanustomaraxsis = data.raw["space-connection"]["vulcanus-maraxsis"]
                if vulcanustomaraxsis then
                    vulcanustomaraxsis.from = "sye-nexuz-sw"
                end
        end
    end        
end