TsApi::Application.config.middleware.use Rack::Cors do
  allow do
    origins '*'
    resource '*', :headers => :any, :methods => [:get, :post,:put,:delete,:head, :options]
  end
end
