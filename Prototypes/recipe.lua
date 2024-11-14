-- Scrap reprocessor recipe
local scrap_reprocessor_recipe = {
    type = "recipe",
    name = "scrap-reprocessor",
    category = "advanced-crafting",
    icon = "",
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
        {type = "item", name = "refined-concrete", amount = 100}
    },
    results = {
        {type = "item", name = "scrap-reprocessor", amount = 1}
    }
}
---@cast scrap_reprocessor_recipe data.RecipePrototype

-- Scrap reprossesing recipe
local scrap_recipe = {
    type = "recipe",
    name = "scrap-reprocessing",
    category = "reprocessor",
    icon = "",
    enabled = false,
    hide_from_player_crafting = true,
    allow_decomposition = false,
    energy_required = 1, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "scrap", amount = 30}
    },
    results = {
        {type = "item", name = "processing-unit", amount_min = 5, amount_max = 15, probability = 0.05},
        {type = "item", name = "processing-unit", amount_min = 5, amount_max = 15, probability = 0.05},
        {type = "item", name = "processing-unit", amount_min = 5, amount_max = 15, probability = 0.05},
        {type = "item", name = "advanced-circuit", amount_min = 5, amount_max = 15, probability = 0.07},
        {type = "item", name = "advanced-circuit", amount_min = 5, amount_max = 15, probability = 0.07},
        {type = "item", name = "advanced-circuit", amount_min = 5, amount_max = 15, probability = 0.07},
        {type = "item", name = "low-density-structure", amount_min = 5, amount_max = 15, probability = 0.02},
        {type = "item", name = "low-density-structure", amount_min = 5, amount_max = 15, probability = 0.02},
        {type = "item", name = "low-density-structure", amount_min = 5, amount_max = 15, probability = 0.02},
        {type = "item", name = "solid-fuel", amount_min = 5, amount_max = 15, probability = 0.10},
        {type = "item", name = "solid-fuel", amount_min = 5, amount_max = 15, probability = 0.10},
        {type = "item", name = "solid-fuel", amount_min = 5, amount_max = 15, probability = 0.10},
        {type = "item", name = "steel-plate", amount_min = 5, amount_max = 15, probability = 0.06},
        {type = "item", name = "steel-plate", amount_min = 5, amount_max = 15, probability = 0.06},
        {type = "item", name = "steel-plate", amount_min = 5, amount_max = 15, probability = 0.06},
        {type = "item", name = "concrete", amount_min = 5, amount_max = 15, probability = 0.08},
        {type = "item", name = "concrete", amount_min = 5, amount_max = 15, probability = 0.08},
        {type = "item", name = "concrete", amount_min = 5, amount_max = 15, probability = 0.08},
        {type = "item", name = "battery", amount_min = 5, amount_max = 15, probability = 0.08},
        {type = "item", name = "battery", amount_min = 5, amount_max = 15, probability = 0.08},
        {type = "item", name = "battery", amount_min = 5, amount_max = 15, probability = 0.08},
        {type = "item", name = "ice", amount_min = 5, amount_max = 15, probability = 0.08},
        {type = "item", name = "ice", amount_min = 5, amount_max = 15, probability = 0.08},
        {type = "item", name = "ice", amount_min = 5, amount_max = 15, probability = 0.08},
        {type = "item", name = "stone", amount_min = 5, amount_max = 15, probability = 0.06},
        {type = "item", name = "stone", amount_min = 5, amount_max = 15, probability = 0.06},
        {type = "item", name = "stone", amount_min = 5, amount_max = 15, probability = 0.06},
        {type = "item", name = "holmium-ore", amount_min = 5, amount_max = 15, probability = 0.04},
        {type = "item", name = "holmium-ore", amount_min = 5, amount_max = 15, probability = 0.04},
        {type = "item", name = "holmium-ore", amount_min = 5, amount_max = 15, probability = 0.04},
        {type = "item", name = "iron-gear-wheel", amount_min = 5, amount_max = 15, probability = 0.30},
        {type = "item", name = "iron-gear-wheel", amount_min = 5, amount_max = 15, probability = 0.30},
        {type = "item", name = "iron-gear-wheel", amount_min = 5, amount_max = 15, probability = 0.30},
        {type = "item", name = "copper-cable", amount_min = 5, amount_max = 15, probability = 0.06},
        {type = "item", name = "copper-cable", amount_min = 5, amount_max = 15, probability = 0.06},
        {type = "item", name = "copper-cable", amount_min = 5, amount_max = 15, probability = 0.06}
    }
}
---@cast scrap_recipe data.RecipePrototype

data:extend{scrap_reprocessor_recipe, scrap_recipe}