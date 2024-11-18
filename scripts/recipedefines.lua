-- Enables defining the outputs of all reprocessor recipes so that filters can be set automatically

---@class (exact) reprocessor_recipe
---@field output_1 string
---@field output_2? string
---@field output_3? string

---@param recipe_name string
---@param output_1 string
---@param output_2? string
---@param output_3? string
---@return reprocessor_recipe
function add_recipe(recipe_name, output_1, output_2, output_3)
    local reprocessor_recipe = {
        output_1 = output_1,
    }   --[[@as reprocessor_recipe]]
    for name, _ in pairs(storage.repocessor_recipes) do
        if name == recipe_name then
            table.remove(storage.repocessor_recipes, name)     -- Prevent duplicate recipes in storage, just in case
        end
    end
    if output_2 then
        reprocessor_recipe.output_2 = output_2
    end
    if output_3 then
        reprocessor_recipe.output_3 = output_3
    end
    storage.repocessor_recipes[recipe_name] = reprocessor_recipe
    return storage.repocessor_recipes[recipe_name]
end

-- Push default recipes to recipe definitions
function default_recipes()
    storage.repocessor_recipes = {}  -- First clear storage in case anything has changed

    -- Basic scrap reprocessing
    add_recipe("sr-scrap-reprocessing", "sr-electronic-scrap", "sr-metallic-scrap", "sr-architectural-scrap")

    -- Electronic scrap reprocessing
    add_recipe("sr-electronic-scrap-reprocessing", "processing-unit", "advanced-circuit", "battery")
    
    -- Metallic scrap reprocessing
    add_recipe("sr-metallic-scrap-reprocessing", "steel-plate", "iron-gear-wheel", "copper-cable")

    -- Architectural scrap reprocessing, depending on settings
    local architectural_scrap_output_setting = settings.startup["scrap-reprocessor-architectural-setting"].value
    if architectural_scrap_output_setting == "vanilla" then
        add_recipe("sr-architectural-scrap-reprocessing", "low-density-structure", "concrete", "ice")
    else
        add_recipe("sr-architectural-scrap-reprocessing", "low-density-structure", "stone-brick", "iron-stick")
    end
end