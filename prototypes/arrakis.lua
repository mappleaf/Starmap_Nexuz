if mods["planet-arrakis"] then
    -- 获取 Arrakis 星球
    local planet = data.raw["planet"]["arrakis"]
    
    if planet then

        -- 修改星球属性
        planet.orientation = 0.133
        planet.distance = 164
        planet.draw_orbit = false
    else
        log("Arrakis planet data not found in the 'planet-arrakis' mod.")
    end

    -- 获取是否启用新的星际旅行路线设置
    local modify_space_connection = settings.startup["modify_space_connection"].value

    -- 如果开启新的星际旅行路线，则修改 space-connection
    if modify_space_connection then
        local nauvistoarrakis = data.raw["space-connection"]["nauvis-arrakis"]
        if nauvistoarrakis then
            nauvistoarrakis.from = "sye-nexuz-sw"
        else
            log("Space connection 'nauvis-arrakis' not found.")
        end
    else
        log("New interstellar travel route is disabled. No modification to space-connection.")
    end
else
    log("Planet Arrakis mod not found.")
end
