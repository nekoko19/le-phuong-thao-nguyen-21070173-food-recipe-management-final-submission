require "test_helper"

class InstructionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instruction = instructions(:one)
  end

  test "should get index" do
    get instructions_url
    assert_response :success
  end

  test "should get new" do
    get new_instruction_url
    assert_response :success
  end

  test "should create instruction" do
    assert_difference("Instruction.count") do
      post instructions_url, params: { instruction: { cook_time: @instruction.cook_time, description: @instruction.description, ingredient: @instruction.ingredient, prep_time: @instruction.prep_time, recipe_id: @instruction.recipe_id } }
    end

    assert_redirected_to instruction_url(Instruction.last)
  end

  test "should show instruction" do
    get instruction_url(@instruction)
    assert_response :success
  end

  test "should get edit" do
    get edit_instruction_url(@instruction)
    assert_response :success
  end

  test "should update instruction" do
    patch instruction_url(@instruction), params: { instruction: { cook_time: @instruction.cook_time, description: @instruction.description, ingredient: @instruction.ingredient, prep_time: @instruction.prep_time, recipe_id: @instruction.recipe_id } }
    assert_redirected_to instruction_url(@instruction)
  end

  test "should destroy instruction" do
    assert_difference("Instruction.count", -1) do
      delete instruction_url(@instruction)
    end

    assert_redirected_to instructions_url
  end
end
