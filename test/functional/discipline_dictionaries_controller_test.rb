require 'test_helper'

class DisciplineDictionariesControllerTest < ActionController::TestCase
  setup do
    @discipline_dictionary = discipline_dictionaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discipline_dictionaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discipline_dictionary" do
    assert_difference('DisciplineDictionary.count') do
      post :create, :discipline_dictionary => @discipline_dictionary.attributes
    end

    assert_redirected_to discipline_dictionary_path(assigns(:discipline_dictionary))
  end

  test "should show discipline_dictionary" do
    get :show, :id => @discipline_dictionary.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @discipline_dictionary.to_param
    assert_response :success
  end

  test "should update discipline_dictionary" do
    put :update, :id => @discipline_dictionary.to_param, :discipline_dictionary => @discipline_dictionary.attributes
    assert_redirected_to discipline_dictionary_path(assigns(:discipline_dictionary))
  end

  test "should destroy discipline_dictionary" do
    assert_difference('DisciplineDictionary.count', -1) do
      delete :destroy, :id => @discipline_dictionary.to_param
    end

    assert_redirected_to discipline_dictionaries_path
  end
end
