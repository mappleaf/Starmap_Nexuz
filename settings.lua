-- settings.lua
data:extend({
    {
        type = "int-setting",
        name = "space-connection-gleba-sye-nauvis-ne-length",  -- 第一个连接的设置项
        localised_name = "The distance from Gleba to Nauvis solar system edge-NE",
        setting_type = "startup",  -- 启动时加载
        default_value = 40000,  -- 默认值为 40000
        minimum_value = 1,  -- 最小值
        maximum_value = 148257142,  -- 最大值
        order = "a[space-connection-gleba-sye-nauvis-ne-length]"  -- 排序
    },
    {
        type = "int-setting",
        name = "space-connection-sye-nauvis-ne-sye-nexuz-sw-length",  -- 第二个连接的设置项
        localised_name = "The distance from Nauvis solar system edge-NE to Nexuz solar system edge-SW",
        setting_type = "startup",  -- 启动时加载
        default_value = 60000,  -- 默认值为 60000
        minimum_value = 1,  -- 最小值
        maximum_value = 148257142,  -- 最大值
        order = "b[space-connection-sye-nauvis-ne-sye-nexuz-sw-length]"  -- 排序
    }
})
