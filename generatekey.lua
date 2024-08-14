local HttpService = game:GetService("HttpService")

local function generateRandomKey(userId)
    local characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    local length = 16
    local result = "AK_"

    math.randomseed(userId + os.time())

    for i = 1, length do
        local rand = math.random(#characters)
        result = result .. characters:sub(rand, rand)
    end

    return result
end

return generateRandomKey
