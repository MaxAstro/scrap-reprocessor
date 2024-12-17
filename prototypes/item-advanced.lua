-- Gleba items
-- Cultured Slurry
local cultured_slurry = {
    type = "fluid",
    name = "sr-cultured-slurry",
    icons = {
        {
            icon = "__base__/graphics/icons/fluid/water.png",
            tint = {170, 51, 106},
        },
        {
            icon = "__space-age__/graphics/icons/copper-bacteria.png",
            tint = {170, 51, 106, 0.7},
            shift = {0, 4},
            scale = 0.4
        }
    },
    icon_size = 64,
    subgroup = "fluid",
    order = "b[new-fluid]-c[fulgora]-c[cultured-slurry]",
    default_temperature = 15,
    max_temperature = 2000,
    heat_capacity = "0.01kJ",
    base_color = {150, 20, 100},
    flow_color = {150, 20, 100},
    auto_barrel = false
}

-- Biological waste
local biological_waste = {
    type = "fluid",
    name = "sr-biological-waste",
    icons = {
        {
            icon = "__base__/graphics/icons/fluid/water.png",
            tint = {63, 41, 21},
        },
        {
            icon = "__space-age__/graphics/icons/spoilage.png",
            tint = {63, 41, 21, 0.7},
            shift = {0, 4},
            scale = 0.4
        }
    },
    icon_size = 64,
    subgroup = "fluid",
    order = "b[new-fluid]-c[fulgora]-d[biological-waste]",
    default_temperature = 15,
    max_temperature = 2000,
    heat_capacity = "0.01kJ",
    base_color = {90, 57, 27},
    flow_color = {90, 57, 27},
    auto_barrel = false
}

-- Iron scoria chunk
local iron_scoria_chunk = {
    type = "item",
    name = "sr-iron-scoria-chunk",
    icons = {
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
            tint = {215, 82, 13},
        },
        {
            icon = "__base__/graphics/icons/iron-ore.png",
            shift = {4, 4},
            scale = 0.3
        }
    },
    icon_size = 64,
    subgroup = "vulcanus-processes",
    order = "a[scrap]-a[a-iron-scoria-chunk]",
    stack_size = 10,
    default_import_location = "vulcanus",
    weight = 10*kg,
    spoil_ticks = 2 * minute,
    spoil_result = "sr-cooled-iron-chunk"
}

-- Cooled iron chunk
local cooled_iron_chunk = {
    type = "item",
    name = "sr-cooled-iron-chunk",
    icons = {
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
        },
        {
            icon = "__base__/graphics/icons/iron-ore.png",
            shift = {4, 4},
            scale = 0.3
        }
    },
    icon_size = 64,
    subgroup = "vulcanus-processes",
    order = "a[scrap]-a[b-cooled-iron-chunk]",
    stack_size = 10,
    default_import_location = "vulcanus",
    weight = 10*kg
}

-- Copper scoria chunk
local copper_scoria_chunk = {
    type = "item",
    name = "sr-copper-scoria-chunk",
    icons = {
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
            tint = {215, 82, 13},
        },
        {
            icon = "__base__/graphics/icons/copper-ore.png",
            shift = {4, 4},
            scale = 0.3
        }
    },
    icon_size = 64,
    subgroup = "vulcanus-processes",
    order = "a[scrap]-b[copper-scoria-chunk]",
    stack_size = 10,
    default_import_location = "vulcanus",
    weight = 10*kg,
    spoil_ticks = 2 * minute,
    spoil_result = "sr-cooled-copper-chunk"
}

-- Cooled copper chunk
local cooled_copper_chunk = {
    type = "item",
    name = "sr-cooled-copper-chunk",
    icons = {
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
        },
        {
            icon = "__base__/graphics/icons/copper-ore.png",
            shift = {4, 4},
            scale = 0.3
        }
    },
    icon_size = 64,
    subgroup = "vulcanus-processes",
    order = "a[scrap]-b[b-cooled-copper-chunk]",
    stack_size = 10,
    default_import_location = "vulcanus",
    weight = 10*kg
}

-- Mineral scoria chunk
local mineral_scoria_chunk = {
    type = "item",
    name = "sr-mineral-scoria-chunk",
    icons = {
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
            tint = {215, 82, 13},
        },
        {
            icon = "__base__/graphics/icons/stone.png",
            shift = {4, 4},
            scale = 0.3
        }
    },
    icon_size = 64,
    subgroup = "vulcanus-processes",
    order = "a[scrap]-c[mineral-scoria-chunk]",
    stack_size = 10,
    default_import_location = "vulcanus",
    weight = 10*kg,
    spoil_ticks = 2 * minute,
    spoil_result = "sr-cooled-mineral-chunk"
}

-- Cooled mineral chunk
local cooled_mineral_chunk = {
    type = "item",
    name = "sr-cooled-mineral-chunk",
    icons = {
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
        },
        {
            icon = "__base__/graphics/icons/stone.png",
            shift = {4, 4},
            scale = 0.3
        }
    },
    icon_size = 64,
    subgroup = "vulcanus-processes",
    order = "a[scrap]-c[b-cooled-mineral-chunk]",
    stack_size = 10,
    default_import_location = "vulcanus",
    weight = 10*kg
}

data:extend({
    cultured_slurry,
    biological_waste,
    iron_scoria_chunk,
    cooled_iron_chunk,
    copper_scoria_chunk,
    cooled_copper_chunk,
    mineral_scoria_chunk,
    cooled_mineral_chunk,
})