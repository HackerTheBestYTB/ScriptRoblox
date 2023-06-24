local vim = game:service("VirtualInputManager")

local SprintGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local sprintButton = Instance.new("ImageButton")

SprintGUI.Name = "SprintGUI"
SprintGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SprintGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SprintGUI.Enabled = true

Frame.Parent = SprintGUI
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.840875089, 0, 0.28342247, 0)
Frame.Size = UDim2.new(0, 70, 0, 70)
Frame.Active = true
Frame.Draggable = true

sprintButton.Name = "sprintButton"
sprintButton.Parent = Frame
sprintButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sprintButton.BackgroundTransparency = 1.000
sprintButton.Size = UDim2.new(0.999999702, 0, 1.00000012, 0)
sprintButton.Image = "http://www.roblox.com/asset/?id=4425413038"
sprintButton.ImageColor3 = Color3.fromRGB(100, 100, 100)

local player = game.Players.LocalPlayer
local Character = player.Character or player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

sprintButton.MouseButton1Click:Connect(function()
	if sprintButton.ImageColor3 == Color3.fromRGB(100, 100, 100) then
		sprintButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
		vim:SendKeyEvent(false, 304, false, game)
	else
		sprintButton.ImageColor3 = Color3.fromRGB(100, 100, 100)
		vim:SendKeyEvent(true, 304, false, game)
	end		
end)
