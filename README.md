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
local CHANNEL_A = "channel_1"
local CHANNEL_B = "channel_2"

2. install the plugin

download the latest release and extract it.

put the chatterino_multichat folder inside your chatterino plugins folder.

it should look like this:

plugins/
└── chatterino_multichat/
    ├── init.lua
    └── info.json

restart chatterino after installing the plugin.
