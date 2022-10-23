local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Yoda Hub - Boxing Simulator", "Midnight")

local Tab = Window:NewTab("Player")
local Section1 = Tab:NewSection("Automatic")
    Section1:NewButton("Auto Sell", "Give auto sell", function()
        while wait(1) do
            local A_1 = true
            local Event = game:GetService("ReplicatedStorage").Events.SellRequest
            Event:FireServer(A_1)

        end
    end)
    Section1:NewToggle("Auto DogeCoins", "Auto DogeCoins", function(state)
        if state then
            local doge = true
            while true do
                if doge == false then
                    break
                end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Canes.CandyCane.HumanoidRootPart.CFrame
            wait(0.5)
            end
        else
            local doge = false
        end
    end)

local Section2 = Tab:NewSection("Buy All")
    Section2:NewButton("Buy All Gloves", "All gloves", function()
        local Event = game:GetService("ReplicatedStorage").Events.BuyAllGlove
        Event:FireServer()
    end)
    Section2:NewButton("Buy All DNA", "All DNA", function()
        local Event = game:GetService("ReplicatedStorage").Events.BuyAllDNA
        Event:FireServer()
    end)

local Section4 = Tab:NewSection("Teleport")
Section4:NewDropdown("Islands", "Island", {"Desert", "Winter", "Mysterious", "Galaxy", "Fire", "Volcanoes", "Water", "Storm", "Infinity", "Magma"}, function(currentOption)
    if currentOption == "Desert" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16470.9141, 1887.82959, -35275.6875, 0.68064028, -2.5070932e-08, 0.732617795, 7.36017158e-09, 1, 2.73830398e-08, -0.732617795, -1.32458071e-08, 0.68064028)
end 
if currentOption == "Winter" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16413.7246, 3410.70679, -35281.9453, -0.999798834, 2.82446777e-09, 0.020057587, 9.57951829e-10, 1, -9.30674489e-08, -0.020057587, -9.3029513e-08, -0.999798834)
end
if currentOption == "Mysterious" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16435.0801, 3410.70679, -35319.4961, -0.0721696168, 9.7488595e-08, 0.997392356, 2.28271424e-09, 1, -9.75782939e-08, -0.997392356, -4.76542672e-09, -0.0721696168)
end
if currentOption == "Galaxy" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16277.2764, 10798.5303, -35253.6641, -0.559719741, 2.95016918e-08, -0.828681946, 8.66829986e-09, 1, 2.97458769e-08, 0.828681946, 9.46609102e-09, -0.559719741)
end
if currentOption == "Fire" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16286.0498, 18314.0684, -35172.6367, -0.903718293, 3.20287228e-08, -0.428127557, 2.05792681e-08, 1, 3.13711617e-08, 0.428127557, 1.95401402e-08, -0.903718293)
end
if currentOption == "Volcano" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16697.8984, 24501.4277, -35202.9961, 0.376064628, -1.52192503e-09, -0.926593423, 1.10474085e-09, 1, -1.19412802e-09, 0.926593423, -5.74576275e-10, 0.376064628)
end
if currentOption == "Water" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16500.8594, 34103.2891, -35259.8828, -0.768749237, 6.31118908e-08, 0.639550328, -4.4751145e-09, 1, -1.04060824e-07, -0.639550328, -8.28587403e-08, -0.768749237)
end
if currentOption == "Storm" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16488.668, 50546.4766, -35244.168, 0.954409301, 3.45074795e-08, -0.298501045, -1.253738e-08, 1, 7.55162759e-08, 0.298501045, -6.8331012e-08, 0.954409301)
end
if currentOption == "Infinity" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16507.4512, 66376.5156, -35242.1797, -0.98569262, -8.21822113e-08, 0.168552801, -9.09140923e-08, 1, -4.40878978e-08, -0.168552801, -5.8780941e-08, -0.98569262)
end
if currentOption == "Magma" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16373.0713, 86801.9688, -35270.8164, -0.965612054, -3.58980401e-08, 0.259987205, -4.72023167e-08, 1, -3.72367701e-08, -0.259987205, -4.82282729e-08, -0.965612054)
end

end)


local Section3 = Tab:NewSection("Eggs")
Section3:NewDropdown("Eggs", "Eggs", {"Basic", "Sand", "Earth", "Gummy", "Void"}, function(currentOption)
    if currentOption == "Basic" then
        currentOption = basic
        local A_1 = currentOption
        local A_2 = false
        local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
        Event:FireServer(A_1, A_2)
    end 
    if currentOption == "Sand" then
        currentOption = uncommon
        local A_1 = currentOption
        local A_2 = false
        local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
        Event:FireServer(A_1, A_2)
    end
    if currentOption == "Earth" then
        currentOption = rare
        local A_1 = currentOption
        local A_2 = false
        local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
        Event:FireServer(A_1, A_2)
    end
    if currentOption == "Gummy" then
        currentOption = epic
        local A_1 = currentOption
        local A_2 = false
        local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
        Event:FireServer(A_1, A_2)
    end
    if currentOption == "Void" then
        currentOption = legendary
        local A_1 = currentOption
        local A_2 = false
        local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
        Event:FireServer(A_1, A_2)
    end
end)

Section3:NewToggle("[NOT WORKING] Auto Hatch", "Auto Hatch", function(state)
    if state then
        while true do
            print(on)
            local A_1 = currentOption
            local A_2 = false
            local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
            Event:FireServer(A_1, A_2)
            wait(1)
        end
    else
        print(off)
    end
end)

local Tab2 = Window:NewTab("Boosts")
local Section1 = Tab2:NewSection("Boosts")

Section1:NewSlider("Walk Speed", "speed", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section1:NewSlider("Jump Power", "jump", 350, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section1:NewButton("Reset WS/JP", "reset", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Section1:NewButton("CTRL + Click TP", "tp", function()
    local Plr = game:GetService("Players").LocalPlayer

    local Mouse = Plr:GetMouse()
    
     
    
    Mouse.Button1Down:connect(function()
    
    if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
    
    if not Mouse.Target then return end
    
    Plr.Character:MoveTo(Mouse.Hit.p)
    
    end)
end)

local Tab3 = Window:NewTab("Credits")
local Section1 = Tab3:NewSection("Credits")
Section1:NewLabel("Made by Yene#8179 and Halilman04#5698")





