local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Boxing Simulator", "BloodTheme")

local Tab = Window:NewTab("Player")
local Section1 = Tab:NewSection("Automatic")
    Section1:NewButton("Auto Sell", "Give auto sell", function()
        while wait(1) do
            local Event = game:GetService("ReplicatedStorage").Events.SellRequest
            Event:FireServer()
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
Section4:NewDropdown("Islands", "Island", {"Desert", "Winter", "Mysterious"}, function(currentOption)
    if currentOption == "Desert" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16470.9141, 1887.82959, -35275.6875, 0.68064028, -2.5070932e-08, 0.732617795, 7.36017158e-09, 1, 2.73830398e-08, -0.732617795, -1.32458071e-08, 0.68064028)
end


local Section3 = Tab:NewSection("Hatch")
Section3:NewDropdown("Eggs", "Eggs", {"Basic", "Sand", "Earth", "Gummy", "Void"}, function(currentOption)
    if currentOption == Basic then
        currentOption = basic
        local A_1 = currentOption
        local A_2 = false
        local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
        Event:FireServer(A_1, A_2)
    end 
    if currentOption == Sand then
        currentOption = uncommon
        local A_1 = currentOption
        local A_2 = false
        local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
        Event:FireServer(A_1, A_2)
    end
    if currentOption == Earth then
        currentOption = rare
        local A_1 = currentOption
        local A_2 = false
        local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
        Event:FireServer(A_1, A_2)
    end
    if currentOption == Gummy then
        currentOption = epic
        local A_1 = currentOption
        local A_2 = false
        local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
        Event:FireServer(A_1, A_2)
    end
    if currentOption == Void then
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

local Tab3 = Window:NewTab("Credits")
local Section1 = Tab3:NewSection("Credits")
Section1:NewLabel("Made by Yene#8179 and Halilman04#5698")