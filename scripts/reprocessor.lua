-- Locate the loaders of a given reprocessor and return them in an array
---@param scrap_reprocessor LuaEntity
---@return reprocessor_loaders
function locate_loaders(scrap_reprocessor)
    ---@class (exact) reprocessor_loaders
    ---@field input_loader? LuaEntity
    ---@field output_loader_1? LuaEntity
    ---@field output_loader_2? LuaEntity
    ---@field output_loader_3? LuaEntity
    local entities = scrap_reprocessor.surface.find_entities({
        {scrap_reprocessor.position.x - 2, scrap_reprocessor.position.y - 2},
        {scrap_reprocessor.position.x + 2, scrap_reprocessor.position.y + 2}})
    local reprocessor_loaders = {}
    for _, entity in pairs(entities) do
        if entity.name == "sr-scrap-reprocessor-input-loader" then reprocessor_loaders.input_loader = entity end
        if entity.name == "sr-scrap-reprocessor-output-loader-1" then reprocessor_loaders.output_loader_1 = entity end
        if entity.name == "sr-scrap-reprocessor-output-loader-2" then reprocessor_loaders.output_loader_2 = entity end
        if entity.name == "sr-scrap-reprocessor-output-loader-3" then reprocessor_loaders.output_loader_3 = entity end
    end
    return reprocessor_loaders
end

-- Teleport the loaders into position when the reprocessor is created or moved
-- Will create the loaders if they don't already exist
---@param scrap_reprocessor LuaEntity
---@param reprocessor_loaders? reprocessor_loaders
---@return reprocessor_loaders
function align_loaders(scrap_reprocessor, reprocessor_loaders)
    reprocessor_loaders = reprocessor_loaders or {}
    local input_loader_offset_x = 0
    local input_loader_offset_y = 0
    local output_loader_1_offset_x = 0
    local output_loader_1_offset_y = 0
    local output_loader_1_filter = nil
    local output_loader_2_offset_x = 0
    local output_loader_2_offset_y = 0
    local output_loader_2_filter = nil
    local output_loader_3_offset_x = 0
    local output_loader_3_offset_y = 0
    local output_loader_3_filter = nil
    if scrap_reprocessor.direction == defines.direction.north then
        input_loader_offset_x = 1
        input_loader_offset_y = 2
        output_loader_1_offset_x = -1
        output_loader_1_offset_y = -2
        output_loader_2_offset_x = 0
        output_loader_2_offset_y = -2
        output_loader_3_offset_x = 1
        output_loader_3_offset_y = -2
    elseif scrap_reprocessor.direction == defines.direction.west then
        input_loader_offset_x = 2
        input_loader_offset_y = -1
        output_loader_1_offset_x = -2
        output_loader_1_offset_y = 1
        output_loader_2_offset_x = -2
        output_loader_2_offset_y = 0
        output_loader_3_offset_x = -2
        output_loader_3_offset_y = -1
    elseif scrap_reprocessor.direction == defines.direction.south then
        input_loader_offset_x = -1
        input_loader_offset_y = -2
        output_loader_1_offset_x = 1
        output_loader_1_offset_y = 2
        output_loader_2_offset_x = 0
        output_loader_2_offset_y = 2
        output_loader_3_offset_x = -1
        output_loader_3_offset_y = 2
    elseif scrap_reprocessor.direction == defines.direction.east then
        input_loader_offset_x = -2
        input_loader_offset_y = 1
        output_loader_1_offset_x = 2
        output_loader_1_offset_y = -1
        output_loader_2_offset_x = 2
        output_loader_2_offset_y = 0
        output_loader_3_offset_x = 2
        output_loader_3_offset_y = 1
    end
    if reprocessor_loaders.input_loader then
        reprocessor_loaders.input_loader.destroy()          -- Loaders can't be teleported
    end
    if reprocessor_loaders.output_loader_1 then
        output_loader_1_filter = reprocessor_loaders.output_loader_1.get_filter(1)
        reprocessor_loaders.output_loader_1.destroy()
    end
    if reprocessor_loaders.output_loader_2 then
        output_loader_2_filter = reprocessor_loaders.output_loader_2.get_filter(1)
        reprocessor_loaders.output_loader_2.destroy()
    end
    if reprocessor_loaders.output_loader_3 then
        output_loader_3_filter = reprocessor_loaders.output_loader_3.get_filter(1)
        reprocessor_loaders.output_loader_3.destroy()
    end
    reprocessor_loaders.input_loader = scrap_reprocessor.surface.create_entity{
        name = "sr-scrap-reprocessor-input-loader",
        force = scrap_reprocessor.force,
        position = {scrap_reprocessor.position.x + input_loader_offset_x , scrap_reprocessor.position.y + input_loader_offset_y},
        type = "input",         -- Outside of create_entity this is loader_type instead
        direction = scrap_reprocessor.direction,
        minable = false,
        operable = false,
        destructible = false
    }
    reprocessor_loaders.output_loader_1 = scrap_reprocessor.surface.create_entity{
        name = "sr-scrap-reprocessor-output-loader-1",
        force = scrap_reprocessor.force,
        position = {scrap_reprocessor.position.x + output_loader_1_offset_x , scrap_reprocessor.position.y + output_loader_1_offset_y},
        type = "output",
        direction = scrap_reprocessor.direction,
        minable = false,
        operable = false,
        destructible = false
    }
    if output_loader_1_filter then          -- Recreate the filters if they already existed
        reprocessor_loaders.output_loader_1.set_filter(1, output_loader_1_filter)
    end
    reprocessor_loaders.output_loader_2 = scrap_reprocessor.surface.create_entity{
        name = "sr-scrap-reprocessor-output-loader-2",
        force = scrap_reprocessor.force,
        position = {scrap_reprocessor.position.x + output_loader_2_offset_x , scrap_reprocessor.position.y + output_loader_2_offset_y},
        type = "output",
        direction = scrap_reprocessor.direction,
        minable = false,
        operable = false,
        destructible = false
    }
    if output_loader_2_filter then
        reprocessor_loaders.output_loader_2.set_filter(1, output_loader_2_filter)
    end
    reprocessor_loaders.output_loader_3 = scrap_reprocessor.surface.create_entity{
        name = "sr-scrap-reprocessor-output-loader-3",
        force = scrap_reprocessor.force,
        position = {scrap_reprocessor.position.x + output_loader_3_offset_x , scrap_reprocessor.position.y + output_loader_3_offset_y},
        type = "output",
        direction = scrap_reprocessor.direction,
        minable = false,
        operable = false,
        destructible = false
    }
    if output_loader_3_filter then
        reprocessor_loaders.output_loader_3.set_filter(1, output_loader_3_filter)
    end

    for _, stored_reprocessor in pairs(storage.scrap_reprocessors) do        -- Update the id array if needed
        if stored_reprocessor.entity and stored_reprocessor.entity.unit_number == scrap_reprocessor.unit_number then
            stored_reprocessor.reprocessor_loaders = reprocessor_loaders
        end
    end
    return reprocessor_loaders
end

-- Update the filters of the loaders when a recipe is changed
function update_loader_filters()
    for _, scrap_reprocessor in pairs(storage.scrap_reprocessors) do
        if scrap_reprocessor.entity and scrap_reprocessor.reprocessor_loaders       -- Nil check *everything*
                and scrap_reprocessor.reprocessor_loaders.output_loader_1
                and scrap_reprocessor.reprocessor_loaders.output_loader_2
                and scrap_reprocessor.reprocessor_loaders.output_loader_3 then
            local current_recipe = scrap_reprocessor.entity.get_recipe()            -- Check if the recipe has changed
            if current_recipe and scrap_reprocessor.last_known_recipe
                    and current_recipe.name ~= scrap_reprocessor.last_known_recipe.name then
                scrap_reprocessor.reprocessor_loaders.output_loader_1.set_filter(1, nil)    -- Clear the filters first in case an unknown recipe is set
                scrap_reprocessor.reprocessor_loaders.output_loader_1.loader_filter_mode = "none"
                scrap_reprocessor.reprocessor_loaders.output_loader_2.set_filter(1, nil)
                scrap_reprocessor.reprocessor_loaders.output_loader_2.loader_filter_mode = "none"
                scrap_reprocessor.reprocessor_loaders.output_loader_3.set_filter(1, nil)
                scrap_reprocessor.reprocessor_loaders.output_loader_3.loader_filter_mode = "none"
                for recipe_name, outputs in pairs (storage.repocessor_recipes) do           -- Find the stored recipe to set the filters
                    if current_recipe.name == recipe_name then
                        scrap_reprocessor.reprocessor_loaders.output_loader_1.set_filter(1, {name = outputs.output_1, comparator = ">="})
                        scrap_reprocessor.reprocessor_loaders.output_loader_1.loader_filter_mode = "whitelist"
                        scrap_reprocessor.reprocessor_loaders.output_loader_2.set_filter(1, {name = outputs.output_2, comparator = ">="})
                        scrap_reprocessor.reprocessor_loaders.output_loader_2.loader_filter_mode = "whitelist"
                        scrap_reprocessor.reprocessor_loaders.output_loader_3.set_filter(1, {name = outputs.output_3, comparator = ">="})
                        scrap_reprocessor.reprocessor_loaders.output_loader_3.loader_filter_mode = "whitelist"
                    end
                end
                scrap_reprocessor.last_known_recipe = current_recipe        -- Update our record of the last known recipe
            elseif current_recipe and not scrap_reprocessor.last_known_recipe then
                for recipe_name, outputs in pairs (storage.repocessor_recipes) do           -- Find the stored recipe to set the filters
                    if current_recipe.name == recipe_name then
                        scrap_reprocessor.reprocessor_loaders.output_loader_1.set_filter(1, {name = outputs.output_1, comparator = ">="})
                        scrap_reprocessor.reprocessor_loaders.output_loader_1.loader_filter_mode = "whitelist"
                        scrap_reprocessor.reprocessor_loaders.output_loader_2.set_filter(1, {name = outputs.output_2, comparator = ">="})
                        scrap_reprocessor.reprocessor_loaders.output_loader_2.loader_filter_mode = "whitelist"
                        scrap_reprocessor.reprocessor_loaders.output_loader_3.set_filter(1, {name = outputs.output_3, comparator = ">="})
                        scrap_reprocessor.reprocessor_loaders.output_loader_3.loader_filter_mode = "whitelist"
                    end
                end
                scrap_reprocessor.last_known_recipe = current_recipe        -- Update our record of the last known recipe
            elseif not current_recipe and scrap_reprocessor.last_known_recipe then
                scrap_reprocessor.reprocessor_loaders.output_loader_1.set_filter(1, nil)    -- Clear the filters because no recipe is set
                scrap_reprocessor.reprocessor_loaders.output_loader_1.loader_filter_mode = "none"
                scrap_reprocessor.reprocessor_loaders.output_loader_2.set_filter(1, nil)
                scrap_reprocessor.reprocessor_loaders.output_loader_2.loader_filter_mode = "none"
                scrap_reprocessor.reprocessor_loaders.output_loader_3.set_filter(1, nil)
                scrap_reprocessor.reprocessor_loaders.output_loader_3.loader_filter_mode = "none"
                scrap_reprocessor.last_known_recipe = nil                                   -- Clear the record too
            end
        end
    end
end

-- Create the loaders when the reprocessor is created
---@param event EventData.on_script_trigger_effect
function do_scrap_reprocessor_placed(event)
    if event.effect_id ~= "scrap-reprocessor-placed" then return end
    local scrap_reprocessor = event.source_entity
    if not scrap_reprocessor then return end
    id = script.register_on_object_destroyed(scrap_reprocessor)
    local reprocessor_loaders = {}              -- The array needs to be built first so that align_loaders can use it
    storage.scrap_reprocessors[id] = {
        entity = scrap_reprocessor,
        reprocessor_loaders = reprocessor_loaders,
        last_known_recipe = nil
    }
    storage.scrap_reprocessors[id].reprocessor_loaders = align_loaders(scrap_reprocessor)
end

-- Rotate the loaders when the reprocessor is rotated
---@param event EventData.on_player_rotated_entity
function do_scrap_reprocessor_rotated(event)
    local scrap_reprocessor = event.entity
    if scrap_reprocessor.name ~= "sr-scrap-reprocessor" then return end
    reprocessor_loaders = locate_loaders(scrap_reprocessor)
    align_loaders(scrap_reprocessor, reprocessor_loaders)
end

-- Update the filters of the output loaders when the recipe changes


-- Destroy the loaders when the reprocessor is destroyed
---@param event EventData.on_object_destroyed
function do_cleanup_scrap_reprocessor(event)
    local id = event.registration_number
    if storage.scrap_reprocessors[id] and storage.scrap_reprocessors[id].reprocessor_loaders then
        for _, entity in pairs(storage.scrap_reprocessors[id].reprocessor_loaders) do
            entity.destroy()
        end
        storage.scrap_reprocessors[id] = nil
    end
end