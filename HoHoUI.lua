local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/HackerTheBestYTB/ScriptRoblox/test/HoHoLIB.lua", true))()
local win = lib:Window("Hub Name","Game Name",Color3.new(0.333333, 0.666667, 1))
local tab = win:Tab("Tab Name")
local label = tab:Label("Label", properties) --properties: {["Visible"] = flase}
label:NewLabel("New Text", properties)
tab:Line()
tab:Button("Button", function()
	print("clicked")
end)
local toggle = tab:Toggle("Toggle", false, function(val)
	print(val)
    lib:Nof("notifi", 3)
end)
toggle:NewText("New Toggle")
toggle:NewState(true)
local slider = tab:Slider("Slider",1,100,30,function(val)
	print(val)
end)
local drop = tab:Dropdown("Drop New", {"a", 1, 5466}, function(val)
	print(val)
end)
drop:NewText("Drop New 2")
drop:NewDrop({1,'asdiowna',"aweqq"})
local txtbox = tab:Textbox("Textbox","write here",function(val)
	print(val)
end)
lib:Nof("notifi",3)