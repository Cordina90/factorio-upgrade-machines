function addConditionalTechnology(tech, recipeUnlock, alternativeTech)
    if not data.raw.recipe[recipeUnlock] then
        return
    end

    local effects = {
            type = "unlock-recipe",
            recipe = recipeUnlock
        }

    if data.raw['technology'][tech] then
        table.insert(data.raw["technology"][tech].effects, effects)

    elseif data.raw['technology'][alternativeTech] then
        table.insert(data.raw["technology"][alternativeTech].effects, effects)
    else
        data.raw.recipe[recipeUnlock].enabled = true
    end

end

addConditionalTechnology("chemical-processing-2", "stone-chemical-to-steel-furnace","advanced-material-processing")
addConditionalTechnology("chemical-processing-3", "steel-chemical-to-electric-furnace","advanced-material-processing-2")

addConditionalTechnology("mixing-steel-furnace", "stone-mixing-to-steel-furnace", "advanced-material-processing")
addConditionalTechnology("alloy-processing-3", "steel-mixing-to-electric-furnace", "advanced-material-processing-2")