-- Innate quality setting
local scrap_reprocessing_tech_prereqs = {}
if settings.startup["scrap-reprocessor-quality-setting"].value == "none" then
    scrap_reprocessing_tech_prereqs = {"electromagnetic-science-pack", "production-science-pack"}
else
    scrap_reprocessing_tech_prereqs = {"electromagnetic-science-pack", "quality-module-3"}
end

-- Scrap reprocessing technology
local scrap_reprocessing_tech = {
	type = "technology",
	name = "sr-scrap-reprocessing",
	icon_size = 256,
	icon = "__scrap-reprocessor__/graphics/icons/chemical-stager-icon-technology.png",
	effects = 
	{
		{
			type = "unlock-recipe",
			recipe = "sr-scrap-reprocessor"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-scrap-reprocessing"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-electronic-scrap-reprocessing"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-electronic-scrap-recycling"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-metallic-scrap-reprocessing"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-metallic-scrap-recycling"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-architectural-scrap-reprocessing"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-architectural-scrap-recycling"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-mineral-slurry-separation"
		},
	},
	unit = {
		count = 1000,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1},
			{"space-science-pack", 1},
			{"electromagnetic-science-pack", 1}
		},
		time = 60
	},
	prerequisites = scrap_reprocessing_tech_prereqs
}

-- Advanced reprocessing technology
local advanced_reprocessing_tech = {
	type = "technology",
	name = "sr-advanced-reprocessing",
	icon_size = 256,
	icons = {
		{
            icon = "__quality__/graphics/icons/recycling.png"
        },
        {
            icon = "__space-age__/graphics/icons/vulcanus.png",
			shift = {-12, -12},
            scale = 1
        },
        {
            icon = "__base__/graphics/icons/nauvis.png",
            shift = {12, -12},
            scale = 1
        },
        {
            icon = "__space-age__/graphics/icons/gleba.png",
            shift = {0, 12},
            scale = 1
        },
        {
            icon = "__quality__/graphics/icons/recycling-top.png"
        }
	},
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "sr-lava-agglomeration"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-iron-scoria-purification"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-copper-scoria-purification"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-mineral-scoria-melting"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-slurry-culturization"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-scrap-bioleech-wash"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-tungsten-bioleech-wash"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-uranium-bioleech-wash"
		},
		{
			type = "unlock-recipe",
			recipe = "sr-biological-waste-filtering"
		},
	},
	unit = {
		count = 1000,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1},
			{"utility-science-pack", 1},
			{"space-science-pack", 1},
			{"metallurgic-science-pack", 1},
			{"agricultural-science-pack", 1},
			{"electromagnetic-science-pack", 1}
		},
		time = 60
	},
	prerequisites = {"sr-scrap-reprocessing", "metallurgic-science-pack", "agricultural-science-pack"}
}

data:extend({
	scrap_reprocessing_tech,
	advanced_reprocessing_tech,
})