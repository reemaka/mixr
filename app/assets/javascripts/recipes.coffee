# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

jQuery ->
  ingr_count = 3
  step_count = 3
  console.log("hey")
  $("#add-ingredient").click (event)->
    to_add = '<div class="field ingredients-field">'
    to_add += '<label for="recipe_recipe_ingredients_attributes_' + ingr_count
    to_add += '_quantity">Quantity</label>'
    to_add += '<input type="text" name="recipe[recipe_ingredients_attributes]['
    to_add += ingr_count + '][quantity]" id="recipe_recipe_ingredients_attributes_'
    to_add += ingr_count + '_quantity">'
    to_add += '<label for="recipe_recipe_ingredients_attributes_' + ingr_count + '_ingredient">Ingredient</label>'
    to_add += '<input type="text" name="recipe[recipe_ingredients_attributes]['
    to_add += ingr_count + '][ingredient]" id="recipe_recipe_ingredients_attributes_'
    to_add += ingr_count + '_ingredient">'
    to_add += '</div>'
    $(".ingredients").append(to_add)
    ingr_count++

  $("#add-step").click (event)->
    to_add = '<div class="field steps-field">'
    to_add += '<label for="recipe_steps_attributes_' + step_count + '_'
    to_add += (step_count + 1) + '">'+ (step_count + 1) + '</label>'
    to_add += '<textarea name="recipe[steps_attributes]['
    to_add += step_count + '][instruction]" id="recipe_steps_attributes_'
    to_add += step_count + '_instruction"></textarea></div>'
    $(".steps").append(to_add)
    step_count++

 
