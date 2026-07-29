-- JUJU HUB - Panel de Login para Roblox
local KEY_CORRETA = "Otávio lindo flee"
local SCRIPT_URL = "https://raw.githubusercontent.com/timmyVeryCrazy/FleeTheFacilityCheat/refs/heads/main/FleeTheFacilityCheatScript"

-- Criando a Interface (ScreenGui)
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseBtn = Instance.new("TextButton")
local KeyInput = Instance.new("TextBox")
local LoginBtn = Instance.new("TextButton")

-- Configurando a tela principal
ScreenGui.Parent = game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Name = "OtávioFlee"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
MainFrame.Position = UDim2.new(0.5, -125, 0.5, -75)
MainFrame.Size = UDim2.new(0, 250, 0, 150)
MainFrame.Active = true
MainFrame.Draggable = true -- Deixa o painel arrastável!

-- Barra Superior (Rosa)
TopBar.Name = "TopBar"
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(255, 105, 180) -- Rosa
TopBar.Size = UDim2.new(1, 0, 0, 30)

-- Título no Topo
Title.Name = "Title"
Title.Parent = TopBar
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 10, 0, 0)
Title.Size = UDim2.new(1, -40, 1, 0)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "JUJU HUB"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left

-- Botão X Vermelho
CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = TopBar
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
CloseBtn.Position = UDim2.new(1, -25, 0, 3)
CloseBtn.Size = UDim2.new(0, 22, 0, 24)
CloseBtn.Font = Enum.Font.SourceSansBold
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.TextSize = 14

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Campo para a KEY
KeyInput.Name = "KeyInput"
KeyInput.Parent = MainFrame
KeyInput.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
KeyInput.Position = UDim2.new(0.1, 0, 0.35, 0)
KeyInput.Size = UDim2.new(0.8, 0, 0, 30)
KeyInput.Font = Enum.Font.SourceSans
KeyInput.PlaceholderText = "Digite a KEY..."
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.TextSize = 14

-- Botão Entrar (Rosa)
LoginBtn.Name = "LoginBtn"
LoginBtn.Parent = MainFrame
LoginBtn.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
LoginBtn.Position = UDim2.new(0.2, 0, 0.68, 0)
LoginBtn.Size = UDim2.new(0.6, 0, 0, 30)
LoginBtn.Font = Enum.Font.SourceSansBold
LoginBtn.Text = "ENTRAR"
LoginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LoginBtn.TextSize = 16

-- Lógica de validação da Key
LoginBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == KEY_CORRETA then
        ScreenGui:Destroy()
        -- Executa o script do Flee The Facility diretamente no jogo
        loadstring(game:HttpGet(SCRIPT_URL))()
    else
        KeyInput.Text = ""
        KeyInput.PlaceholderText = "KEY Incorreta!"
    end
end)
