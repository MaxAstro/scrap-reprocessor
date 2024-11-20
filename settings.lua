-- Reprocessor quality boost
local reprocessor_quality_setting = {
    type = "string-setting",
    name = "scrap-reprocessor-quality-setting",
    setting_type = "startup",
    order = "a",
    default_value = "vanilla",
    allowed_values = {
        "none",
        "vanilla",
        "boosted"
    }
}

-- Architectural scrap output
local architectural_scrap_setting = {
    type = "string-setting",
    name = "scrap-reprocessor-architectural-setting",
    setting_type = "startup",
    order = "b",
    default_value = "default",
    allowed_values = {
        "default",
        "vanilla",
        "hybrid",
        "boosted"
    }
}

-- Mineral slurry doesn't produce iron ore
local mineral_slurry_setting = {
    type = "bool-setting",
    name = "scrap-reprocessor-mineral-slurry-setting",
    setting_type = "startup",
    order = "c",
    default_value = false
}

data:extend({
    reprocessor_quality_setting,
    architectural_scrap_setting,
    mineral_slurry_setting
})