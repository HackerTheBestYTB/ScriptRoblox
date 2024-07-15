local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/HackerTheBestYTB/CoolUI/test/Orion/source')))()
local activefix = false
function message(text)
	OrionLib:MakeNotification({
		Name = "TVNHUB",
		Content = tostring(text),
		Image = "rbxassetid://4483345998",
		Time = 5
	})
	--firesignal(entityinfo.Caption.OnClientEvent,tostring(text)) 
end
local keys, network = loadstring(game:HttpGet("https://raw.githubusercontent.com/HackerTheBestYTB/ScriptRoblox/test/KeyFetcher.lua"))()
function Hash(value)
	if value == "GetShopItem" then
		return keys.EquipGun
	end
	return nil
end

function FireHash(value, value2, value3, value4)
	if value4 == nil and value3 == nil and value2 == nil then
		network:FireServer(value)
	elseif value4 == nil and value3 == nil then
		network:FireServer(value, value2)
	elseif value4 == nil then
		network:FireServer(value, value2, value3)
	else
		network:FireServer(value, value2, value3, value4)
	end
end

local function shoot()
	local currentGun = require(game:GetService("ReplicatedStorage").Game:FindFirstChild("ItemSystem"):FindFirstChild("ItemSystem")).GetLocalEquipped()
	if not currentGun then return end
	require(game:GetService("ReplicatedStorage").Game:FindFirstChild("Item"):FindFirstChild("Gun"))._attemptShoot(currentGun)
end

function EquipItemFromBackpack(item_name, value)
	game:GetService("Players").LocalPlayer.Folder:FindFirstChild(item_name).InventoryEquipRemote:FireServer(value)
end

local Window = OrionLib:MakeWindow({IntroText = "TVNHUB",Name = "TVNHUB | Jailbreak Auto Bounty v0.1(Beta)", HidePremium = false, SaveConfig = true, ConfigFolder = "TVNHUB-JailbreakAutoBounty"})

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddButton({
	Name = "Load Map(Be Prisoner First)",
	Callback = function()
		local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/HackerTheBestYTB/ScriptRoblox/test/Teleportation.lua"))();
		teleport(CFrame.new(479, 42, -1467))
		wait(2)
		for i = 1, 50 do
			wait(0.0001)
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(733, 39, 1075))
		end
		wait(0.0001)
		for i = 1, 25 do
			wait(0.0001)
			game.Players.LocalPlayer.Character:MoveTo(Vector3.new(689, 20, -3582))
		end
		wait(2)
		getgenv().slienttoggled12 = true --/ true & false

		getgenv().old = getgenv().old or require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList

		if getgenv().slienttoggled12 then
			require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = function(...)
				local nearestDistance, nearestEnemy = 3075, nil
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Team ~= game:GetService("Players").LocalPlayer.Team and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Team ~= game:GetService("Teams").Prisoner and v.Character.Humanoid.Health ~= 0 then
						if (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < nearestDistance then
							nearestDistance, nearestEnemy = (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude, v
						end
					end
				end
				local arg = {old(...)}
				if (tostring(getfenv(2).script) == "BulletEmitter" or tostring(getfenv(2).script) == "Taser") and nearestEnemy then
					arg[1] = nearestEnemy.Character.HumanoidRootPart
					arg[2] = nearestEnemy.Character.HumanoidRootPart.Position
				end
				return unpack(arg)
			end
		else
			require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = getgenv().old
		end
	end    
})

MainTab:AddToggle({
	Name = "Auto Kill",
	Default = false,
	Callback = function(Value)
	AutoKill = Value
	end    
})

MainTab:AddToggle({
	Name = "Fly",
	Default = false,
	Callback = function(Value)
		fly1 = Value
	end    
})

MainTab:AddToggle({
	Name = "Anti Arrest",
	Default = false,
	Callback = function(Value)
		MAA = Value
	end    
})

x123 = Instance.new("Part", game.Workspace)
x123.Name = "Part232"
x123.Anchored = true
x123.Size = Vector3.new(15, 0.0000001, 15)
x123.Rotation = Vector3.new(0, 0, 0)
x123.Transparency = 1
game:GetService("RunService").RenderStepped:Connect(function()
	if AutoKill then
		for i,v in pairs(game:GetService("Players").LocalPlayer.Folder:GetChildren()) do
			if v.Name == "Sniper" then
				EquipItemFromBackpack("Sniper", true)
				shoot()
			else
				FireHash(Hash("GetShopItem"), "Sniper")
				EquipItemFromBackpack("Sniper", true)
				EquipItemFromBackpack("Sniper", true)
			end
		end
		if fly1 then
			ValueFly12 = 55
			if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < ValueFly12 then
				game.Players.LocalPlayer.Character:MoveTo(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, 80, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
			end
			X12 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X
			Y12 = 60
			Z12 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
			x123.Position = Vector3.new(X12, Y12, Z12)
		end
		if MAA then
			game.Players.LocalPlayer.Character.Humanoid.Sit = true
		end
	end
end)

local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

CreditsTab:AddParagraph("Credits","Create by Triet2804#4818\nIf something is wrong with script please contract me, thank you!\nEnjoy The Script!")

CreditsTab:AddButton({
	Name = "Close GUI",
	Callback = function()
		OrionLib:Destroy()
	end    
})

OrionLib:Init()
activefix = true
