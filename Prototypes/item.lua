-- Scrap Reprocessor
local scrap_reprocessor = {
    type = "item",
    name = "sr-scrap-reprocessor",
    localised_name = {"Scrap-Reprocessor-Items-and-Entities.scrap-reprocessor"},
    icon = "__scrap-reprocessor__/graphics/icons/chemical-stager-icon.png",
    icon_size = 64,
    subgroup = "smelting-machine",
    order = "d[reprocessor]",
    place_result = "sr-scrap-reprocessor",
    stack_size = 10,
    weight = 200 * kg
}
---@cast scrap_reprocessor data.ItemPrototype

-- Electronic Scrap
local electronic_scrap = {
    type = "item",
    name = "sr-electronic-scrap",
    localised_name = {"Scrap-Reprocessor-Items-and-Entities.electronic-scrap"},
    icons = {
      {
        icon = "__space-age__/graphics/icons/scrap.png",
      },
      {
        icon = "__base__/graphics/icons/processing-unit.png",
        shift = {4, 4},
        scale = 0.4
      }
    },
    icon_size = 64,
    subgroup = "fulgora-processes",
    order = "a[scrap]-b[electronic-scrap]",
    stack_size = 50,
    default_import_location = "fulgora",
    weight = 2*kg
}
---@cast electronic_scrap data.ItemPrototype

-- Metallic Scrap
local metallic_scrap = {
    type = "item",
    name = "sr-metallic-scrap",
    localised_name = {"Scrap-Reprocessor-Items-and-Entities.metallic-scrap"},
    icons = {
      {
        icon = "__space-age__/graphics/icons/scrap.png",
      },
      {
        icon = "__base__/graphics/icons/steel-plate.png",
        shift = {4, 4},
        scale = 0.4
      }
    },
    icon_size = 64,
    subgroup = "fulgora-processes",
    order = "a[scrap]-c[metallic-scrap]",
    stack_size = 50,
    default_import_location = "fulgora",
    weight = 2*kg
}
---@cast metallic_scrap data.ItemPrototype

-- Architectural Scrap
local architectural_scrap = {
    type = "item",
    name = "sr-architectural-scrap",
    localised_name = {"Scrap-Reprocessor-Items-and-Entities.architectural-scrap"},
    icons = {
      {
        icon = "__space-age__/graphics/icons/scrap.png",
      },
      {
        icon = "__base__/graphics/icons/low-density-structure.png",
        shift = {4, 4},
        scale = 0.4
      }
    },
    icon_size = 64,
    subgroup = "fulgora-processes",
    order = "a[scrap]-d[architectural-scrap]",
    stack_size = 50,
    default_import_location = "fulgora",
    weight = 2*kg
}
---@cast architectural_scrap data.ItemPrototype

-- Mineral Slurry
local mineral_slurry = {
    type = "fluid",
    name = "sr-mineral-slurry",
    localised_name = {"Scrap-Reprocessor-Items-and-Entities.mineral-slurry"},
    icon = "__space-age__/graphics/icons/fluid/holmium-solution.png",
    icon_size = 64,
    subgroup = "fluid",
    order = "b[new-fluid]-c[fulgora]-b[mineral-slurry]",
    default_temperature = 15,
    max_temperature = 2000,
    heat_capacity = "0.01kJ",
    base_color = {150, 20, 100},
    flow_color = {150, 20, 100},
    auto_barrel = false
}
---@cast mineral_slurry data.ItemPrototype

data:extend({
    scrap_reprocessor,
    electronic_scrap,
    metallic_scrap,
    architectural_scrap,
    mineral_slurry,
})