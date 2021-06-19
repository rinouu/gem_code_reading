require "slack-notify"
require 'clockwork'
require 'active_support/time'
include Clockwork

client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
client.notify("Hey")

client = SlackNotify::Client.new(
  webhook_url: "https://hooks.slack.com/services/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",
  channel: "#general",
  username: "webhookbot message",
  icon_url: "http://mydomain.com/myimage.png",
  icon_emoji: ":shipit:",
  link_names: 1
)
client.notify("Fine")
module Clockwork
	client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
	every(3.minutes, 'Three minutes') do
		client.notify("Yes!")
	end
end


