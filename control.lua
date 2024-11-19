require("scripts.recipedefines")
require("scripts.reprocessor")

-- Initialize the storage variable
local function init_globals()
    if storage.scrap_reprocessors == nil then
        storage.scrap_reprocessors = {}
    end
end
script.on_init(init_globals)
script.on_configuration_changed(init_globals)

-- Events for managing the sub-entities of reprocessors
script.on_event(defines.events.on_script_trigger_effect, do_scrap_reprocessor_placed)
script.on_event(defines.events.on_player_rotated_entity, do_scrap_reprocessor_rotated)
script.on_event(defines.events.on_object_destroyed, do_cleanup_scrap_reprocessor)

-- Event for updating loader filters when recipe is changed
script.on_nth_tick(15, update_loader_filters)