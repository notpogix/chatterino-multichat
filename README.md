# chatterino multichat

a small chatterino plugin that lets you send the same message to two twitch channels at the same time.

## features

- send one message to two twitch channels
- `enter` → sends only to the current channel
- `shift + enter` → sends to both channels
- 800ms delay between messages
- no bot account required
- no external software required

## setup

### 1. configure your channels

open `chatterino_multichat/init.lua` and change:

```lua
local CHANNEL_A = "your_channel"
local CHANNEL_B = "your_other_channel"
