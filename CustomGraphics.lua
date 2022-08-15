local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/HackerTheBestYTB/ScriptRoblox/test/UILIBOB.lua')))()

local gui = library:CreateWindow("Graphics") -- Creates the window

local devs = gui:CreateFolder("Graphics") -- Creates the folder(U will put here your buttons,etc)

local gui2 = library:CreateWindow("Other") -- Creates the window

local server2 = gui2:CreateFolder("Server")

local cre = gui2:CreateFolder("Creator")


devs:Button("Beautiful (maybe)",function()
	getgenv().mode = "Autumn" -- Choose from Summer and Autumn (Summer looks bad ngl)
	local a = game.Lighting
	a.Ambient = Color3.fromRGB(33, 33, 33)
	a.Brightness = 6.67
	a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
	a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
	a.EnvironmentDiffuseScale = 0.105
	a.EnvironmentSpecularScale = 0.522
	a.GlobalShadows = true
	a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
	a.ShadowSoftness = 0.04
	a.GeographicLatitude = -15.525
	a.ExposureCompensation = 0.75
	local b = Instance.new("BloomEffect", a)
	b.Enabled = true
	b.Intensity = 0.04
	b.Size = 1900
	b.Threshold = 0.915
	local c = Instance.new("ColorCorrectionEffect", a)
	c.Brightness = 0.176
	c.Contrast = 0.39
	c.Enabled = true
	c.Saturation = 0.2
	c.TintColor = Color3.fromRGB(217, 145, 57)
	if getgenv().mode == "Summer" then
		c.TintColor = Color3.fromRGB(255, 220, 148)
	elseif getgenv().mode == "Autumn" then
		c.TintColor = Color3.fromRGB(217, 145, 57)
	else
		warn("No mode selected!")
		print("Please select a mode")
		b:Destroy()
		c:Destroy()
	end
	local d = Instance.new("DepthOfFieldEffect", a)
	d.Enabled = true
	d.FarIntensity = 0.077
	d.FocusDistance = 21.54
	d.InFocusRadius = 20.77
	d.NearIntensity = 0.277
	local e = Instance.new("ColorCorrectionEffect", a)
	e.Brightness = 0
	e.Contrast = -0.07
	e.Saturation = 0
	e.Enabled = true
	e.TintColor = Color3.fromRGB(255, 247, 239)
	local e2 = Instance.new("ColorCorrectionEffect", a)
	e2.Brightness = 0.2
	e2.Contrast = 0.45
	e2.Saturation = -0.1
	e2.Enabled = true
	e2.TintColor = Color3.fromRGB(255, 255, 255)
	local s = Instance.new("SunRaysEffect", a)
	s.Enabled = true
	s.Intensity = 0.01
	s.Spread = 0.146
end)

devs:Button("Low",function()
	local a = game
	local b = a.Workspace
	local c = a.Lighting
	local d = b.Terrain
	d.WaterWaveSize = 0
	d.WaterWaveSpeed = 0
	d.WaterReflectance = 0
	d.WaterTransparency = 0
	c.GlobalShadows = false
	c.FogEnd = 9e9
	settings().Rendering.QualityLevel = "Level08"
	for e, f in pairs(a:GetDescendants()) do
		if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
			f.Reflectance = 0
		elseif f:IsA("Decal") or f:IsA("Texture") then
			f.Transparency = 0
		elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
			f.Lifetime = NumberRange.new(0)
		elseif f:IsA("Explosion") then
			f.BlastPressure = 0
			f.BlastRadius = 0
		elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
			f.Enabled = false
		elseif f:IsA("MeshPart") then
			f.Reflectance = 0
		end
		if f:IsA("Fire") then
			f:Destroy()
			wait()
		end
	end
	for e, g in pairs(c:GetChildren()) do
		if
			g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or
			g:IsA("DepthOfFieldEffect")
		then
			g.Enabled = false
		end
	end
	sethiddenproperty(game.Lighting, "Technology", "Compatibility")
end)

devs:Button("Low (Max Distance)",function()
	local a = game
	local b = a.Workspace
	local c = a.Lighting
	local d = b.Terrain
	d.WaterWaveSize = 0
	d.WaterWaveSpeed = 0
	d.WaterReflectance = 0
	d.WaterTransparency = 0
	c.GlobalShadows = false
	c.FogEnd = 9e9
	settings().Rendering.QualityLevel = "Level10"
	for e, f in pairs(a:GetDescendants()) do
		if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
			f.Reflectance = 0
		elseif f:IsA("Decal") or f:IsA("Texture") then
			f.Transparency = 0
		elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
			f.Lifetime = NumberRange.new(0)
		elseif f:IsA("Explosion") then
			f.BlastPressure = 0
			f.BlastRadius = 0
		elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
			f.Enabled = false
		elseif f:IsA("MeshPart") then
			f.Reflectance = 0
		end
		if f:IsA("Fire") then
			f:Destroy()
			wait()
		end
	end
	for e, g in pairs(c:GetChildren()) do
		if
			g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or
			g:IsA("DepthOfFieldEffect")
		then
			g.Enabled = false
		end
	end
	sethiddenproperty(game.Lighting, "Technology", "Compatibility")
end)

devs:Button("Ultra Low",function()
	local a = game
	local b = a.Workspace
	local c = a.Lighting
	local d = b.Terrain
	d.WaterWaveSize = 0
	d.WaterWaveSpeed = 0
	d.WaterReflectance = 0
	d.WaterTransparency = 0
	c.GlobalShadows = false
	c.FogEnd = 9e9
	c.Brightness = 0
	settings().Rendering.QualityLevel = "Level06"
	for e, f in pairs(a:GetDescendants()) do
		if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
			f.Reflectance = 0
		elseif f:IsA("Decal") or f:IsA("Texture") then
			f.Transparency = 0
		elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
			f.Lifetime = NumberRange.new(0)
		elseif f:IsA("Explosion") then
			f.BlastPressure = 0
			f.BlastRadius = 0
		elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
			f.Enabled = false
		elseif f:IsA("MeshPart") then
			f.Material = "Plastic"
			f.Reflectance = 0
			f.TextureID = 10385902758728957
		end
		if f:IsA("Fire") then
			f:Destroy()
			wait()
		end
	end
	for e, g in pairs(c:GetChildren()) do
		if
			g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or
			g:IsA("DepthOfFieldEffect")
		then
			g.Enabled = false
		end
	end
	sethiddenproperty(game.Lighting, "Technology", "Compatibility")
end)

devs:Button("Ultra Low (Max Distance)",function()
	local a = game
	local b = a.Workspace
	local c = a.Lighting
	local d = b.Terrain
	d.WaterWaveSize = 0
	d.WaterWaveSpeed = 0
	d.WaterReflectance = 0
	d.WaterTransparency = 0
	c.GlobalShadows = false
	c.FogEnd = 9e9
	c.Brightness = 0
	settings().Rendering.QualityLevel = "Level10"
	for e, f in pairs(a:GetDescendants()) do
		if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
			f.Reflectance = 0
		elseif f:IsA("Decal") or f:IsA("Texture") then
			f.Transparency = 0
		elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
			f.Lifetime = NumberRange.new(0)
		elseif f:IsA("Explosion") then
			f.BlastPressure = 0
			f.BlastRadius = 0
		elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
			f.Enabled = false
		elseif f:IsA("MeshPart") then
			f.Material = "Plastic"
			f.Reflectance = 0
			f.TextureID = 10385902758728957
		end
		if f:IsA("Fire") then
			f:Destroy()
			wait()
		end
	end
	for e, g in pairs(c:GetChildren()) do
		if
			g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or
			g:IsA("DepthOfFieldEffect")
		then
			g.Enabled = false
		end
	end
	sethiddenproperty(game.Lighting, "Technology", "Compatibility")
end)

server2:Button("F3 on/off wifi",function()
	local a = false
	local b = settings()

	game:service'UserInputService'.InputEnded:connect(function(i)
		if i.KeyCode == Enum.KeyCode.F3 then
			a = not a
			b.Network.IncomingReplicationLag = a and 10 or 0
		end
	end)
end)

server2:Button("VIP Server",function()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	local File = pcall(function()
		AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
	end)
	if not File then
		table.insert(AllIDs, actualHour)
		writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
	end
	function TPReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = tostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								delfile("NotSameServers.json")
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(4)
				end
			end
		end
	end

	function Teleport()
		while wait() do
			pcall(function()
				TPReturner()
				if foundAnything ~= "" then
					TPReturner()
				end
			end)
		end
	end

	-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
	Teleport() 
end)

server2:Button("Rejoin Server",function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

cre:Label("Create By Triet2804#5233",{
	TextSize = 15; -- Self Explaining
	TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
	BgColor = Color3.fromRGB(69,69,69); -- Self Explaining

})

cre:Label("Versoin 1.0",{
	TextSize = 25; -- Self Explaining
	TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
	BgColor = Color3.fromRGB(69,69,69); -- Self Explaining

})

cre:DestroyGui()

--[[
b:Label("Pretty Useless NGL",{
TextSize = 25; -- Self Explaining
TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
BgColor = Color3.fromRGB(69,69,69); -- Self Explaining

}) 

b:Button("Button",function()
	print("Elym Winning")
end)

b:Toggle("Toggle",function(bool)
	shared.toggle = bool
	print(shared.toggle)
end)

b:Slider("Slider",{
	min = 10; -- min value of the slider
	max = 50; -- max value of the slider
	precise = true; -- max 2 decimals
},function(value)
	print(value)
end)

b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
	print(mob)
end)

b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
	print("Yes")
end)

b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
	print(color)
end)

b:Box("Box","number",function(value) -- "number" or "string"
	print(value)
end)

b:DestroyGui()
]]
