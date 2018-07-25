for index, force in pairs(game.forces) do
    local technologies = force.technologies;
    local recipes = force.recipes;

    if technologies["heavy-armor"].researched then
        if recipes["light-to-heavy-armor"] then
            recipes["light-to-heavy-armor"].enabled = true
        end
    end
    if technologies["modular-armor"].researched then
        if recipes  ["heavy-to-modular-armor"] then
            recipes ["heavy-to-modular-armor"].enabled = true
        end
    end
    if technologies["power-armor"].researched then
        if recipes  ["modular-to-power-armor"] then
            recipes ["modular-to-power-armor"].enabled = true
        end
    end
    if technologies["power-armor-2"].researched then
        if recipes  ["power-to-power-armor-mk2"] then
            recipes ["power-to-power-armor-mk2"].enabled = true
        end
    end
end
