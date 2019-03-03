function forceFieldWallRecipe(color)
  local settings = require("prototypes/settings")[color]
  local emitter  = require("prototypes/settings")["emitter"]
  data:extend{
    {
      type = "recipe",
      name = string.format(settings.name, "wall", color),
      energy_required = math.floor(settings.properties.chargeRate * emitter.tickRate * 100)/100,
      category = emitter["crafting-category"],
      ingredients = {nil},
      result = string.format(settings.name, "wall", color),
      enabled = "false",
      always_show_made_in = "true",
    }
  }

end