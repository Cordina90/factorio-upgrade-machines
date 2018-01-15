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
    recipe.subgroup = "upgrade-machines"
    recipe.type = "recipe"
    recipe.main_product = recipe.main_product and recipe.main_product or ""
    recipe.icon = "__upgrade-machines__/graphics/icons/" .. recipe.name .. ".png"
    recipe.enabled = recipe.enabled and recipe.enabled or false
    recipe.icon_size = recipe.icon_size and recipe.icon_size or 32

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

    if not recipe.results then
        recipe.result = conditionalItems[2]
    else
        table.insert(recipe.results, { name = conditionalItems[2], type = "item", amount = "1" })
    end

    self:addRecipe(recipe);
end
