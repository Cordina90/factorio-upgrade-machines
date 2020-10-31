for index, force in pairs(game.forces) do
    if force.technologies["military-3"].researched == true then
        force.recipes["pistol-to-combat-shotgun"].enabled = true
        force.recipes["pistol-to-combat-shotgun"].reload()
    end
    if force.technologies["stack-inserter"].researched == true then
        force.recipes["filter-inserter-to-stack-filter-inserter"].enabled = true
        force.recipes["filter-inserter-to-stack-filter-inserter"].reload()
    end
end
