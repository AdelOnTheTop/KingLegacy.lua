local wehookbounty
wehookbounty = hookfunction(require(game:GetService("ReplicatedStorage").Notification).new,function(...)
    local Args = {...}
    if Args[1] and string.find(Args[1], "killing") then 
        local BountyEarned = string.split(Args[1], "killing")
        getgenv().SendWH = true
        getgenv().SoBounty = string.gsub(BountyEarned[1],"%D","")
        getgenv().TenPlayer = BountyEarned[2]
        return wehookbounty(...)
    end
    return wehookbounty(...)
end)
spawn(function ()
    while wait(.5) do
        pcall(function()
            if SendWH then
                webhook(SoBounty, TenPlayer)
            end
            SendWH = false
        end)
    end
end)
