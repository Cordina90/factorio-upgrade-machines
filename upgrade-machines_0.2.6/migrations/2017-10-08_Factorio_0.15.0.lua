for index, force in pairs(game.forces) do
    local technologies = force.technologies;
    local recipes = force.recipes;
    if technologies["advanced-material-processing"].researched then
        recipes["stone-to-steel-furnace"].enabled = true
    end

    if technologies["advanced-material-processing-2"].researched then
        recipes["steel-to-electric-furnace"].enabled = true
    end
end