# EvidenceBot

A Slack bot for collecting and managing evidence in Slack conversations.

## Overview

EvidenceBot helps teams capture, organize, and retrieve important evidence from Slack channels. Whether you're tracking user feedback, documenting incidents, or collecting proof for audits, EvidenceBot makes it easy to preserve critical information.

## Tech Stack

- **Ruby**: 3.2.8
- **Rails**: 7.1.5+
- **Database**: PostgreSQL
- **Slack Integration**: slack-ruby-bot-server

## Setup

### Prerequisites

- Ruby 3.2.8
- PostgreSQL installed and running
- Slack workspace with admin permissions

### Installation

1. Install dependencies:
```bash
bundle install
```

2. Create `.env` file in the project root:
```env
SLACK_CLIENT_ID=your_client_id
SLACK_CLIENT_SECRET=your_client_secret
SLACK_SIGNING_SECRET=your_signing_secret
SLACK_VERIFICATION_TOKEN=your_verification_token
```

3. Create and setup database:
```bash
rails db:create
```

4. Start the server:
```bash
rails server
```

The `teams` table will be created automatically when the server starts.

## Configuration

### Slack App Setup

1. Go to https://api.slack.com/apps
2. Create a new app or select your existing app
3. Configure OAuth & Permissions with required scopes:
   - `commands` - For slash commands
   - `chat:write` - Send messages
   - `users:read` - Read user information
   - `chat:write.public` - Send messages to public channels

4. Get your credentials:
   - **Client ID**: Basic Information → App Credentials
   - **Client Secret**: Basic Information → App Credentials
   - **Signing Secret**: Basic Information → App Credentials
   - **Verification Token**: Basic Information → App Credentials

### Manual Token Setup (Option B)

If you're only using this bot in your own workspace, you can manually add the token:

1. Install the app to your workspace via Slack UI
2. Copy the "Bot User OAuth Token" from OAuth & Permissions
3. Add it to your database:

```ruby
rails console

Team.create!(
  team_id: "YOUR_TEAM_ID",
  name: "Your Workspace Name",
  token: "xoxb-your-bot-token",
  oauth_scope: "commands,chat:write,users:read,chat:write.public",
  oauth_version: "v2",
  bot_user_id: "YOUR_BOT_USER_ID",
  activated_user_id: "YOUR_USER_ID",
  activated_user_access_token: "xoxb-your-bot-token",
  active: true
)
```

## Development

### Running with ngrok

To test Slack webhooks locally:

1. Start ngrok:
```bash
ngrok http 3000
```

2. Update your Slack app's Request URL with the ngrok URL

3. Start Rails server:
```bash
rails server
```

## License

All rights reserved.
