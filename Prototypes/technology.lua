-- Scrap reprocessing technology
local scrap_reprocessing_tech = {
	type = "technology",
		name = "scrap-reprocessing",
		icon_size = 128,
		icon = "",
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "scrap-reprocessor"
			},
			{
				type = "unlock-recipe",
				recipe = "scrap-reprocessing"
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
		prerequisites = {"electromagnetic-science-pack", "production-science-pack"},
}
---@cast scrap_reprocessing_tech data.TechnologyPrototype

data:extend{scrap_reprocessing_tech}