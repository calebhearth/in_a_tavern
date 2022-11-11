require "test_helper"

module InATavern
  class WebfingerControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "show returns 400 when ?resource is absent" do
      get webfinger_path

      assert_response :bad_request
    end

    test "show retuns 404 when ?resource is not configured actor" do
      get webfinger_path(resource: "nonsense")

      assert_response :not_found
    end

    test "show returns actor when correctly requested" do
      InATavern.config.actor = "conan"

      get webfinger_path(resource: "acct:#{InATavern.config.actor}@www.example.com")

      assert_response :success
    end
  end
end
