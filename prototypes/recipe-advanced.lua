-- Gleba advanced recipes
-- Slurry culturization
local slurry_culturization = {
    type = "recipe",
    name = "sr-slurry-culturization",
    category = "organic",
    surface_conditions =
    {
        {
            property = "pressure",
            min = 2000,
            max = 2000
        }
    },
    subgroup = "agriculture-processes",
    order = "f[reprocessing]-a[slurry-culturization]",
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
    auto_recycle = false,
    energy_required = 4,
    ingredients =
    {
        {type = "fluid", name="sr-mineral-slurry",  amount = 200},
        {type = "fluid", name="lubricant",          amount = 40},
        {type = "item", name="iron-bacteria",       amount = 10},
        {type = "item", name="copper-bacteria",     amount = 10},
        {type = "item", name="bioflux",             amount = 2}
    },
    results =
    {
        {type = "item", name="stone",               amount_min = 15, amount_max = 25, show_details_in_recipe_tooltip = false},
        {type = "item", name="iron-bacteria",       amount_min = 6, amount_max = 10, show_details_in_recipe_tooltip = false},
        {type = "item", name="copper-bacteria",     amount_min = 6, amount_max = 10, show_details_in_recipe_tooltip = false},
        {type = "fluid", name="sr-cultured-slurry", amount = 280}
    },
    allow_productivity = true,
    main_product = "",
    enabled = false,
    allow_decomposition = false,
    crafting_machine_tint =
    {
        primary = {r = 0.598, g = 0.274, b = 0.501, a = 0.502}, -- #98457f80
        secondary = {r = 0.524, g = 0.499, b = 0.521, a = 0.502}, -- #857f8480
        tertiary = {r = 0.716, g = 0.716, b = 0.716, a = 0.502}, -- #b6b6b680
        quaternary = {r = 0.768, g = 0.487, b = 0.684, a = 0.502}, -- #c37cae80
    }
}

-- Scrap bioleech wash
local scrap_bioleech_wash = {
    type = "recipe",
    name = "sr-scrap-bioleech-wash",
    category = "reprocessor",
    surface_conditions =
    {
        {
            property = "pressure",
            min = 2000,
            max = 2000
        }
    },
    subgroup = "agriculture-processes",
    order = "f[reprocessing]-b[scrap-bioleech-wash]",
    icons = {
        {
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__space-age__/graphics/icons/scrap.png",
            shift = {-4, -4},
            scale = 0.3
        },
        {
            icon = "__space-age__/graphics/icons/scrap.png",
            scale = 0.3
        },
        {
            icon = "__space-age__/graphics/icons/scrap.png",
            shift = {4, 4},
            scale = 0.3
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        },
        {
            icon = "__quality__/graphics/icons/quality-module-3.png",
            shift = {6, 6},
            scale = 0.25
        }
    },
    auto_recycle = false,
    energy_required = 2,
    ingredients =
    {
        {type = "fluid", name="sr-cultured-slurry", amount = 70},
        {type = "item", name="holmium-plate",       amount = 60}
    },
    results =
    {
        {type = "item", name="holmium-plate",           amount_min = 36, amount_max = 60, show_details_in_recipe_tooltip = false},
        {type = "item", name="iron-ore",                amount_min = 2, amount_max = 8, show_details_in_recipe_tooltip = false},
        {type = "item", name="copper-ore",              amount_min = 2, amount_max = 8, show_details_in_recipe_tooltip = false},
        {type = "fluid", name="sr-biological-waste",    amount = 60}
    },
    allow_productivity = false,
    main_product = "",
    enabled = false,
    allow_decomposition = false
}

-- Tungsten bioleech wash
local tungsten_bioleech_wash = {
    type = "recipe",
    name = "sr-tungsten-bioleech-wash",
    category = "reprocessor",
    surface_conditions =
    {
        {
            property = "pressure",
            min = 2000,
            max = 2000
        }
    },
    subgroup = "agriculture-processes",
    order = "f[reprocessing]-c[tungsten-bioleech-wash]",
    icons = {
        {
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__space-age__/graphics/icons/tungsten-ore.png",
            shift = {-4, -4},
            scale = 0.3
        },
        {
            icon = "__space-age__/graphics/icons/tungsten-ore.png",
            scale = 0.3
        },
        {
            icon = "__space-age__/graphics/icons/tungsten-ore.png",
            shift = {4, 4},
            scale = 0.3
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        },
        {
            icon = "__quality__/graphics/icons/quality-module-3.png",
            shift = {6, 6},
            scale = 0.25
        }
    },
    auto_recycle = false,
    energy_required = 2,
    ingredients =
    {
        {type = "fluid", name="sr-cultured-slurry", amount = 70},
        {type = "item", name="tungsten-ore",        amount = 60}
    },
    results =
    {
        {type = "item", name="tungsten-ore",            amount_min = 36, amount_max = 60, show_details_in_recipe_tooltip = false},
        {type = "item", name="iron-ore",                amount_min = 4, amount_max = 10, show_details_in_recipe_tooltip = false},
        {type = "item", name="copper-ore",              amount_min = 4, amount_max = 10, show_details_in_recipe_tooltip = false},
        {type = "fluid", name="sr-biological-waste",    amount = 60}
    },
    allow_productivity = false,
    main_product = "",
    enabled = false,
    allow_decomposition = false
}

-- Uranium bioleech wash
local uranium_bioleech_wash = {
    type = "recipe",
    name = "sr-uranium-bioleech-wash",
    category = "reprocessor",
    surface_conditions =
    {
        {
            property = "pressure",
            min = 2000,
            max = 2000
        }
    },
    subgroup = "agriculture-processes",
    order = "f[reprocessing]-d[uranium-bioleech-wash]",
    icons = {
        {
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__base__/graphics/icons/uranium-ore.png",
            shift = {-4, -4},
            scale = 0.3
        },
        {
            icon = "__base__/graphics/icons/uranium-ore.png",
            scale = 0.3
        },
        {
            icon = "__base__/graphics/icons/uranium-ore.png",
            shift = {4, 4},
            scale = 0.3
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        },
        {
            icon = "__quality__/graphics/icons/quality-module-3.png",
            shift = {6, 6},
            scale = 0.25
        }
    },
    auto_recycle = false,
    energy_required = 2,
    ingredients =
    {
        {type = "fluid", name="sr-cultured-slurry", amount = 70},
        {type = "item", name="uranium-ore",         amount = 60}
    },
    results =
    {
        {type = "item", name="uranium-ore",             amount_min = 36, amount_max = 60, show_details_in_recipe_tooltip = false},
        {type = "item", name="iron-ore",                amount_min = 4, amount_max = 10, show_details_in_recipe_tooltip = false},
        {type = "item", name="copper-ore",              amount_min = 4, amount_max = 10, show_details_in_recipe_tooltip = false},
        {type = "fluid", name="sr-biological-waste",    amount = 60}
    },
    allow_productivity = false,
    main_product = "",
    enabled = false,
    allow_decomposition = false
}

-- Biological waste filtering
local waste_filtering = {
    type = "recipe",
    name = "sr-biological-waste-filtering",
    category = "chemistry",
    surface_conditions =
    {
        {
            property = "pressure",
            min = 2000,
            max = 2000
        }
    },
    subgroup = "agriculture-processes",
    order = "f[reprocessing]-f[biological-waste-filtering]",
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
    auto_recycle = false,
    energy_required = 10,
    ingredients =
    {
        {type = "fluid", name="sr-biological-waste",    amount = 240},
        {type = "item", name="carbon-fiber",            amount = 1}
    },
    results =
    {
        {type = "item", name="spoilage",            amount_min = 15, amount_max = 25, show_details_in_recipe_tooltip = false},
        {type = "item", name="nutrients",           amount_min = 4, amount_max = 12, show_details_in_recipe_tooltip = false},
        {type = "fluid", name="water",              amount = 160,                    show_details_in_recipe_tooltip = false},
        {type = "fluid", name="holmium-solution",   amount = 80,                     show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true,
    main_product = "",
    enabled = false,
    allow_decomposition = false,
    crafting_machine_tint =
    {
        primary = {r = 0.598, g = 0.274, b = 0.501, a = 0.502}, -- #98457f80
        secondary = {r = 0.524, g = 0.499, b = 0.521, a = 0.502}, -- #857f8480
        tertiary = {r = 0.716, g = 0.716, b = 0.716, a = 0.502}, -- #b6b6b680
        quaternary = {r = 0.768, g = 0.487, b = 0.684, a = 0.502}, -- #c37cae80
    }
}

-- Vulcanus advanced recipes
-- Lava agglomeration recipe
local lava_agglomeration = {
    type = "recipe",
    name = "sr-lava-agglomeration",
    category = "reprocessor",
    surface_conditions =
    {
        {
            property = "pressure",
            min = 4000,
            max = 4000
        }
    },
    subgroup = "vulcanus-processes",
    order = "a[melting]-b[lava-a]",
    icons = {
        {
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
            tint = {215, 82, 13},
            shift = {-4, -4},
            scale = 0.3
        },
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
            tint = {215, 82, 13},
            scale = 0.3
        },
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
            tint = {215, 82, 13},
            shift = {4, 4},
            scale = 0.3
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        }
    },
    enabled = false,
    auto_recycle = false,
    allow_decomposition = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "calcite", amount = 3},
        {type = "fluid", name = "lava", amount = 800}
    },
    results = {
        {type = "item", name = "sr-iron-scoria-chunk",      amount_min = 3, amount_max = 6, show_details_in_recipe_tooltip = false},
        {type = "item", name = "sr-copper-scoria-chunk",    amount_min = 3, amount_max = 6, show_details_in_recipe_tooltip = false},
        {type = "item", name = "sr-mineral-scoria-chunk",   amount_min = 1, amount_max = 3, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "lava",                     amount_min = 40, amount_max = 120, show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true
}

-- Iron scoria purification
local iron_scoria_purification = {
    type = "recipe",
    name = "sr-iron-scoria-purification",
    category = "metallurgy",
    surface_conditions =
    {
        {
            property = "pressure",
            min = 4000,
            max = 4000
        }
    },
    subgroup = "vulcanus-processes",
    order = "a[melting]-d[a-iron-scoria]",
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
    enabled = false,
    auto_recycle = false,
    allow_decomposition = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "sr-iron-scoria-chunk", amount = 3},
        {type = "fluid", name = "sulfuric-acid", amount = 10}
    },
    results = {
        {type = "item", name = "iron-ore",      amount_min = 4, amount_max = 9, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "molten-iron",  amount = 180,                   show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "steam",        amount = 100,                   show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true
}

-- Copper scoria purification
local copper_scoria_purification = {
    type = "recipe",
    name = "sr-copper-scoria-purification",
    category = "metallurgy",
    surface_conditions =
    {
        {
            property = "pressure",
            min = 4000,
            max = 4000
        }
    },
    subgroup = "vulcanus-processes",
    order = "a[melting]-d[b-copper-scoria]",
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
    enabled = false,
    auto_recycle = false,
    allow_decomposition = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "sr-copper-scoria-chunk", amount = 3},
        {type = "fluid", name = "sulfuric-acid", amount = 10}
    },
    results = {
        {type = "item", name = "copper-ore",        amount_min = 4, amount_max = 9, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "molten-copper",    amount = 180,                   show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "steam",            amount = 100,                   show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true
}

-- Mineral scoria melting
local mineral_scoria_melting = {
    type = "recipe",
    name = "sr-mineral-scoria-melting",
    category = "metallurgy",
    surface_conditions =
    {
        {
            property = "pressure",
            min = 4000,
            max = 4000
        }
    },
    subgroup = "vulcanus-processes",
    order = "a[melting]-d[c-mineral-scoria]",
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
    enabled = false,
    auto_recycle = false,
    allow_decomposition = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "sr-mineral-scoria-chunk", amount = 3},
        {type = "fluid", name = "sulfuric-acid", amount = 10}
    },
    results = {
        {type = "item", name = "stone",     amount_min = 30, amount_max = 45, show_details_in_recipe_tooltip = false},
        {type = "item", name = "calcite",   amount_min = 1, amount_max = 2, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "lava",     amount = 300,                   show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "steam",    amount = 100,                   show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true
}

-- Iron chunk smelting
local iron_chunk_smelting = {
    type = "recipe",
    name = "sr-iron-chunk-smelting",
    category = "smelting",
    subgroup = "vulcanus-processes",
    order = "a[melting]-d[e-iron-chunk]",
    enabled = true,
    auto_recycle = false,
    allow_decomposition = false,
    energy_required = 8,
    ingredients = {{type ="item", name ="sr-cooled-iron-chunk", amount = 1}},
    results = {{type="item", name="iron-plate", amount=5}},
    allow_productivity = true
}

-- Copper chunk smelting
local copper_chunk_smelting = {
    type = "recipe",
    name = "sr-copper-chunk-smelting",
    category = "smelting",
    subgroup = "vulcanus-processes",
    order = "a[melting]-d[f-copper-chunk]",
    enabled = true,
    auto_recycle = false,
    allow_decomposition = false,
    energy_required = 8,
    ingredients = {{type ="item", name ="sr-cooled-copper-chunk", amount = 1}},
    results = {{type="item", name="copper-plate", amount=5}},
    allow_productivity = true
}

-- Mineral chunk recycling
local mineral_chunk_recycling = {
    type = "recipe",
    name = "sr-mineral-chunk-recycling",
    category = "recycling",
    subgroup = "vulcanus-processes",
    order = "a[melting]-d[g-mineral-chunk]",
    enabled = true,
    auto_recycle = false,
    allow_decomposition = false,
    energy_required = 1,
    ingredients = {{type = "item", name = "sr-cooled-mineral-chunk", amount = 1}},
    results = {{type = "item", name = "stone",       amount_min = 8, amount_max = 12, show_details_in_recipe_tooltip = false}}
}

data:extend({
    slurry_culturization,
    scrap_bioleech_wash,
    tungsten_bioleech_wash,
    uranium_bioleech_wash,
    waste_filtering,
    lava_agglomeration,
    iron_scoria_purification,
    copper_scoria_purification,
    mineral_scoria_melting,
    iron_chunk_smelting,
    copper_chunk_smelting,
    mineral_chunk_recycling,
})