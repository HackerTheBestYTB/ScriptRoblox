local client = {}
client.Notify = function(callback)
	return require(game:GetService("ReplicatedStorage").Game.Notification).new(callback)
end
local ID = game:GetService("RbxAnalyticsService"):GetClientId();
local whitelist = loadstring(game:HttpGet("https://raw.githubusercontent.com/HackerTheBestYTB/ScriptRoblox/test/list.lua"))()

client.Notify({Text = "Đang xác thực id máy...     "})
wait(2)
for i, v in ipairs(whitelist) do 
if v == ID then 
	client.Notify({Text = "Thành Công  "})
else
	client.Notify({Text = "Mã xác thực sai    "})
	client.Notify({Text = "Đã copy id, gửi cho ad để thêm        "})
	print("")
	setclipboard(ID)
	end
end
