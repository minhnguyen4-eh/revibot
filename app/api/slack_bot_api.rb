class SlackBotApi < Grape::API
  format :json
  
  mount SlackRubyBotServer::Api::Endpoints::RootEndpoint
end