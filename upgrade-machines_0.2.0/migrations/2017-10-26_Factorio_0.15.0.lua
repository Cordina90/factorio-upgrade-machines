for index, force in pairs(game.forces) do
    local technologies = force.technologies;
    local recipes = force.recipes;

    steelChemical = technologies["chemical-processing-2"] and "chemical-processing-2" or "advanced-material-processing"
    electricChemical = technologies["chemical-processing-3"] and "chemical-processing-3" or "advanced-material-processing-2"
    steelMixing = technologies["mixing-steel-furnace"] and "mixing-steel-furnace" or "advanced-material-processing"
    electricMixing = technologies["alloy-processing-3"] and "alloy-processing-3" or "advanced-material-processing-2"

    log(steelChemical)

    if technologies[steelChemical].researched then
        recipes["stone-chemical-to-steel-furnace"].enabled = true
    end

    if technologies[electricChemical].researched then
        recipes["steel-chemical-to-electric-furnace"].enabled = true
    end

    if technologies[steelMixing].researched then
        recipes["stone-mixing-to-steel-furnace"].enabled = true
    end

    if technologies[electricMixing].researched then
        recipes["steel-mixing-to-electric-furnace"].enabled = true
    end
end