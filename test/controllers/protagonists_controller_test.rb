require 'test_helper'

class ProtagonistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @protagonist = protagonists(:one)
  end

  test "should get index" do
    get protagonists_url
    assert_response :success
  end

  test "should get new" do
    get new_protagonist_url
    assert_response :success
  end

  test "should create protagonist" do
    assert_difference('Protagonist.count') do
      post protagonists_url, params: { protagonist: { department: @protagonist.department, edifice: @protagonist.edifice, homeAddress: @protagonist.homeAddress, homePhone: @protagonist.homePhone, profession: @protagonist.profession, university: @protagonist.university, workAddress: @protagonist.workAddress, workPhone: @protagonist.workPhone } }
    end

    assert_redirected_to protagonist_url(Protagonist.last)
  end

  test "should show protagonist" do
    get protagonist_url(@protagonist)
    assert_response :success
  end

  test "should get edit" do
    get edit_protagonist_url(@protagonist)
    assert_response :success
  end

  test "should update protagonist" do
    patch protagonist_url(@protagonist), params: { protagonist: { department: @protagonist.department, edifice: @protagonist.edifice, homeAddress: @protagonist.homeAddress, homePhone: @protagonist.homePhone, profession: @protagonist.profession, university: @protagonist.university, workAddress: @protagonist.workAddress, workPhone: @protagonist.workPhone } }
    assert_redirected_to protagonist_url(@protagonist)
  end

  test "should destroy protagonist" do
    assert_difference('Protagonist.count', -1) do
      delete protagonist_url(@protagonist)
    end

    assert_redirected_to protagonists_url
  end
end
