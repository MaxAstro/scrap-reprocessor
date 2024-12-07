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
		localised_description = {"Scrap-Reprocessor-Technology.scrap-reprocessing-description"},
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

data:extend{scrap_reprocessing_tech}