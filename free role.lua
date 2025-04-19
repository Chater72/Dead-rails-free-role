local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local MainButton = Instance.new("TextButton")
local FooterLabel = Instance.new("TextLabel")

-- Настройки фрейма
Frame.Size = UDim2.new(0, 300, 0, 300) -- Уменьшил размер фрейма
Frame.Position = UDim2.new(0.5, -150, 0.5, -150) -- Позиция фрейма немного изменена
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 2
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.2 -- Установил прозрачность фона
Frame.Style = Enum.FrameStyle.RobloxRound
Frame.Draggable = true
Frame.Active = true
Frame.Parent = ScreenGui

-- Заголовок
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 0.2, 0)
TitleLabel.Position = UDim2.new(0, 0, 0, 0)
TitleLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TitleLabel.Text = "Dead Rails"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextScaled = true
TitleLabel.Parent = Frame

-- Главная кнопка
local MainButton = Instance.new("TextButton")
MainButton.Size = UDim2.new(0.5, 0, 0.4, 0) -- Уменьшил размер кнопки
MainButton.Position = UDim2.new(0.25, 0, 0.3, 0) -- Позиция кнопки немного изменена
MainButton.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
MainButton.Text = "Free role!"
MainButton.TextScaled = true
MainButton.Parent = Frame

-- Подпись снизу
local FooterLabel = Instance.new("TextLabel")
FooterLabel.Size = UDim2.new(1, 0, 0.1, 0) -- Уменьшил размер подписи
FooterLabel.Position = UDim2.new(0, 0, 0.8, 0)
FooterLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
FooterLabel.Text = "by: @tolik_scripter in tg"
FooterLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FooterLabel.TextScaled = true
FooterLabel.Parent = Frame

-- Логика обработки нажатия на главную кнопку
MainButton.MouseButton1Click:Connect(function()
    print("Кнопка нажата!")

    -- Изменяем текст кнопки
    MainButton.Text = "Role gived!"

    -- Возвращаем текст в исходное состояние через 5 секунд
    wait(5)
    MainButton.Text = "Free role!"
end)

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
