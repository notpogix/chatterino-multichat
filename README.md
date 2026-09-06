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

for example:

local CHANNEL_A = "marlon"
local CHANNEL_B = "lacy"
2. install the plugin

download the latest release and extract it.

put the chatterino_multichat folder inside your chatterino plugins folder.

it should look like this:

plugins/
└── chatterino_multichat/
    ├── init.lua
    └── info.json

restart chatterino after installing the plugin.

3. open both channels

both configured channels need to be open in chatterino.

4. set up the hotkey

go to:

settings → hotkeys → add

use these settings:

name: multichat
category: split
action: run a command
keybinding: shift + enter
arguments: /multichat {input.text}

click ok and you're ready to use it.

usage
normal message

press enter.

the message will only be sent to the channel you're currently typing in.

send to both channels

press shift + enter.

the message will be sent to the current channel and then to the other configured channel 800ms later.

changing the delay

the default delay is 800ms.

you can change it in init.lua:

local DELAY = 800

the value is in milliseconds.

for example:

local DELAY = 1000

means a 1 second delay.

troubleshooting
current channel is not configured

make sure the channel you're currently typing in is one of the two channels configured in init.lua.

target channel is not open

make sure both configured channels are open in chatterino.

shift + enter is not working

check your chatterino hotkey and make sure it is set to:

category: split
action: run a command
keybinding: shift + enter
arguments: /multichat {input.text}
important

this plugin does not bypass twitch chat restrictions or rate limits.

if your account cannot normally send messages in a channel, this plugin will not bypass that restriction.
