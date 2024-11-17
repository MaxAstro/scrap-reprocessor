-- Quality setting for scrap reprocessor
local quality_setting = settings.startup["scrap-reprocessor-quality-setting"].value
local quality_amount = 0
if quality_setting == "vanilla" then quality_amount = 0.5 end
if quality_setting == "boosted" then quality_amount = 1.0 end

-- Scrap reprocessor
local scrap_reprocessor = {
    type = "assembling-machine",
    name = "sr-scrap-reprocessor",
    icon = "__scrap-reprocessor__/graphics/icons/chemical-stager-icon.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.2, result = "sr-scrap-reprocessor"},
    fast_replaceable_group = "sr-scrap-reprocessor",
    max_health = 350,
    corpse = "oil-refinery-remnants",
    dying_explosion = "oil-refinery-explosion",
    icon_draw_specification = {scale = 2, shift = {0, -0.3}},
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    collision_mask = {layers={item=true, object=true, player=true, water_tile=true, elevated_rail=true, is_object=true, is_lower_object=true}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    drawing_box_vertical_extension = 0.3,
    module_slots = 6,
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
    effect_receiver = { base_effect = { quality = quality_amount }},
    crafting_categories = {"reprocessor"},
    crafting_speed = 1,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 6 }
    },
    energy_usage = "420kW",

    graphics_set =
    {
        animation = {north = {
            layers = {
            {
                filename = "__scrap-reprocessor__/graphics/chemical-stager-hr.png",
                width = 320,
                height = 320,
                scale = 0.5
            },
            {
                filename = "__scrap-reprocessor__/graphics/chemical-stager-hr-shadow.png",
                width = 600,
                height = 340,
                draw_as_shadow = true,
                scale = 0.5
            }}
        }}
    },
    impact_category = "metal-large",
    working_sound =
    {
        sound = { filename = "__base__/sound/oil-refinery.ogg" },
        fade_in_ticks = 4,
        fade_out_ticks = 20
    },
    fluid_boxes =
    {
        {
        production_type = "input",
        volume = 1000,
        pipe_connections =
        {
            {
            flow_direction="input",
            direction = defines.direction.south,
            position = {-1, 2}
            }
        }
        },
        {
        production_type = "output",
        volume = 100,
        pipe_connections = {{ flow_direction="input-output", direction = defines.direction.west, position = {-2, -1} }}
        },
        {
        production_type = "output",
        volume = 100,
        pipe_connections = {{ flow_direction="input-output", direction = defines.direction.east, position = {2, -1} }}
        }
    },
    water_reflection =
    {
        pictures =
        {
        filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
        priority = "extra-high",
        width = 40,
        height = 48,
        shift = util.by_pixel(5, 95),
        variation_count = 4,
        scale = 5
        },
        rotate = false,
        orientation_to_variation = true
    }
}
---@cast scrap_reprocessor data.AssemblingMachinePrototype

data:extend({
    scrap_reprocessor
})