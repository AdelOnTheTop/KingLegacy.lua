local A = getgenv()
local wehookbounty
wehookbounty = hookfunction(require(game:GetService("ReplicatedStorage").Notification).new,function(...)
    local Args = {...}
    if Args[1] and string.find(Args[1], "killing") then 
        local BountyEarned = string.split(Args[1], "killing")
        A.SendWH = true
        A.SoBounty = string.gsub(BountyEarned[1],"%D","")
        A.TenPlayer = BountyEarned[2]
        return wehookbounty(...)
    end
    return wehookbounty(...)
end)
spawn(function ()
    while wait(.5) do
        pcall(function()
            if A.SendWH then
                webhook(A.SoBounty, A.TenPlayer)
            end
            A.SendWH = false
        end)
    end
end)
