-- Architectural scrap output amount setting
local architectural_scrap_output_setting = settings.startup["scrap-reprocessor-architectural-setting"].value
local architectural_scrap_slurry_min = 15
local architectural_scrap_slurry_max = 25
if architectural_scrap_output_setting == "boosted" then
    architectural_scrap_slurry_min = 35
    architectural_scrap_slurry_max = 55
end

-- Innate quality setting
local scrap_reprocesser_ingredients = {}
if settings.startup["scrap-reprocessor-quality-setting"].value == "none" then
    scrap_reprocesser_ingredients = {
        {type = "item", name = "holmium-plate", amount = 50},
        {type = "item", name = "steel-plate", amount = 100},
        {type = "item", name = "processing-unit", amount = 25},
        {type = "item", name = "superconductor", amount = 50},
        {type = "item", name = "refined-concrete", amount = 100}
    }
else
    scrap_reprocesser_ingredients = {
        {type = "item", name = "holmium-plate", amount = 50},
        {type = "item", name = "steel-plate", amount = 100},
        {type = "item", name = "processing-unit", amount = 25},
        {type = "item", name = "superconductor", amount = 50},
        {type = "item", name = "refined-concrete", amount = 100},
        {type = "item", name = "quality-module-3", amount = 4}
    }
end

-- Scrap reprocessor recipe
local scrap_reprocessor_recipe = {
    type = "recipe",
    name = "sr-scrap-reprocessor",
    category = "advanced-crafting",
    icon = "__scrap-reprocessor__/graphics/icons/chemical-stager-icon.png",
    enabled = false,
    energy_required = 10, -- time to craft in seconds (at crafting speed 1)
    surface_conditions = {
        {property = "magnetic-field", min = 99}
    },
    ingredients = scrap_reprocesser_ingredients,
    results = {
        {type = "item", name = "sr-scrap-reprocessor", amount = 1}
    }
}

-- Scrap reprocessor recipe category
local scrap_reprocessor_recipe_category = {
  type = "recipe-category",
  name = "reprocessor"
}

-- Scrap reprocessing recipe
local scrap_reprocessing_recipe = {
    type = "recipe",
    name = "sr-scrap-reprocessing",
    category = "reprocessor",
    surface_conditions =
    {
      {
        property = "magnetic-field",
        min = 99,
        max = 99
      }
    },
    subgroup = "fulgora-processes",
    order = "a[trash]-b[scrap-reprocessing]",
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
        }
    },
    enabled = false,
    auto_recycle = false,
    allow_decomposition = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "scrap", amount = 15},
        {type = "fluid", name = "water", amount = 22}
    },
    results = {
        {type = "item", name = "sr-electronic-scrap",     amount_min = 5, amount_max = 15, probability = 0.75, show_details_in_recipe_tooltip = false},
        {type = "item", name = "sr-metallic-scrap",       amount_min = 5, amount_max = 15, probability = 0.75, show_details_in_recipe_tooltip = false},
        {type = "item", name = "sr-architectural-scrap",  amount_min = 5, amount_max = 15, probability = 0.75, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "sr-mineral-slurry",      amount_min = 10, amount_max = 20, show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true
}

-- Electronic scrap reprocessing recipe
local electronic_scrap_reprocessing_recipe = {
    type = "recipe",
    name = "sr-electronic-scrap-reprocessing",
    category = "reprocessor",
    surface_conditions =
    {
      {
        property = "magnetic-field",
        min = 99,
        max = 99
      }
    },
    subgroup = "fulgora-processes",
    order = "a[trash]-c[electronic-scrap-reprocessing]",
    icons = {
        {
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__space-age__/graphics/icons/scrap.png",
            scale = 0.4
        },
        {
            icon = "__base__/graphics/icons/processing-unit.png",
            shift = {4, 4},
            scale = 0.2
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        }
    },
    enabled = false,
    hide_from_player_crafting = true,
    auto_recycle = false,
    allow_decomposition = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "sr-electronic-scrap", amount = 10},
        {type = "fluid", name = "water", amount = 8}
    },
    results = {
        {type = "item", name = "processing-unit",       amount_min = 5, amount_max = 7, probability = 0.25, show_details_in_recipe_tooltip = false},
        {type = "item", name = "advanced-circuit",      amount_min = 10, amount_max = 18, probability = 0.15, show_details_in_recipe_tooltip = false},
        {type = "item", name = "battery",               amount_min = 4, amount_max = 12, probability = 0.3, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "sr-mineral-slurry",    amount_min = 15, amount_max = 25, show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true
}

-- Electronic scrap recycling recipe
local electronic_scrap_recycling_recipe = {
    type = "recipe",
    name = "sr-electronic-scrap-recycling",
    category = "recycling-or-hand-crafting",
    subgroup = "fulgora-processes",
    order = "a[trash]-c[electronic-scrap-recycling]",
    icons = {
        {
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__space-age__/graphics/icons/scrap.png",
            scale = 0.4
        },
        {
            icon = "__base__/graphics/icons/processing-unit.png",
            shift = {4, 4},
            scale = 0.2
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        }
    },
    enabled = false,
    auto_recycle = false,
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 0.2,
    ingredients = {
        {type = "item", name = "sr-electronic-scrap", amount = 1}
    },
    results = {
        {type = "item", name = "processing-unit",   amount_min = 1, amount_max = 3, probability = 0.03, show_details_in_recipe_tooltip = false},
        {type = "item", name = "advanced-circuit",  amount_min = 1, amount_max = 3, probability = 0.05, show_details_in_recipe_tooltip = false},
        {type = "item", name = "battery",           amount_min = 1, amount_max = 3, probability = 0.06, show_details_in_recipe_tooltip = false}
    }
}

-- Metallic scrap reprocessing recipe
local metallic_scrap_reprocessing_recipe = {
    type = "recipe",
    name = "sr-metallic-scrap-reprocessing",
    category = "reprocessor",
    surface_conditions =
    {
      {
        property = "magnetic-field",
        min = 99,
        max = 99
      }
    },
    subgroup = "fulgora-processes",
    order = "a[trash]-d[metallic-scrap-reprocessing]",
    icons = {
        {
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__space-age__/graphics/icons/scrap.png",
            scale = 0.4
        },
        {
            icon = "__base__/graphics/icons/steel-plate.png",
            shift = {4, 4},
            scale = 0.2
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        }
    },
    enabled = false,
    hide_from_player_crafting = true,
    auto_recycle = false,
    allow_decomposition = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "sr-metallic-scrap", amount = 10},
        {type = "fluid", name = "water", amount = 8}
    },
    results = {
        {type = "item", name = "steel-plate",           amount_min = 5, amount_max = 15, probability = 0.2, show_details_in_recipe_tooltip = false},
        {type = "item", name = "iron-gear-wheel",       amount_min = 15, amount_max = 45, probability = 0.3, show_details_in_recipe_tooltip = false},
        {type = "item", name = "copper-cable",          amount_min = 10, amount_max = 30, probability = 0.1, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "sr-mineral-slurry",    amount_min = 15, amount_max = 25, show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true
}

-- Metallic scrap recycling recipe
local metallic_scrap_recycling_recipe = {
    type = "recipe",
    name = "sr-metallic-scrap-recycling",
    category = "recycling-or-hand-crafting",
    subgroup = "fulgora-processes",
    order = "a[trash]-d[metallic-scrap-recycling]",
    icons = {
        {
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__space-age__/graphics/icons/scrap.png",
            scale = 0.4
        },
        {
            icon = "__base__/graphics/icons/steel-plate.png",
            shift = {4, 4},
            scale = 0.2
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        }
    },
    enabled = false,
    auto_recycle = false,
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 0.2,
    ingredients = {
        {type = "item", name = "sr-metallic-scrap", amount = 1}
    },
    results = {
        {type = "item", name = "steel-plate",       amount_min = 1, amount_max = 3, probability = 0.05, show_details_in_recipe_tooltip = false},
        {type = "item", name = "iron-gear-wheel",   amount_min = 1, amount_max = 3, probability = 0.25, show_details_in_recipe_tooltip = false},
        {type = "item", name = "copper-cable",      amount_min = 1, amount_max = 3, probability = 0.04, show_details_in_recipe_tooltip = false}
    }
}

-- Architectural scrap reprocessing recipe, vanilla outputs version
local architectural_scrap_reprocessing_recipe_vanilla = {
    type = "recipe",
    name = "sr-architectural-scrap-reprocessing",
    category = "reprocessor",
    surface_conditions =
    {
      {
        property = "magnetic-field",
        min = 99,
        max = 99
      }
    },
    subgroup = "fulgora-processes",
    order = "a[trash]-e[architectural-scrap-reprocessing]",
    icons = {
        {
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__space-age__/graphics/icons/scrap.png",
            scale = 0.4
        },
        {
            icon = "__base__/graphics/icons/low-density-structure.png",
            shift = {4, 4},
            scale = 0.2
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        }
    },
    enabled = false,
    hide_from_player_crafting = true,
    auto_recycle = false,
    allow_decomposition = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "sr-architectural-scrap", amount = 10},
        {type = "fluid", name = "water", amount = 8}
    },
    results = {
        {type = "item", name = "low-density-structure",   amount_min = 3, amount_max = 9, probability = 0.1, show_details_in_recipe_tooltip = false},
        {type = "item", name = "concrete",                amount_min = 10, amount_max = 30, probability = 0.12, show_details_in_recipe_tooltip = false},
        {type = "item", name = "ice",                     amount_min = 10, amount_max = 30, probability = 0.12, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "sr-mineral-slurry",      amount_min = 15, amount_max = 25, show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true
}

-- Architectural scrap reprocessing recipe, default outputs version
local architectural_scrap_reprocessing_recipe = {
    type = "recipe",
    name = "sr-architectural-scrap-reprocessing",
    category = "reprocessor",
    surface_conditions =
    {
      {
        property = "magnetic-field",
        min = 99,
        max = 99
      }
    },
    subgroup = "fulgora-processes",
    order = "a[trash]-e[architectural-scrap-reprocessing]",
    icons = {
        {
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__space-age__/graphics/icons/scrap.png",
            scale = 0.4
        },
        {
            icon = "__base__/graphics/icons/low-density-structure.png",
            shift = {4, 4},
            scale = 0.2
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        }
    },
    enabled = false,
    hide_from_player_crafting = true,
    auto_recycle = false,
    allow_decomposition = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "sr-architectural-scrap", amount = 10},
        {type = "fluid", name = "water", amount = 8}
    },
    results = {
        {type = "item", name = "low-density-structure", amount_min = 3, amount_max = 9, probability = 0.1, show_details_in_recipe_tooltip = false},
        {type = "item", name = "stone-brick",           amount_min = 10, amount_max = 30, probability = 0.12, show_details_in_recipe_tooltip = false},
        {type = "item", name = "iron-stick",            amount_min = 5, amount_max = 15, probability = 0.24, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "sr-mineral-slurry",    amount_min = architectural_scrap_slurry_min, amount_max = architectural_scrap_slurry_max, show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true
}

-- Architectural scrap recycling recipe, vanilla version
local architectural_scrap_recycling_recipe_vanilla = {
    type = "recipe",
    name = "sr-architectural-scrap-recycling",
    category = "recycling-or-hand-crafting",
    subgroup = "fulgora-processes",
    order = "a[trash]-e[architectural-scrap-recycling]",
    icons = {
        {
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__space-age__/graphics/icons/scrap.png",
            scale = 0.4
        },
        {
            icon = "__base__/graphics/icons/low-density-structure.png",
            shift = {4, 4},
            scale = 0.2
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        }
    },
    enabled = false,
    auto_recycle = false,
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 0.2,
    ingredients = {
        {type = "item", name = "sr-architectural-scrap", amount = 1}
    },
    results = {
        {type = "item", name = "low-density-structure", amount_min = 1, amount_max = 3, probability = 0.015, show_details_in_recipe_tooltip = false},
        {type = "item", name = "concrete",              amount_min = 1, amount_max = 3, probability = 0.07, show_details_in_recipe_tooltip = false},
        {type = "item", name = "ice",                   amount_min = 1, amount_max = 3, probability = 0.06, show_details_in_recipe_tooltip = false}
    }
}

-- Architectural scrap recycling recipe, default version
local architectural_scrap_recycling_recipe = {
    type = "recipe",
    name = "sr-architectural-scrap-recycling",
    category = "recycling-or-hand-crafting",
    subgroup = "fulgora-processes",
    order = "a[trash]-e[architectural-scrap-recycling]",
    icons = {
        {
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__space-age__/graphics/icons/scrap.png",
            scale = 0.4
        },
        {
            icon = "__base__/graphics/icons/low-density-structure.png",
            shift = {4, 4},
            scale = 0.2
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        }
    },
    enabled = false,
    auto_recycle = false,
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 0.2,
    ingredients = {
        {type = "item", name = "sr-architectural-scrap", amount = 1}
    },
    results = {
        {type = "item", name = "low-density-structure", amount_min = 1, amount_max = 3, probability = 0.015, show_details_in_recipe_tooltip = false},
        {type = "item", name = "stone-brick",           amount_min = 1, amount_max = 3, probability = 0.07, show_details_in_recipe_tooltip = false},
        {type = "item", name = "iron-stick",            amount_min = 1, amount_max = 3, probability = 0.06, show_details_in_recipe_tooltip = false}
    }
}

-- Mineral slurry separation recipe
local mineral_slurry_separation_recipe = {
    type = "recipe",
    name = "sr-mineral-slurry-separation",
    category = "chemistry",
    subgroup = "fulgora-processes",
    order = "a[trash]-f[mineral-slurry-separation]",
    icons = {
        {
            icon = "__base__/graphics/icons/fluid/water.png",
            tint = {170, 51, 106},
            shift = {0, -8},
            scale = 0.2
        },
        {
            icon = "__base__/graphics/icons/stone.png",
            tint = {170, 51, 106, 0.7},
            shift = {0, -6},
            scale = 0.18
        },
        {
            icon = "__base__/graphics/icons/fluid/water.png",
            shift = {-8, 1},
            scale = 0.15
        },
        {
            icon = "__base__/graphics/icons/stone.png",
            shift = {0, 6},
            scale = 0.15
        },
        {
            icon = "__space-age__/graphics/icons/fluid/holmium-solution.png",
            shift = {8, 1},
            scale = 0.15
        }
    },
    auto_recycle = false,
    energy_required = 10,
    ingredients =
    {
        {type = "fluid", name="sr-mineral-slurry", amount = 300}
    },
    results =
    {
        {type = "item", name="stone",               amount_min = 15, amount_max = 25},
        {type = "fluid", name="water",              amount = 200},
        {type = "fluid", name="holmium-solution",   amount = 100}
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

-- Mineral slurry separation recipe with iron
local mineral_slurry_separation_recipe_with_iron = {
    type = "recipe",
    name = "sr-mineral-slurry-separation",
    category = "chemistry",
    subgroup = "fulgora-processes",
    order = "a[trash]-f[mineral-slurry-separation]",
    icons = {
        {
            icon = "__base__/graphics/icons/fluid/water.png",
            tint = {170, 51, 106},
            shift = {0, -8},
            scale = 0.2
        },
        {
            icon = "__base__/graphics/icons/stone.png",
            tint = {170, 51, 106, 0.7},
            shift = {0, -6},
            scale = 0.18
        },
        {
            icon = "__base__/graphics/icons/fluid/water.png",
            shift = {-8, -1},
            scale = 0.15
        },
        {
            icon = "__base__/graphics/icons/stone.png",
            shift = {-4, 6},
            scale = 0.15
        },
        {
            icon = "__base__/graphics/icons/iron-ore.png",
            shift = {4, 6},
            scale = 0.15
        },
        {
            icon = "__space-age__/graphics/icons/fluid/holmium-solution.png",
            shift = {8, -1},
            scale = 0.15
        }
    },
    auto_recycle = false,
    energy_required = 10,
    ingredients =
    {
        {type = "fluid", name="sr-mineral-slurry", amount = 300}
    },
    results =
    {
        {type = "item", name="stone",               amount_min = 15, amount_max = 25},
        {type = "item", name="iron-ore",            amount_min = 4, amount_max = 10},
        {type = "fluid", name="water",              amount = 200},
        {type = "fluid", name="holmium-solution",   amount = 100}
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

data:extend({
    scrap_reprocessor_recipe,
    scrap_reprocessor_recipe_category,
    scrap_reprocessing_recipe,
    electronic_scrap_reprocessing_recipe,
    electronic_scrap_recycling_recipe,
    metallic_scrap_reprocessing_recipe,
    metallic_scrap_recycling_recipe,
    mineral_slurry_separation_recipe
})

-- Mineral slurry iron ore setting
if not settings.startup["scrap-reprocessor-mineral-slurry-setting"].value then
    data:extend({mineral_slurry_separation_recipe_with_iron})
else
    data:extend({mineral_slurry_separation_recipe})
end

-- Architectural scrap output setting
if architectural_scrap_output_setting == "vanilla" then
    data:extend({
        architectural_scrap_reprocessing_recipe_vanilla,
        architectural_scrap_recycling_recipe_vanilla,
    })
elseif architectural_scrap_output_setting == "hybrid" then
    data:extend({
        architectural_scrap_reprocessing_recipe,
        architectural_scrap_recycling_recipe_vanilla,
    })
else
    data:extend({
        architectural_scrap_reprocessing_recipe,
        architectural_scrap_recycling_recipe,
    })
end