require "test_helper"

class AgendasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agenda = agendas(:one)
  end

  test "should get index" do
    get agendas_url
    assert_response :success
  end

  test "should get new" do
    get new_agenda_url
    assert_response :success
  end

  test "should create agenda" do
    assert_difference("Agenda.count") do
      post agendas_url, params: { agenda: { description: @agenda.description, name: @agenda.name } }
    end

    assert_redirected_to agenda_url(Agenda.last)
  end

  test "should show agenda" do
    get agenda_url(@agenda)
    assert_response :success
  end

  test "should get edit" do
    get edit_agenda_url(@agenda)
    assert_response :success
  end

  test "should update agenda" do
    patch agenda_url(@agenda), params: { agenda: { description: @agenda.description, name: @agenda.name } }
    assert_redirected_to agenda_url(@agenda)
  end

  test "should destroy agenda" do
    assert_difference("Agenda.count", -1) do
      delete agenda_url(@agenda)
    end

    assert_redirected_to agendas_url
  end
end
