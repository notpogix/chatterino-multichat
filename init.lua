local CHANNEL_A = "channel_1"
local CHANNEL_B = "channel_2"
local DELAY = 800

local function join_words(words, start_index)
    local parts = {}
    for i = start_index, #words do
        parts[#parts + 1] = words[i]
    end
    return table.concat(parts, " ")
end

local function multichat(ctx)
    local message = join_words(ctx.words, 2)

    if message == "" then
        return
    end

    local current = ctx.channel:get_name()
    local target_name

    if current == CHANNEL_A then
        target_name = CHANNEL_B
    elseif current == CHANNEL_B then
        target_name = CHANNEL_A
    else
        ctx.channel:add_system_message(
            "MultiChat: current channel is not configured (" .. current .. ")."
        )
        return
    end

    local target = c2.Channel.by_name(target_name)

    if target == nil or not target:is_valid() then
        ctx.channel:add_system_message(
            "MultiChat: target channel #" .. target_name .. " is not open in Chatterino."
        )
        return
    end

    ctx.channel:send_message(message, false)

    c2.later(function()
        if target:is_valid() then
            target:send_message(message, false)
        end
    end, DELAY)
end

c2.register_command("/multichat", multichat)

c2.log(
    c2.LogLevel.Info,
    "MultiChat loaded. Configured channels: #" .. CHANNEL_A .. " and #" .. CHANNEL_B
)
