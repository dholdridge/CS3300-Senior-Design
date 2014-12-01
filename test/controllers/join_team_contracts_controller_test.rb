require 'test_helper'

class JoinTeamContractsControllerTest < ActionController::TestCase
  setup do
    @join_team_contract = join_team_contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:join_team_contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create join_team_contract" do
    assert_difference('JoinTeamContract.count') do
      post :create, join_team_contract: { student_accepted: @join_team_contract.student_accepted, student_id: @join_team_contract.student_id, team_accepted: @join_team_contract.team_accepted, team_id: @join_team_contract.team_id }
    end

    assert_redirected_to join_team_contract_path(assigns(:join_team_contract))
  end

  test "should show join_team_contract" do
    get :show, id: @join_team_contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @join_team_contract
    assert_response :success
  end

  test "should update join_team_contract" do
    patch :update, id: @join_team_contract, join_team_contract: { student_accepted: @join_team_contract.student_accepted, student_id: @join_team_contract.student_id, team_accepted: @join_team_contract.team_accepted, team_id: @join_team_contract.team_id }
    assert_redirected_to join_team_contract_path(assigns(:join_team_contract))
  end

  test "should destroy join_team_contract" do
    assert_difference('JoinTeamContract.count', -1) do
      delete :destroy, id: @join_team_contract
    end

    assert_redirected_to join_team_contracts_path
  end
end
