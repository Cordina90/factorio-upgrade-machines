for index, force in pairs(game.forces) do
    local technologies = force.technologies;
    local recipes = force.recipes;

    if technologies["military-3"].researched then
        if recipes["pistol-to-combat-shotgun"] then
            recipes["pistol-to-combat-shotgun"].enabled = true
        end
    end
end
