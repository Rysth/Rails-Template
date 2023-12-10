Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://localhost:5173'  # Add your frontend URL

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head], 
      credentials: true,
      expose: [:Authorization]
  end
end