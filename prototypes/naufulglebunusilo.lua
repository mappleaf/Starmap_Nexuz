if mods["naufulglebunusilo"] then
    local naufulglebunusilo = data.raw["planet"]["naufulglebunusilo"]
    
    if naufulglebunusilo then
        naufulglebunusilo.orientation = 0.115
        naufulglebunusilo.distance = 208
        naufulglebunusilo.draw_orbit = false
    end
        local aquilotonaufulglebunusilo = data.raw["space-connection"]["aquilo-naufulglebunusilo"]
if aquilotonaufulglebunusilo then
    aquilotonaufulglebunusilo.from = "sye-nexuz-sw"
end
local fulgoratonaufulglebunusilo = data.raw["space-connection"]["fulgora-naufulglebunusilo"]

if fulgoratonaufulglebunusilo then
    -- 如果有这个航线，删除或者禁用它
    data.raw["space-connection"]["fulgora-naufulglebunusilo"] = nil  -- 删除航线
end
    else
        log("Naufulglebunusilo planet not found in the Naufulglebunusilo mod.")
    end