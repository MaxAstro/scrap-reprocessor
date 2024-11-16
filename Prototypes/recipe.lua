-- Scrap reprocessor recipe
local scrap_reprocessor_recipe = {
    type = "recipe",
    name = "sr-scrap-reprocessor",
    localised_name = {"Scrap-Reprocessor-Items-and-Entities.scrap-reprocessor"},
    category = "advanced-crafting",
    icon = "__scrap-reprocessor__/graphics/icons/chemical-stager-icon.png",
    enabled = false,
    energy_required = 10, -- time to craft in seconds (at crafting speed 1)
    surface_conditions = {
        {property = "magnetic-field", min = 99}
    },
    ingredients = {
        {type = "item", name = "holmium-plate", amount = 50},
        {type = "item", name = "steel-plate", amount = 100},
        {type = "item", name = "processing-unit", amount = 25},
        {type = "item", name = "superconductor", amount = 50},
        {type = "item", name = "refined-concrete", amount = 100},
        {type = "item", name = "quality-module-3", amount = 4}
    },
    results = {
        {type = "item", name = "sr-scrap-reprocessor", amount = 1}
    }
}
---@cast scrap_reprocessor_recipe data.RecipePrototype

-- Scrap reprocessor recipe category
local scrap_reprocessor_recipe_category = {
  type = "recipe-category",
  name = "reprocessor"
}
---@cast scrap_reprocessor_recipe_category data.RecipeCategory

-- Scrap reprocessing recipe
local scrap_reprocessing_recipe = {
    type = "recipe",
    name = "sr-scrap-reprocessing",
    localised_name = {"Scrap-Reprocessor-Processes.scrap-reprocessing"},
    category = "reprocessor",
    subgroup = "fulgora-processes",
    order = "a[trash]-b[scrap-reprocessing]",
    icons = {
      {
        icon = "__quality__/graphics/icons/recycling.png"
      },
      {
        icon = "__space-age__/graphics/icons/scrap.png",
        shift = {-4, -4},
        scale = 0.4
      },
      {
        icon = "__space-age__/graphics/icons/scrap.png",
        scale = 0.4
      },
      {
        icon = "__space-age__/graphics/icons/scrap.png",
        shift = {4, 4},
        scale = 0.4
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
      {type = "fluid", name = "water", amount = 20}
    },
    results = {
        {type = "item", name = "sr-electronic-scrap",     amount_min = 5, amount_max = 15, probability = 0.75, show_details_in_recipe_tooltip = false},
        {type = "item", name = "sr-metallic-scrap",       amount_min = 5, amount_max = 15, probability = 0.75, show_details_in_recipe_tooltip = false},
        {type = "item", name = "sr-architectural-scrap",  amount_min = 5, amount_max = 15, probability = 0.75, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "sr-mineral-slurry",      amount_min = 20, amount_max = 40, show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true 
}
---@cast scrap_reprocessing_recipe data.RecipePrototype

-- Electronic scrap reprocessing recipe
local electronic_scrap_reprocessing_recipe = {
    type = "recipe",
    name = "sr-electronic-scrap-reprocessing",
    localised_name = {"Scrap-Reprocessor-Processes.electronic-scrap-reprocessing"},
    category = "reprocessor",
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
      {type = "fluid", name = "water", amount = 10}
    },
    results = {
        {type = "item", name = "processing-unit",       amount_min = 5, amount_max = 7, probability = 0.25, show_details_in_recipe_tooltip = false},
        {type = "item", name = "advanced-circuit",      amount_min = 10, amount_max = 18, probability = 0.15, show_details_in_recipe_tooltip = false},
        {type = "item", name = "battery",               amount_min = 4, amount_max = 12, probability = 0.3, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "sr-mineral-slurry",    amount_min = 10, amount_max = 20, show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true 
}
---@cast electronic_scrap_reprocessing_recipe data.RecipePrototype

-- Electronic scrap recycling recipe
local electronic_scrap_recycling_recipe = {
    type = "recipe",
    name = "sr-electronic-scrap-recycling",
    localised_name = {"Scrap-Reprocessor-Processes.electronic-scrap-recycling"},
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
---@cast electronic_scrap_recycling_recipe data.RecipePrototype

-- Metallic scrap reprocessing recipe
local metallic_scrap_reprocessing_recipe = {
    type = "recipe",
    name = "sr-metallic-scrap-reprocessing",
    localised_name = {"Scrap-Reprocessor-Processes.metallic-scrap-reprocessing"},
    category = "reprocessor",
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
      {type = "fluid", name = "water", amount = 10}
    },
    results = {
        {type = "item", name = "steel-plate",           amount_min = 5, amount_max = 15, probability = 0.2, show_details_in_recipe_tooltip = false},
        {type = "item", name = "iron-gear-wheel",       amount_min = 15, amount_max = 45, probability = 0.3, show_details_in_recipe_tooltip = false},
        {type = "item", name = "copper-cable",          amount_min = 10, amount_max = 30, probability = 0.1, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "sr-mineral-slurry",    amount_min = 10, amount_max = 20, show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true  
}
---@cast metallic_scrap_reprocessing_recipe data.RecipePrototype

-- Metallic scrap recycling recipe
local metallic_scrap_recycling_recipe = {
    type = "recipe",
    name = "sr-metallic-scrap-recycling",
    localised_name = {"Scrap-Reprocessor-Processes.metallic-scrap-recycling"},
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
---@cast metallic_scrap_recycling_recipe data.RecipePrototype

-- Architectural scrap reprocessing recipe, vanilla outputs version
local architectural_scrap_reprocessing_recipe_vanilla = {
    type = "recipe",
    name = "sr-architectural-scrap-reprocessing",
    localised_name = {"Scrap-Reprocessor-Processes.architectural-scrap-reprocessing"},
    category = "reprocessor",
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
      {type = "fluid", name = "water", amount = 10}
    },
    results = {
        {type = "item", name = "low-density-structure",   amount_min = 3, amount_max = 9, probability = 0.1, show_details_in_recipe_tooltip = false},
        {type = "item", name = "concrete",                amount_min = 10, amount_max = 30, probability = 0.12, show_details_in_recipe_tooltip = false},
        {type = "item", name = "ice",                     amount_min = 10, amount_max = 30, probability = 0.12, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "sr-mineral-slurry",      amount_min = 10, amount_max = 20, show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true 
}
---@cast architectural_scrap_reprocessing_recipe_vanilla data.RecipePrototype

-- Architectural scrap reprocessing recipe, default outputs version
local architectural_scrap_reprocessing_recipe = {
    type = "recipe",
    name = "sr-architectural-scrap-reprocessing",
    localised_name = {"Scrap-Reprocessor-Processes.architectural-scrap-reprocessing"},
    category = "reprocessor",
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
      {type = "fluid", name = "water", amount = 10}
    },
    results = {
      {type = "item", name = "low-density-structure",   amount_min = 3, amount_max = 9, probability = 0.1, show_details_in_recipe_tooltip = false},
      {type = "item", name = "concrete",                amount_min = 10, amount_max = 30, probability = 0.12, show_details_in_recipe_tooltip = false},
        {type = "item", name = "iron-stick",            amount_min = 5, amount_max = 15, probability = 0.24, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "sr-mineral-slurry",    amount_min = 30, amount_max = 50, show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true 
}
---@cast architectural_scrap_reprocessing_recipe data.RecipePrototype

-- Architectural scrap recycling recipe, vanilla version
local architectural_scrap_recycling_recipe_vanilla = {
    type = "recipe",
    name = "sr-architectural-scrap-recycling",
    localised_name = {"Scrap-Reprocessor-Processes.architectural-scrap-recycling"},
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
---@cast architectural_scrap_recycling_recipe_vanilla data.RecipePrototype

-- Architectural scrap recycling recipe, default version
local architectural_scrap_recycling_recipe = {
    type = "recipe",
    name = "sr-architectural-scrap-recycling",
    localised_name = {"Scrap-Reprocessor-Processes.architectural-scrap-recycling"},
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
---@cast architectural_scrap_recycling_recipe data.RecipePrototype

-- Mineral slurry separation recipe
local mineral_slurry_separation_recipe = {    
    type = "recipe",
    name = "sr-mineral-slurry-separation",
    localised_name = {"Scrap-Reprocessor-Processes.mineral-slurry-separation"},
    category = "chemistry",
    subgroup = "fulgora-processes",
    order = "a[trash]-f[mineral-slurry-separation]",
    icons = {
      {
        icon = "__space-age__/graphics/icons/fluid/holmium-solution.png",
        shift = {0, -8},
        scale = 0.2
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
    crafting_machine_tint =
    {
      primary = {r = 0.598, g = 0.274, b = 0.501, a = 0.502}, -- #98457f80
      secondary = {r = 0.524, g = 0.499, b = 0.521, a = 0.502}, -- #857f8480
      tertiary = {r = 0.716, g = 0.716, b = 0.716, a = 0.502}, -- #b6b6b680
      quaternary = {r = 0.768, g = 0.487, b = 0.684, a = 0.502}, -- #c37cae80
    }
}
---@cast mineral_slurry_separation_recipe data.RecipePrototype

data:extend({
    scrap_reprocessor_recipe,
    scrap_reprocessor_recipe_category,
    scrap_reprocessing_recipe,
    electronic_scrap_reprocessing_recipe,
    electronic_scrap_recycling_recipe,
    metallic_scrap_reprocessing_recipe,
    metallic_scrap_recycling_recipe,
    architectural_scrap_reprocessing_recipe,
    architectural_scrap_recycling_recipe,
    mineral_slurry_separation_recipe
})