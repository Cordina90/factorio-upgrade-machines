for index, force in pairs(game.forces) do
    local technologies = force.technologies;
    local recipes = force.recipes;

    if technologies["military"].researched then
        if recipes["pistol-to-shotgun"] then
            recipes["pistol-to-shotgun"].enabled = true
        end
        if recipes["pistol-to-submachine"] then
            recipes["pistol-to-submachine"].enabled = true
        end
    end
end
