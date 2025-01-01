if mods["Factorio-Tiberium"] then
    -- 获取 Arrakis 星球
    local planet = data.raw["planet"]["tiber"]
    
    if planet then

        -- 修改星球属性
        planet.orientation = 0.147 --角度
        planet.distance = 203 --距离
        planet.draw_orbit = false --星轨

        if data.raw["utility-sprites"] and data.raw["utility-sprites"]["default"] and data.raw["utility-sprites"]["default"]["starmap_star"] then
            table.insert(data.raw["utility-sprites"]["default"]["starmap_star"].layers, {
              filename = "__Starmap_Nexuz__/graphics/icons/starmap_startrails_nexuz_tiber.png", -- 替换为你的文件路径
              size = 4096,
              scale = 1,
              shift = {4234, -3848},
            })
          end
          


    else
        log("tiber planet data not found in the 'Factorio-Tiberium' mod.")
    end

    -- 获取是否启用新的星际旅行路线设置
    local modify_space_connection = settings.startup["modify_space_connection"].value

    -- 如果开启新的星际旅行路线，则修改 space-connection
    if modify_space_connection then
        local tibertofulgora = data.raw["space-connection"]["tiber-fulgora"]
        if tibertofulgora then
		    tibertofulgora.to = "sye-nexuz-sw"
        else
            log("Space connection 'nauvis-tiber' not found.")
        end

        local tibertonauvis = data.raw["space-connection"]["tiber-nauvis"]
        if tibertonauvis then            -- 如果有这个航线，删除或者禁用它
          data.raw["space-connection"]["tiber-nauvis"] = nil  -- 删除航线
        end

        local tibertovulcanus = data.raw["space-connection"]["tiber-vulcanus"]
        if tibertovulcanus then            -- 如果有这个航线，删除或者禁用它
          data.raw["space-connection"]["tiber-vulcanus"] = nil  -- 删除航线
        end

    else
        log("New interstellar travel route is disabled. No modification to space-connection.")
    end
else
    log("Planet tiber mod not found.")
end
