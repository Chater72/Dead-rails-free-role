local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local MainButton = Instance.new("TextButton")
local FooterLabel = Instance.new("TextLabel")

Frame.Size = UDim2.new(0, 300, 0, 300)
Frame.Position = UDim2.new(0.5, -150, 0.5, -150)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 2
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.2
Frame.Style = Enum.FrameStyle.RobloxRound
Frame.Draggable = true
Frame.Active = true
Frame.Parent = ScreenGui

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 0.2, 0)
TitleLabel.Position = UDim2.new(0, 0, 0, 0)
TitleLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TitleLabel.Text = "Dead Rails"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextScaled = true
TitleLabel.Parent = Frame

local MainButton = Instance.new("TextButton")
MainButton.Size = UDim2.new(0.5, 0, 0.4, 0)
MainButton.Position = UDim2.new(0.25, 0, 0.3, 0)
MainButton.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
MainButton.Text = "Free role!"
MainButton.TextScaled = true
MainButton.Parent = Frame

local FooterLabel = Instance.new("TextLabel")
FooterLabel.Size = UDim2.new(1, 0, 0.1, 0)
FooterLabel.Position = UDim2.new(0, 0, 0.8, 0)
FooterLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
FooterLabel.Text = "by: @tolik_scripter in tg"
FooterLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FooterLabel.TextScaled = true
FooterLabel.Parent = Frame

MainButton.MouseButton1Click:Connect(function()
    local args = {
    [1] = "Horse"
}

game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("RemotePromise"):WaitForChild("Remotes"):WaitForChild("C_BuyClass"):FireServer(unpack(args))
        
    MainButton.Text = "Role gived!"
        
    wait(5)
    MainButton.Text = "Free role!"
end)

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
