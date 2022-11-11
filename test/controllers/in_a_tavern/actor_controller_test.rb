require "test_helper"

module InATavern
  class ActorControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "" do
      InATavern.config.actor = "alice"

      get actor_url

      expected = {
        "@context" => [
          "https://www.w3.org/ns/activitystreams",
          "https://w3id.org/security/v1"
        ],
        "id" => "https://www.example.com/in_a_tavern/actor",
        "type" => "Person",
        "preferredUsername" => "alice",
        "inbox" => "https://www.example.com/in_a_tavern/inbox",
        "publicKey" => {
          "id" => "https://www.example.com/alice#main-key",
          "owner" => "https://www.example.com/in_a_tavern/actor",
          "publicKeyPem" => File.read(Rails.root.join("public.pem")),
        }
      }

      assert_equal(expected, JSON.parse(response.body))
    end
  end
end
