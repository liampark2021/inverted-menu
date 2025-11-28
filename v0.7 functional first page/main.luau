local v2 = Vector2.new
local v3 = Vector3.new
local udim2 = UDim2.new
local ins = Instance.new
local udim = UDim.new
local c3 = Color3.new

function x3(a)
    return a, a, a
end
local target = {}
function player(user, name)
    if name == "me" then
        return {user}
    elseif name == "others" then
        local tabl = {}
        for i, v in next, game.Players:GetPlayers() do
            if v ~= user then
                table.insert(tabl, v)
            end
        end
        return tabl
    elseif name == "all" then
        return game.Players:GetPlayers()
    else
        for i, v in next, game.Players:GetPlayers() do
            if string.match(v.Name, "^" .. name) then
                return v
            elseif string.match(v.DisplayName, "^" .. name) then
                return v
            end
        end
    end
end
return (function(user)
    user = game.Players:FindFirstChild(user)
    local ui = user.PlayerGui
    local gui = ins("ScreenGui", ui)
    
    local icon = ins("ImageButton", gui)
    icon.Size = udim2(0, 50, 0, 50)
    icon.Position = udim2(0, 10, 0.5, -25)
    icon.Image = "rbxassetid://131435922143737"
    icon.BackgroundTransparency = 1
    
    local main = ins("Frame", gui)
    main.AnchorPoint = v2(.5, .5)
    main.Size = udim2(0, 500, 0, 300)
    main.Position = udim2(.5, 0, .5, 0)
    main.BackgroundTransparency = 1
    local drag = ins("UIDragDetector", main)
    
    local tabs = ins("Frame", main)
    tabs.Size = udim2(1, 0, 0, 40)
    tabs.AnchorPoint = v2(0, 1)
    tabs.Position = udim2(0, 0, 0, -5)
    tabs.BackgroundColor3 = c3(x3(0.1))
    tabs.BackgroundTransparency = .4
    local corner = ins("UICorner", tabs)
    corner.CornerRadius = udim(0.25, 0)
    local stroke = ins("UIStroke", tabs)
    stroke.Color = c3(x3(1))
    
    local tab1b = ins("TextButton", tabs)
    tab1b.Size = udim2(0.33, -3, 1, -12)
    tab1b.Position = udim2(0, 3, 0, 6)
    tab1b.BackgroundTransparency = .4
    tab1b.BackgroundColor3 = c3(x3(0.1))
    tab1b.TextColor3 = c3(x3(1))
    tab1b.Text = "Players tab"
    local corner = ins("UICorner", tab1b)
    corner.CornerRadius = udim(0.25, 0)
    local stroke = ins("UIStroke", tab1b)
    stroke.Color = c3(x3(1))
    stroke.ApplyStrokeMode = "Border"
    
    local tab2b = ins("TextButton", tabs)
    tab2b.Size = udim2(0.33, -3, 1, -12)
    tab2b.Position = udim2(.33, 3, 0, 6)
    tab2b.BackgroundTransparency = .4
    tab2b.BackgroundColor3 = c3(x3(0.1))
    tab2b.TextColor3 = c3(x3(1))
    tab2b.Text = "Assets tab"
    local corner = ins("UICorner", tab2b)
    corner.CornerRadius = udim(0.25, 0)
    local stroke = ins("UIStroke", tab2b)
    stroke.Color = c3(x3(1))
    stroke.ApplyStrokeMode = "Border"
    
    local tab3b = ins("TextButton", tabs)
    tab3b.Size = udim2(0.33, -3, 1, -12)
    tab3b.Position = udim2(0.66, 3, 0, 6)
    tab3b.BackgroundTransparency = .4
    tab3b.BackgroundColor3 = c3(x3(0.1))
    tab3b.TextColor3 = c3(x3(1))
    tab3b.Text = "SS Executor"
    local corner = ins("UICorner", tab3b)
    corner.CornerRadius = udim(0.25, 0)
    local stroke = ins("UIStroke", tab3b)
    stroke.Color = c3(x3(1))
    stroke.ApplyStrokeMode = "Border"
    
    local tab1 = ins("ImageLabel", main)
    tab1.AnchorPoint = v2(.5, .5)
    tab1.Size = udim2(1, 0, 1, 0)
    tab1.Position = udim2(.5, 0, .5, 0)
    tab1.BackgroundTransparency = .4
    tab1.BackgroundColor3 = c3(x3(0.1))
    tab1.Image = "rbxassetid://119279277577206"
    tab1.ImageTransparency = 0.7
    local corner = ins("UICorner", tab1)
    corner.CornerRadius = udim(0, 30)
    local stroke = ins("UIStroke", tab1)
    stroke.Color = c3(x3(1))
    local drag = ins("UIDragDetector", main)
    
    local tab2 = ins("ImageLabel", main)
    tab2.AnchorPoint = v2(.5, .5)
    tab2.Size = udim2(1, 0, 1, 0)
    tab2.Position = udim2(.5, 0, .5, 0)
    tab2.BackgroundTransparency = .4
    tab2.BackgroundColor3 = c3(x3(0.1))
    tab2.Image = "rbxassetid://119279277577206"
    tab2.ImageTransparency = 0.7
    local corner = ins("UICorner", tab2)
    corner.CornerRadius = udim(0, 30)
    local stroke = ins("UIStroke", tab2)
    stroke.Color = c3(x3(1))
    
    local tab3 = ins("ImageLabel", main)
    tab3.AnchorPoint = v2(.5, .5)
    tab3.Size = udim2(1, 0, 1, 0)
    tab3.Position = udim2(.5, 0, .5, 0)
    tab3.BackgroundTransparency = .4
    tab3.BackgroundColor3 = c3(x3(0.1))
    tab3.Image = "rbxassetid://119279277577206"
    tab3.ImageTransparency = 0.7
    local corner = ins("UICorner", tab3)
    corner.CornerRadius = udim(0, 30)
    local stroke = ins("UIStroke", tab3)
    stroke.Color = c3(x3(1))
    local drag = ins("UIDragDetector", main)
    
    
    local speed, superjump, noclip, god, kick, kill, invis, del, plrtext = ins("TextButton", tab1), ins("TextButton", tab1), ins("TextButton", tab1), ins("TextButton", tab1), ins("TextButton", tab1), ins("TextButton", tab1), ins("TextButton", tab1), ins("TextButton", tab1), ins("TextBox", tab1)
    
    for i, v in next, {speed, superjump, noclip, god, kick, kill, invis, del} do
        v.BackgroundTransparency = 0.4
        v.BackgroundColor3 = c3(x3(0.1))
        v.Size = udim2(0.25, -2, 0.32, 0)
        v.TextSize = 15
        v.Text = ({"Speed", "SuperJump", "Noclip", "God", "Kick plr", "Kill plr", "Invisible", "Delete plr"})[i]
        v.TextColor3 = c3(x3(1))
        local corner = ins("UICorner", v)
        corner.CornerRadius = udim(0.25, 0)
        local stroke = ins("UIStroke", v)
        stroke.Color = c3(x3(1))
        stroke.ApplyStrokeMode = "Border"
    end
    superjump.Position = udim2(0.25, 1, 0, 0)
    noclip.Position = udim2(0.5, 1, 0, 0)
    god.Position = udim2(0.75, 1, 0, 0)
    kick.Position = udim2(0, 1, 0.33, 0)
    kill.Position = udim2(0.25, 1, 0.33, 0)
    invis.Position = udim2(0.5, 1, 0.33, 0)
    del.Position = udim2(0.75, 1, 0.33, 0)
    plrtext.BackgroundTransparency = 0.4
    plrtext.BackgroundColor3 = c3(x3(0.1))
    plrtext.Size = udim2(1, -2, 0.33, 0)
    plrtext.Position = udim2(0, 1, 0.66, 0)
    plrtext.TextSize = 15
    plrtext.PlaceholderText = "Enter target player's username/displayname here\nIncludes 'me', 'others', or 'all'"
    plrtext.TextColor3 = c3(x3(1))
    plrtext.Text = ""
    local corner = ins("UICorner", plrtext)
    corner.CornerRadius = udim(0.25, 0)
    local stroke = ins("UIStroke", plrtext)
    stroke.Color = c3(x3(1))
    stroke.ApplyStrokeMode = "Border"
    tab1.Visible, tab2.Visible, tab3.Visible = true, false, false
    
    local giveacc, insert, changesky, assetid = ins("TextButton", tab2), ins("TextButton", tab2), ins("TextButton", tab2), ins("TextBox", tab2)
    for i, v in next, {giveacc, insert, changesky, assetid} do
        v.BackgroundTransparency = 0.4
        v.BackgroundColor3 = c3(x3(0.1))
        v.Size = udim2(1, -2, 0.25, -2)
        v.Position = udim2(0, 1, i/4-0.25, 1)
        v.TextSize = 15
        v.Text = ({"Give accessory", "Insert model", "Change sky", ""})[i]
        v.TextColor3 = c3(x3(1))
        local corner = ins("UICorner", v)
        corner.CornerRadius = udim(0.25, 0)
        local stroke = ins("UIStroke", v)
        stroke.Color = c3(x3(1))
        stroke.ApplyStrokeMode = "Border"
    end
    assetid.PlaceholderText = "Insert model/decal/accessory id here\nOnly the number is needed"
    assetid.Changed:Connect(function()
        target = player(user, assetid.Text)
    end)
    local exec = ins("TextBox", tab3)
    exec.BackgroundTransparency = 0.4
    exec.BackgroundColor3 = c3(x3(0.1))
    exec.Size = udim2(1, -12, 0.75, -12)
    exec.Position = udim2(0, 6, 0, 6)
    exec.TextSize = 15
    exec.TextColor3 = c3(x3(1))
    exec.Text = ""
    exec.PlaceholderText = "ServerSide executor"
    exec.ClearTextOnFocus = false
    local corner = ins("UICorner", exec)
    corner.CornerRadius = udim(0.125, 0)
    local stroke = ins("UIStroke", exec)
    stroke.Color = c3(x3(1))
    stroke.ApplyStrokeMode = "Border"
    
    local execbutton = ins("TextButton", tab3)
    execbutton.BackgroundTransparency = 0.4
    execbutton.BackgroundColor3 = c3(x3(0.1))
    execbutton.Size = udim2(1, -12, 0.25, -12)
    execbutton.Position = udim2(0, 6, 0.75, 6)
    execbutton.TextSize = 15
    execbutton.TextColor3 = c3(x3(1))
    execbutton.Text = "Execute"
    local corner = ins("UICorner", execbutton)
    corner.CornerRadius = udim(1, 0)
    local stroke = ins("UIStroke", execbutton)
    stroke.Color = c3(x3(1))
    stroke.ApplyStrokeMode = "Border"
    speed.MouseButton1Click:Connect(function()
        user.Character.Humanoid.WalkSpeed = 64
    end)
    superjump.MouseButton1Click:Connect(function()
        user.Character.Humanoid.JumpPower = 1000
    end)
    noclip.MouseButton1Click:Connect(function()
        for i, v in next, user.Character:GetChildren() do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end)
    god.MouseButton1Click:Connect(function()
        Instance.new("ForceField", user.Character).Visible = false
    end)
    kick.MouseButton1Click:Connect(function()
        for i, v in next, target do
            v:Kick()
        end
    end)
    kill.MouseButton1Click:Connect(function()
        for i, v in next, target do
            v.Character.Humanoid.Health = 0
        end
    end)
    del.MouseButton1Click:Connect(function()
        for i, v in next, target do
            v.Character:Destroy()
        end
    end)
    invis.MouseButton1Click:Connect(function()
        for i, v in next, user.Character:GetChildren() do
            if v:IsA("BasePart") then
                v.Transparency = 1
            end
        end
    end)
    
    tab1b.MouseButton1Click:Connect(function()
        tab1.Visible, tab2.Visible, tab3.Visible = true, false, false
    end)
    tab2b.MouseButton1Click:Connect(function()
        tab1.Visible, tab2.Visible, tab3.Visible = false, true, false
    end)
    tab3b.MouseButton1Click:Connect(function()
        tab1.Visible, tab2.Visible, tab3.Visible = false, false, true
    end)
    icon.MouseButton1Down:Connect(function()
        main.Visible = not main.Visible
    end)
end)
