--[[
███╗░░░███╗░█████╗░██╗░░██╗███████╗  ██████╗░██╗░░░██╗  ██╗░░██╗███████╗███╗░░██╗   ██╗██████╗░
████╗░████║██╔══██╗██║░██╔╝██╔════╝  ██╔══██╗╚██╗░██╔╝  ██║░██╔╝██╔════╝████╗░██║   ╚═╝██╔══██╗
██╔████╔██║███████║█████═╝░█████╗░░  ██████╦╝░╚████╔╝░  █████═╝░█████╗░░██╔██╗██║   ░░░██║░░██║
██║╚██╔╝██║██╔══██║██╔═██╗░██╔══╝░░  ██╔══██╗░░╚██╔╝░░  ██╔═██╗░██╔══╝░░██║╚████    ░░░██║░░██║
██║░╚═╝░██║██║░░██║██║░╚██╗███████╗  ██████╦╝░░░██║░░░  ██║░╚██╗███████╗██║░╚███║   ██╗██████╔╝
╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝  ╚═════╝░░░░╚═╝░░░  ╚═╝░░╚═╝╚══════╝╚═╝░░╚══╝   ╚═╝╚═════╝░
Owner:ClaraClarie#3720
]]
repeat wait() until game:IsLoaded()

local StarterGui = game:GetService("StarterGui") -- not sure why you used CoreGui
local bindable = Instance.new("BindableFunction")

print("this script was made by ken!")


function bindable.OnInvoke(response)
    setclipboard(response .. "<-----discord")
end

StarterGui:SetCore("SendNotification", {
	Title = "press to copy my discord",
	Text = ":D",
	Duration = 5,
	Callback = bindable,
	Button1 = "ClaraClarie#3720(click on me for copy discord!)",
})

wait(1)

game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Loding....!";
    Text = ":3";
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150";
    Duration = 4;
})


wait(2)

game:GetService("StarterGui"):SetCore("SendNotification",{ 	

Title = "loaded!",  	

Text = "Enjoy:>!",

})

game:GetService("StarterGui"):SetCore("SendNotification",{ 	

Title = "Some dont work",  	

Text = "Dm me!",

})
wait(0.8)
--home
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("//Ken x Universe//", "BloodTheme")
local Tab = Window:NewTab("Home")
local Section = Tab:NewSection("idk")
Section:NewButton("Admin command(not mine)", "very gud", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
Section:NewButton("Tptool", "how much u want just click", function()
    mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "use me to tp(made by ken)"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end)
Section:NewTextBox("Printing test", "Press F9 to look what u print/or if ur on mobile type /console", function(txt)
	print(txt)
end)
---player
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Local player")
Section:NewSlider("Speed", "amogus", 7500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("ur jump height", "amogus", 1500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = s
end)
Section:NewButton("Flame hand", "Fire!!!", function()
    local Fire = Instance.new("Fire")
Fire.Parent = game.Players.LocalPlayer.Character.RightHand
Fire.Heat = 15
Fire.Size = 3
local Fire = Instance.new("Fire")
Fire.Parent = game.Players.LocalPlayer.Character.LeftHand
Fire.Heat = 15
Fire.Size = 3
end)
Section:NewButton("Smoke", "Fire!!!", function()
    local smok = Instance.new("Smoke")
smok.Parent = game.Players.LocalPlayer.Character.RightHand
smok.Heat = 20
smok.Size = 3
local smok = Instance.new("Smoke")
smok.Parent = game.Players.LocalPlayer.Character.LeftHand
smok.Heat = 20
smok.Size = 3
end)

----others
local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("some ui that i make,etc")
Section:NewButton("Esp", "Esp", function()
    local Player = game:GetService("Players").LocalPlayer
local Camera = game:GetService("Workspace").CurrentCamera
local Mouse = Player:GetMouse()

local function Dist(pointA, pointB) -- magnitude errors for some reason  : (
    return math.sqrt(math.pow(pointA.X - pointB.X, 2) + math.pow(pointA.Y - pointB.Y, 2))
end

local function GetClosest(points, dest)
    local min  = math.huge 
    local closest = nil
    for _,v in pairs(points) do
        local dist = Dist(v, dest)
        if dist < min then
            min = dist
            closest = v
        end
    end
    return closest
end

local function DrawESP(plr)
    local Box = Drawing.new("Quad")
    Box.Visible = false
    Box.PointA = Vector2.new(0, 0)
    Box.PointB = Vector2.new(0, 0)
    Box.PointC = Vector2.new(0, 0)
    Box.PointD = Vector2.new(0, 0)
    Box.Color = Color3.fromRGB(4, 46, 253)
    Box.Thickness = 1
    Box.Transparency = 1.5

    local function Update()
        local c
        c = game:GetService("RunService").RenderStepped:Connect(function()
            if plr.Character ~= nil and plr.Character:FindFirstChildOfClass("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 and plr.Character:FindFirstChild("Head") ~= nil then
                local pos, vis = Camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
                if vis then 
                    local points = {}
                    local c = 0
                    for _,v in pairs(plr.Character:GetChildren()) do
                        if v:IsA("BasePart") then
                            c = c + 1
                            local p = Camera:WorldToViewportPoint(v.Position)
                            if v.Name == "HumanoidRootPart" then
                                p = Camera:WorldToViewportPoint((v.CFrame * CFrame.new(0, 0, -v.Size.Z)).p)
                            elseif v.Name == "Head" then
                                p = Camera:WorldToViewportPoint((v.CFrame * CFrame.new(0, v.Size.Y/2, v.Size.Z/1.25)).p)
                            elseif string.match(v.Name, "Left") then
                                p = Camera:WorldToViewportPoint((v.CFrame * CFrame.new(-v.Size.X/2, 0, 0)).p)
                            elseif string.match(v.Name, "Right") then
                                p = Camera:WorldToViewportPoint((v.CFrame * CFrame.new(v.Size.X/2, 0, 0)).p)
                            end
                            points[c] = p
                        end
                    end
                    local Left = GetClosest(points, Vector2.new(1, pos.Y))
                    local Right = GetClosest(points, Vector2.new(Camera.ViewportSize.X, pos.Y))
                    local Top = GetClosest(points, Vector2.new(pos.X, 1))
                    local Bottom = GetClosest(points, Vector2.new(pos.X, Camera.ViewportSize.Y))

                    if Left ~= nil and Right ~= nil and Top ~= nil and Bottom ~= nil then
                        Box.PointA = Vector2.new(Right.X, Top.Y)
                        Box.PointB = Vector2.new(Left.X, Top.Y)
                        Box.PointC = Vector2.new(Left.X, Bottom.Y)
                        Box.PointD = Vector2.new(Right.X, Bottom.Y)

                        Box.Visible = true
                    else 
                        Box.Visible = false
                    end
                else 
                    Box.Visible = false
                end
            else
                Box.Visible = false
                if game.Players:FindFirstChild(plr.Name) == nil then
                    c:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(Update)()
end

for _,v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name ~= Player.Name then 
        DrawESP(v)
    end
end

game:GetService("Players").PlayerAdded:Connect(function(v)
    DrawESP(v)
end)
end)
Section:NewButton("Spotify", ":/", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/kendo123456/spotify/main/ken.Lua"))()
end)
--test
local Tab = Window:NewTab("Testing")
local Section = Tab:NewSection("Test console")
Section:NewTextBox("set clipboard:3", "set ur clipboard", function(amigos)
	setclipboard(amigos)
end)


Section:NewDropdown("Printing amogus:>", "AMOGUS IS PRO", {"amogus!", "amogusgus??", "AMIGOSSS!!"}, function(amigos)
    print(amigos)
end)
----severs
local Tab = Window:NewTab("Sever hopping")
local Section = Tab:NewSection("Severs")
Section:NewButton("Sever hop(maybe broke)", "Ora", function()
    game:GetService("TeleportService"):Teleport(gameid, game:GetService("Players").LocalPlayer)
end)

Section:NewButton("Rejoin(maybe broke)", "Muda", function()
    local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p)
end)
---fps
local Tab = Window:NewTab("Fps ")
local Section = Tab:NewSection("FPS BOOSTS")
Section:NewButton("uh idk", ".-.", function()
    for _,v in pairs(workspace:GetDescendants()) do
if v.ClassName == "Part"
or v.ClassName == "SpawnLocation"
or v.ClassName == "WedgePart"
or v.ClassName == "Terrain"
or v.ClassName == "MeshPart" then
v.Material = "Plastic"
    end
  end
end)
--credit
local Tab = Window:NewTab("Credit")
local Section = Tab:NewSection("Kendo:3")
Section:NewLabel("Im pro uwu")
Section:NewLabel("Ty ui from Kavo!")
---setting
local Tab = Window:NewTab("Setting")
local Section = Tab:NewSection("ui setting")
Section:NewKeybind("Setkeybind(pc only!)", "uwu", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

Section:NewColorPicker("idk deccoration?", "it nothing", Color3.fromRGB(0,0,0), function(color)
end)
