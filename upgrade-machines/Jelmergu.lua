local moduleName = Jelmergu
local path = "__upgrade__"
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
    recipe.type = "recipe"
    recipe.subgroup = "upgrade-machines"
    recipe.main_product = recipe.main_product and recipe.main_product or ""
    recipe.icon = path .. "/graphics/icons/" .. recipe.name .. ".png"
    recipe.enabled = recipe.enabled and recipe.enabled or false
    recipe.icon_size = recipe.icon_size and recipe.icon_size or 32
    --recipe = self:convertToNormalAndExpensive(recipe)
    --var_dump({recipe, data.raw.recipe['electric-mining-drill']})
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

function Jelmergu:convertToNormalAndExpensive(recipe)
    if recipe.expensive == false then
        --var_dump(recipe.name)
        return recipe
    end

    local normal = {}
    local expensive = {}

    normal.allow_as_intermediate = recipe.allow_as_intermediate
    expensive.allow_as_intermediate = normal.allow_as_intermediate
    normal.ingredients = table.deepcopy(recipe.ingredients)
    --var_dump(normal, recipe.ingredients)
    normal.main_product = recipe.main_product
    --expensive.ingredients = self:doubleTableExeptFirst(normal.ingredients)

    if normal.results == nil and recipe.results ~= nil then
        normal.results = table.deepcopy(recipe.results)
        --expensive.results = self:doubleTableExeptFirst(normal.results)
    elseif normal.result == nil then
        normal.result, recipe.result = recipe.result, nil
        --expensive.result = normal.result
    end
    normal.energy_required, recipe.energy_required = recipe.energy_required, nil
    expensive.energy_required = normal.energy_required
    normal.enabled, recipe.enabled = recipe.enabled, nil
    expensive.enabled = normal.enabled

    recipe = table.unsetKeys(recipe, {"allow_as_intermediate", "ingredients", "main_product", "results", "result", "energy_required", "enabled"})


    recipe.normal = normal
    recipe.expensive = expensive
    --var_dump(recipe)
    return recipe

end

function Jelmergu:doubleTableExeptFirst (origin)
    local result = {}
    local r
    local o = table.deepcopy(origin)
    --var_dump(o)
    for k,v in pairs(o) do
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

function Jelmergu:removeUnlockFromTechnology(tech, recipe)
    for i = 1, #data.raw["technology"][tech].effects do
        var_dump(data.raw["technology"][tech].effects[i], tech, recipe, i)
        local effect = data.raw["technology"][tech].effects[i]
        if effect.type == "unlock-recipe" and effect.recipe == recipe then
            table.remove(data.raw["technology"][tech].effects, i)
            return
        end
    end
end
