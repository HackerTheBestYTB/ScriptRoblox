if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat
    task.wait()
until game:GetService("Players") and game:GetService("Workspace") and game:GetService("ReplicatedStorage")
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
    if v:IsA("BasePart") and v.CanCollide == true then
        v.CanCollide = false
    end
end
loadstring(game:HttpGet(("https://raw.githubusercontent.com/HackerTheBestYTB/ScriptRoblox/test/AutoFruit.lua")))()
