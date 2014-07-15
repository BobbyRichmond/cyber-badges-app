require 'test_helper'

class BadgesTemplatesControllerTest < ActionController::TestCase
  setup do
    @badges_template = badges_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:badges_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create badges_template" do
    assert_difference('BadgesTemplate.count') do
      post :create, badges_template: { description: @badges_template.description, internet_points: @badges_template.internet_points, name: @badges_template.name }
    end

    assert_redirected_to badges_template_path(assigns(:badges_template))
  end

  test "should show badges_template" do
    get :show, id: @badges_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @badges_template
    assert_response :success
  end

  test "should update badges_template" do
    put :update, id: @badges_template, badges_template: { description: @badges_template.description, internet_points: @badges_template.internet_points, name: @badges_template.name }
    assert_redirected_to badges_template_path(assigns(:badges_template))
  end

  test "should destroy badges_template" do
    assert_difference('BadgesTemplate.count', -1) do
      delete :destroy, id: @badges_template
    end

    assert_redirected_to badges_templates_path
  end
end
