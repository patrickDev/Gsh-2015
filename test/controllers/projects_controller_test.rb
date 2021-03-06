require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { address: @project.address, amount: @project.amount, country: @project.country, description: @project.description, impact_people: @project.impact_people, leader_name: @project.leader_name, organization_id: @project.organization_id, organization_name: @project.organization_name, organization_type: @project.organization_type, project_type: @project.project_type, region: @project.region, technical_assistance: @project.technical_assistance }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { address: @project.address, amount: @project.amount, country: @project.country, description: @project.description, impact_people: @project.impact_people, leader_name: @project.leader_name, organization_id: @project.organization_id, organization_name: @project.organization_name, organization_type: @project.organization_type, project_type: @project.project_type, region: @project.region, technical_assistance: @project.technical_assistance }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
