local client = {}
client.Notify = function(callback)
	return require(game:GetService("ReplicatedStorage").Game.Notification).new(callback)
end
local ID = game:GetService("RbxAnalyticsService"):GetClientId();
local whitelist = {"0F494600-3B21-4C19-8C21-9C482AB057AC", "", ""}

client.Notify({Text = "Đang xác thực id máy...     "})
wait(2)
for i, v in ipairs(whitelist) do 
if v == ID then 
	client.Notify({Text = "Thành Công  "})
else
	client.Notify({Text = "Mã xác thực sai    "})
	client.Notify({Text = "Đã copy id, gửi cho ad để thêm        "})
	setclipboard(ID)
	end
end