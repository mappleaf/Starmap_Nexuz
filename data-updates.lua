-- if mods["Starmap_Nexuz"] then
--     local star = data.raw["utility-sprites"]["default"]["starmap_star"]
--     if star then
--         for _, layer in pairs(star.layers) do
--             if layer.filename == "__Starmap_Nexuz__/graphics/icons/starmap_startrails_nexuz.png" then
--                 layer.shift = {8468, -7696}
--             end
--         end
--     else
--         log("how?")
--     end
-- end

-- if mods["Starmap_Nexuz"] and mods["tenebris"] then
--     local star = data.raw["utility-sprites"]["default"]["starmap_star"]
--     if star then
--         for _, layer in pairs(star.layers) do
--             if layer.filename == "__Starmap_Nexuz__/graphics/icons/starmap_startrails_nexuz_Tenebris.png" then
--                 layer.shift = {8468, -7696}
--             end
--         end
--     else
--         log("how?")
--     end
-- end

-- if mods["Starmap_Nexuz"] and mods["maraxsis"] then
--     local star = data.raw["utility-sprites"]["default"]["starmap_star"]
--     if star then
--         for _, layer in pairs(star.layers) do
--             if layer.filename == "__Starmap_Nexuz__/graphics/icons/starmap_startrails_nexuz_Maraxsis.png" then
--                 layer.shift = {8468, -7696}
--             end
--         end
--     else
--         log("how?")
--     end
-- end

if mods["tenebris"] then  
    local tenebris = data.raw["planet"]["tenebris"]
    
    if tenebris then
        tenebris.orientation = 0.14
        tenebris.distance = 305
        tenebris.draw_orbit = false
    else
        log("Tenebris planet not found in the Tenebris mod.")
    end
end

if mods["maraxsis"] then
    local maraxsis = data.raw["planet"]["maraxsis"]
    
    if maraxsis then
        maraxsis.orientation = 0.12
        maraxsis.distance = 330
        maraxsis.draw_orbit = false
    else
        log("Maraxsis planet not found in the Maraxsis mod.")
    end
    
    local maraxsis_trench = data.raw["planet"]["maraxsis-trench"]
    
    if maraxsis_trench then
        maraxsis_trench.orientation = 0.119
        maraxsis_trench.distance = 328
        maraxsis_trench.draw_orbit = false
        maraxsis_trench.label_orientation = 0.7
        maraxsis_trench.starmap_icon = "__Starmap_Nexuz__/graphics/icons/maraxsis-trench.png"
    else
        log("Maraxsis Trench planet not found in the Maraxsis mod.")
    end
end

-- if mods["naufulglebunusilo"] then
--     local naufulglebunusilo = data.raw["planet"]["naufulglebunusilo"]
    
--     if naufulglebunusilo then
--         naufulglebunusilo.orientation = 0.158
--         naufulglebunusilo.distance = 170
--         naufulglebunusilo.draw_orbit = false
--     else
--         log("Naufulglebunusilo planet not found in the Naufulglebunusilo mod.")
--     end
-- end

-- if mods["factorissimo-2-notnotmelon"] then
--     for _, planet in pairs(data.raw.planet) do
--         if planet.name ~= "factory-travel-surface" then
--             local factory_floor_name = planet.name .. "-factory-floor"
--             local factory_floor = data.raw["planet"][factory_floor_name]

--             if factory_floor then
--                 factory_floor.distance = planet.distance - (2.5 * (factory_floor.magnitude or 1))
--                 factory_floor.orientation = planet.orientation
--                 factory_floor.starmap_icon = "__factorissimo-2-notnotmelon__/graphics/starmap/factory-floor-" .. math.floor((planet.orientation or 0) * 64 + 32) % 64 .. ".png"
--             end
--         end
--     end
-- end

data.raw["planet"]["aquilo"]["distance"] = 75

data.raw["space-location"]["solar-system-edge"]["distance"] = 140

data.raw["space-location"]["shattered-planet"]["distance"] = 216
data.raw["space-location"]["shattered-planet"]["orientation"] = 0.275
data.raw["space-location"]["shattered-planet"]["magnitude"] = 0.9

-- local planet = table.deepcopy(data.raw["planet"]["nauvis"])
-- planet.name = "cube2"  
-- planet.distance = 1035  
-- planet.orientation = 0.13  
-- planet.localised_name = "?"  
-- planet.draw_orbit = false  
-- planet.icon = "__Starmap_Nexuz__/graphics/icons/cube.png"  
-- planet.icon_size = 1381  
-- planet.starmap_icon = "__Starmap_Nexuz__/graphics/icons/cube.png"  
-- planet.starmap_icon_size = 1381  
-- planet.magnitude = 10.0  
-- data:extend { planet }

-- local planet = table.deepcopy(data.raw["planet"]["nauvis"])
-- planet.name = "cube1"  
-- planet.distance = 1000  
-- planet.orientation = 0.625  
-- planet.localised_name = "?"  
-- planet.draw_orbit = false  
-- planet.icon = "__Starmap_Nexuz__/graphics/icons/cube.png"  
-- planet.icon_size = 1381  
-- planet.starmap_icon = "__Starmap_Nexuz__/graphics/icons/cube.png"  
-- planet.starmap_icon_size = 1381  
-- planet.magnitude = 10.0  
-- data:extend { planet }
