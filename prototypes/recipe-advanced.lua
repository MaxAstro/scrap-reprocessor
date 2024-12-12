-- Vulcanus advanced recipes
-- Lava rapid cooling recipe
local lava_rapid_cooling = {
    type = "recipe",
    name = "sr-lava-rapid-cooling",
    category = "reprocessor",
    subgroup = "vulcanus-processes",
    order = "a[melting]-b[lava-a]",
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
        {type = "item", name = "calcite", amount = 3},
        {type = "fluid", name = "lava", amount = 800},
        {type = "fluid", name = "water", amount = 200}
    },
    results = {
        {type = "item", name = "sr-iron-slag-chunk",     amount_min = 3, amount_max = 6, show_details_in_recipe_tooltip = false},
        {type = "item", name = "sr-copper-slag-chunk",   amount_min = 3, amount_max = 6, show_details_in_recipe_tooltip = false},
        {type = "item", name = "sr-mineral-slag-chunk",  amount_min = 1, amount_max = 3, show_details_in_recipe_tooltip = false}
    },
    allow_productivity = true
}
