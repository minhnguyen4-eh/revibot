SlackRubyBotServer.configure do |config|
    config.oauth_version = :v2
    config.oauth_scope = ["commands", "chat:write", "users:read", "chat:write.public"]
end