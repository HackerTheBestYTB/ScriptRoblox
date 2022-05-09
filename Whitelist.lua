local client = {}
client.Notify = function(callback)
	return require(game:GetService("ReplicatedStorage").Game.Notification).new(callback)
end
local ID = game:GetService("RbxAnalyticsService"):GetClientId();

client.Notify({Text = "Đang xác thực id máy...     "})
wait(2)

if ID == "BEF49A83-21F6-4BB5-967E-3A106BB817AC" then 
	client.Notify({Text = "Thành Công  "})
elseif ID == "2" then
	client.Notify({Text = "Thành Công  "})
elseif ID == "3" then
	client.Notify({Text = "Thành Công  "})
elseif ID == "4" then
	client.Notify({Text = "Thành Công  "})
else	
	client.Notify({Text = "Mã xác thực sai    "})
	client.Notify({Text = "Đã copy id, gửi cho ad để thêm        "})
	client.Notify({Text = "vào danh sách  "})
	setclipboard(ID)
	wait(1.5)
	game.Players.LocalPlayer:Kick("ID sai")
end
