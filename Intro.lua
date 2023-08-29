--New Intro
local TweenService = game:GetService("TweenService")

local blur = Instance.new("BlurEffect", game.Lighting)
blur.Size = 0

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.5, -(303 / 2), 0.5, -(263 / 2))
ImageLabel.Rotation = 0
ImageLabel.Size = UDim2.new(0, 303, 0, 263)
ImageLabel.Image = "rbxassetid://9699004832"
ImageLabel.ImageTransparency = 1

local BottomFrame = Instance.new("Frame")
BottomFrame.Parent = ImageLabel
BottomFrame.BackgroundColor3 = Color3.new(1, 1, 1)
BottomFrame.BackgroundTransparency = 0
BottomFrame.Size = UDim2.new(1, 0, 0, 0) -- Bắt đầu ẩn đi
BottomFrame.Position = UDim2.new(0, 0, 1, 0)

local BottomText = Instance.new("TextLabel")
BottomText.Parent = BottomFrame
BottomText.BackgroundTransparency = 1
BottomText.Size = UDim2.new(1, 0, 1, 0)
BottomText.Position = UDim2.new(0, 0, 0, 5)
BottomText.Font = Enum.Font.SourceSansBold
BottomText.TextColor3 = Color3.new(0, 1, 1)
BottomText.Text = "Make it safe, make it fast, make it easy"
BottomText.TextSize = 20
BottomText.TextTransparency = 1 -- Bắt đầu ẩn đi

local function fadeInOut()
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

    local startTransparency = 1
    local endTransparency = 0

    local startBlurSize = 0
    local endBlurSize = 50

    local transparencyTween = TweenService:Create(ImageLabel, tweenInfo, {
        ImageTransparency = endTransparency
    })

    local blurTween = TweenService:Create(blur, tweenInfo, {
        Size = endBlurSize
    })

    local bottomFrameTweenIn = TweenService:Create(BottomFrame, tweenInfo, {
        Size = UDim2.new(1, 0, 0, 50) -- Hiển thị từ từ
    })

    local bottomTextTweenIn = TweenService:Create(BottomText, tweenInfo, {
        TextTransparency = 0 -- Hiển thị từ từ
    })

    transparencyTween:Play()
    blurTween:Play()
    wait(0.1) -- Đợi một lúc trước khi chạy hiệu ứng hiện ra
    bottomFrameTweenIn:Play()
    bottomTextTweenIn:Play()

    transparencyTween.Completed:Connect(function()
        wait(0.25)
        local transparencyTweenOut = TweenService:Create(ImageLabel, tweenInfo, {
            ImageTransparency = startTransparency
        })

        local blurTweenOut = TweenService:Create(blur, tweenInfo, {
            Size = startBlurSize
        })

        local bottomFrameTweenOut = TweenService:Create(BottomFrame, tweenInfo, {
            Size = UDim2.new(1, 0, 0, 0)
        })

        local bottomTextTweenOut = TweenService:Create(BottomText, tweenInfo, {
            TextTransparency = 1
        })

        transparencyTweenOut:Play()
        blurTweenOut:Play()
        bottomFrameTweenOut:Play()
        bottomTextTweenOut:Play()

        transparencyTweenOut.Completed:Connect(function()
            -- Xóa các phần tử và tween sau khi logo và hiệu ứng kết thúc
            ImageLabel:Destroy()
            blur:Destroy()
            ScreenGui:Destroy()
        end)
    end)
end

fadeInOut()
