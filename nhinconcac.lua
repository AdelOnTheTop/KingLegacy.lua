local SoBounty
local TenPlayer
local wehookbounty
wehookbounty = hookfunction(require(game:GetService("ReplicatedStorage").Notification).new,function(...)
    local Args = {...}
    if Args[1] and string.find(Args[1], "killing") then 
        local BountyEarned = string.split(Args[1], "killing")
        SendWH = true
        SoBounty = string.gsub(BountyEarned[1],"%D","")
        TenPlayer = BountyEarned[2]
        return wehookbounty(...)
    end
    return wehookbounty(...)
end)
spawn(function ()
    while wait(.5) do
        pcall(function()
            if SendWH and (getgenv().Settings['Webhook'] ~= nil or getgenv().Settings['Webhook'] ~= '') then
                webhook(SoBounty, TenPlayer)
            end
            SendWH = false
        end)
    end
end)
