require("scripts.reprocessor")

local function init_globals()
    if storage.scrap_reprocessors == nil then
        storage.scrap_reprocessors = {}
    end
end

script.on_init(init_globals)
script.on_configuration_changed(init_globals)
script.on_event(defines.events.on_script_trigger_effect, do_scrap_reprocessor_placed)
script.on_event(defines.events.on_object_destroyed, do_cleanup_scrap_reprocessor)