require 'test_helper'

class StoveMaintenanceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stove_maintenance_index_url
    assert_response :success
  end

end
