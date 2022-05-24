local client = {}
client.Notify = function(callback)
	return require(game:GetService("ReplicatedStorage").Game.Notification).new(callback)
end
local ID = game:GetService("RbxAnalyticsService"):GetClientId();

client.Notify({Text = "Đang xác thực id máy...     "})
wait(2)

if ID == "815CD256-8EE5-484B-B6C2-4E7AB821D606" then -- BEF49A83-21F6-4BB5-967E-3A106BB817AC
	client.Notify({Text = "Thành Công..  "})
elseif ID == "5011075B-B885-4FE8-9386-F4CF22EB8FE3" then
	client.Notify({Text = "Thành Công..  "})
elseif ID == "BEF49A83-21F6-4BB5-967E-3A106BB817AC" then
	client.Notify({Text = "Thành Công...  "})
elseif ID == "4" then
	client.Notify({Text = "Thành Công...  "})
else	
	client.Notify({Text = "Mã xác thực sai...    "})
	client.Notify({Text = "Đã copy id, gửi cho ad để thêm list...        "})
	setclipboard(ID)
	wait(5)
	game.Players.LocalPlayer:Kick("ID sai.")
	wait(99999)
end
