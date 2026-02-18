require 'oj'

Oj.default_options = {
  mode: :compat,
  time_format: :ruby,
  use_to_json: true
}

# Use Oj for JSON rendering
module OjRenderer
  def self.call(value)
    Oj.dump(value)
  end
end

ActionController::Renderers.add :json do |json, options|
  self.content_type ||= Mime[:json]
  self.response_body = OjRenderer.call(json)
end
