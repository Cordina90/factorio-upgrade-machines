local moduleName = Jelmergu
local M = {
    currentOrder = 1,
    alphabet = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", }
}
Jelmergu = M
--Jelmergu.currentOrder = 1

function Jelmergu:addRecipe(recipe)
    if recipe.order == nil then
        recipe.order = self.alphabet[self.currentOrder]
        self.currentOrder = self.currentOrder+1
    end
    recipe.allow_as_intermediate = false
    recipe.subgroup = "upgrade-machines"
    recipe.type = "recipe"
    recipe.main_product = recipe.main_product and recipe.main_product or ""
    recipe.icon = "__upgrade-machines__/graphics/icons/" .. recipe.name .. ".png"
    recipe.enabled = recipe.enabled and recipe.enabled or false
    recipe.icon_size = recipe.icon_size and recipe.icon_size or 32
    recipe.expensive = self:makeExpensive(recipe)

    data:extend({ recipe })
end

function Jelmergu:addConditionalRecipe(conditionalItems, recipe)

    local execute = true
    for index, cItem in next, conditionalItems do
        if not data.raw.item[cItem] then
            execute = false
            break
        end
    end

    if execute ~= true then
        return
    end

    if not recipe.results then
        recipe.result = conditionalItems[2]
    else
        table.insert(recipe.results, { name = conditionalItems[2], type = "item", amount = "1" })
    end

    self:addRecipe(recipe);
end

function Jelmergu:addConditionalTechnology(tech, recipeUnlock, alternativeTech)
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

function Jelmergu:makeExpensive(recipe)
    if recipe.expensive == false then
        log(recipe.name)
        return nil
    end
    
    local expensive = recipe.expensive ~= nil and recipe.expensive or {}

    if expensive.results == nil and recipe.results ~= nil then
        expensive.results = self:doubleTableExeptFirst(recipe.results)
    elseif expensive.result == nil then
        expensive.result = recipe.result
    end

    expensive.ingredients = self:doubleTableExeptFirst(recipe.ingredients)
    expensive.energy_required = expensive.energy_required ~= nil and expensive.energy_required or recipe.energy_required
    expensive.enabled = expensive.enabled and expensive.enabled or recipe.enabled

    return expensive
end



function Jelmergu:doubleTableExeptFirst (origin)
    local result = {}
    for k,v in pairs(origin) do
        if k ~= 1 then -- assume the first ingredient is the machine to upgrade
            if v.count ~= nil then
                v.count = v.count * 2
            elseif v.amount ~= nil then
                v.amount = v.amount * 2
            else
                v[2] = v[2] * 2
            end
            table.insert(result, v)
        else
            table.insert(result, v)
        end
    end
    return result
end