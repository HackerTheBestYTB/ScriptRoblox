print("Not Support")
wait(120)
local PromptLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/HackerTheBestYTB/ScriptRoblox/test/PromptLibrary.lua"))()
PromptLib("Possible Raid Warning","We have detected another Device in your\nhouse, in case you are alone, call 113\nquickly\n(Error Code: 1001)",{
    {Text = "Keep Playing",LayoutOrder = 0,Primary = false,Callback = function()
    end},
    {Text = "Leave",LayoutOrder = 0,Primary = true,Callback = function()
    end}
},true)
