---@param event EventData.on_script_trigger_effect
function do_scrap_reprocessor_placed(event)
    if event.effect_id ~= "scrap-reprocessor-placed" then return end
    local entity = event.source_entity
    if not entity then return end
    local offset_x = 0
    local offset_y = 0
    if entity.direction == defines.direction.north then
        offset_x = 1
        offset_y = 2
    elseif entity.direction == defines.direction.west then
        offset_x = -2
        offset_y = 1
    elseif entity.direction == defines.direction.south then
        offset_x = -1
        offset_y = -2
    elseif entity.direction == defines.direction.east then
        offset_x = 2
        offset_y = -1
    end
    local input_loader = entity.surface.create_entity{
        name = "scrap-reprocessor-input-loader",
        force = entity.force,
        position = {entity.position.x + offset_x , entity.position.y + offset_y}
    }
    if not input_loader then return end
    input_loader.set_filter(1, "scrap")
    input_loader.loader_type = "input"
    input_loader.minable = false
    input_loader.operable = false
    input_loader.destructible = false
    input_loader.direction = entity.direction
    id = script.register_on_object_destroyed(entity)
    storage.scrap_reprocessors[id] = {
        scrap_reprocessor = entity,
        input_loader = input_loader
    }
end

---@param event EventData.on_object_destroyed
function do_cleanup_scrap_reprocessor(event)
    local id = event.registration_number
    if storage.scrap_reprocessors[id] ~= nil then
    -- Destroy the other related entities here, and clean up the global table
        storage.scrap_reprocessors[id].input_loader.destroy()
        storage.scrap_reprocessors[id] = nil
    end
end