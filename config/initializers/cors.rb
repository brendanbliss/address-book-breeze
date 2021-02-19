Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :patch, :put]
  end
end

Rails.application.config.hosts = [
  IPAddr.new("0.0.0.0/0"), # All IPv4 addresses.
  IPAddr.new("::/0"),      # All IPv6 addresses.
  "localhost"              # The localhost reserved domain.
]