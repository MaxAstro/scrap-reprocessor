-- Scrap Reprocessor
local scrap_reprocessor = {
    type = "item",
    name = "scrap-reprocessor",
    icon = "",
    icon_size = 64,
    subgroup = "smelting-machine",
    order = "d[reprocessor]",
    place_result = "scrap-reprocessor",
    stack_size = 10
}
---@cast scrap_reprocessor data.ItemPrototype

data:extend{scrap_reprocessor}