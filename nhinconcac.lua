local LocalFlyingEntity =  require(game.ReplicatedStorage.LocalFlyingEntity)
local ListCross = {}
local temp
local ParticleTools = require(game.ReplicatedStorage.LocalFX.LocalTargetPracticeBeam)
game.Workspace.Particles.ChildAdded:Connect(function(v)
	if v.Name == "Crosshair" and v ~= nil and v.BrickColor ~= BrickColor.new("Forest green") and v.BrickColor ~= BrickColor.new("Flint") then
		temp = v
	end
end)
local old
old = hookfunction(ParticleTools.Make,function(...) 
    local rac = ...
    if tostring(rac.Player)==plr.Name then 
        if rac.Action == "Make" then 
            temp = nil
            local a = old(...)
            if temp and rac and rac.FEID then 
                --print(rac.Attach.Parent,temp)
                local att = LocalFlyingEntity.GetEntity(rac.FEID).Part
                if att then 
                    if not ListCross[att] then 
                        ListCross[att] = {}
                    end
                    table.insert(ListCross[att],temp)
                end
                
            end
            return a
        end
    end
    return old(...)
end)
return ListCross
