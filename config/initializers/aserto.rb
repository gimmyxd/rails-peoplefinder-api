# frozen_string_literal: true

# use my custom policy path mapper
# Aserto.with_policy_path_mapper do |policy_root, request|
#   method = request.request_method
#   path = request.path_info

#   "custom => #{policy_root}.#{method}.#{path}"
# end

Rails.application.config.middleware.use Aserto::Authorization do |config|
  config.enabled = true
  config.policy_id = "8a402085-b044-11ec-a3c0-01e16a9c7735"
  config.tenant_id = "45bfc282-1533-11ec-9980-00e16a9c7735"
  config.authorizer_api_key = Rails.application.credentials.aserto[:authorizer_api_key]
  config.policy_root = "peoplefinder"
  config.authorizer_url = "authorizer.eng.aserto.com:8443"
  config.decision = "allowed"
  config.logger = Rails.logger
  config.identity_mapping = {
    type: :sub,
    from: :sub
  }
  config.disabled_for = [
    {
      controller: "api/v1/users",
      actions: %i[create]
    },
    {
      controller: "api/v1/authentication",
      actions: %i[login]
    }
  ]
end
