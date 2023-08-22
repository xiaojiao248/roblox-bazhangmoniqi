local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "slap battles",Name = "slap battles", HidePremium = false, SaveConfig = true, IntroEnabled = false, ConfigFolder = "slap battles"})
 
---SafeSpot---
 
local SafeSpot = Instance.new("Part", workspace)
 
SafeSpot.Position = Vector3.new(-1500,100,-1500)
 
SafeSpot.Name = "点"
 
SafeSpot.Size = Vector3.new(60,60,60)
 
SafeSpot.Anchored = true
 
SafeSpot.Transparency = .7
 
---anti voin---
 
local jesus = Instance.new("Part", workspace)
 
	jesus.Name = "不会"
	jesus.Size = Vector3.new(2047, 0.009, 2019)
	jesus.Position = Vector3.new(-80.5, -10.005, -246.5)
	jesus.CanCollide = false
	jesus.Anchored = true
	jesus.Transparency = 1
 
local arenaVoid = Instance.new("Part", workspace)
 
	arenaVoid.Name = "不会"
	arenaVoid.Size = Vector3.new(798, 1, 1290)
	arenaVoid.Position = Vector3.new(3450, 59.009, 68)
	arenaVoid.CanCollide = false
	arenaVoid.Anchored = true
	arenaVoid.Transparency = 1
 
---times fish---
 
local Time = 0
 
local Total = 3600
 
---anti cheat bypass---
 
local Namecall
Namecall = hookmetamethod(game, '__namecall', function(self, ...)
   if getnamecallmethod() == 'FireServer' and tostring(self) == 'Ban' then
       return
   elseif getnamecallmethod() == 'FireServer' and tostring(self) == 'WalkSpeedChanged' then
       return
   elseif getnamecallmethod() == 'FireServer' and tostring(self) == 'AdminGUI' then
       return
   end
   return Namecall(self, ...)
end)
 
local Tab = Window:MakeTab({
	Name = "combat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
local Tab1 = Window:MakeTab({
	Name = "脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
local Tab2 = Window:MakeTab({
	Name = "不会",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
 
local Tab3 = Window:MakeTab({
	Name = "躲避手套",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
local Tab5 = Window:MakeTab({
	Name = "艾宾手套",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
local Tab4 = Window:MakeTab({
	Name = "农场",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
local Tab6 = Window:MakeTab({
	Name = "杀死阿鲁阿",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
local Tab7 = Window:MakeTab({
	Name = "选手",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
local Section = Tab:AddSection({
	Name = "主要"
})
 
Tab:AddButton({
	Name = "键盘",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})
 
Tab3:AddButton({
	Name = "传送结束",
	Callback = function()
      		local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
 
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
 
        local localPlr = game:GetService("Players").LocalPlayer
        repeat wait() until localPlr
 
        game:GetService("RunService").RenderStepped:Connect(function()
            localPlr.Character.HumanoidRootPart.CFrame = CFrame.new(-502.336, 14.228, -179.597)
        end)
    ]])
end
 
game:GetService("TeleportService"):Teleport(11828384869)
  	end    
})
 
Tab3:AddButton({
	Name = "免费获取代码，让朋友知道代码 ",
	Callback = function()
      		print(#game.Players:GetChildren() * 25 + 1100 - 7)
  	end    
})
 
Tab1:AddButton({
	Name = "不会（sr）",
	Callback = function()
      		loadstring(game:HttpGet(('https://pastebin.com/raw/Tx7XLqcm'),true))()
  	end    
})
 
Tab:AddBind({
	Name = "不会inf yield",
	Default = Enum.KeyCode.Q,
	Hold = false,
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
	end    
})
 
Tab:AddBind({
	Name = "农场用品",
	Default = Enum.KeyCode.Q,
	Hold = false,
	Callback = function()
		while true do
    wait(0.5)
spawn(function()
for i, v in pairs(game:GetService("Workspace").Arena.island5.Slapples:GetDescendants()) do
		if v:IsA("TouchTransmitter") then
				firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
				task.wait()
				firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
		end
 end
end)
end
	end    
})
 
Tab:AddBind({
	Name = "命中框",
	Default = Enum.KeyCode.Q,
	Hold = false,
	Callback = function()
		loadstring(game:HttpGet(("https://gist.githubusercontent.com/stellar-4242/430ef3087d8d87eb306ca03e728ffbb8/raw/798429dd908b1f4471a1fa569ff62c5e5a93ec61/SLAP.LUA")))()
	end    
})
 
Tab4:AddButton({
	Name = "传送到安全",
	Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,50,0)
  	end    
})
 
Tab7:AddSlider({
	Name = "速度",
	Min = 20,
	Max = 150,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WS",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
 
Tab7:AddSlider({
	Name = "跳跃",
	Min = 50,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JP",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})
 
Tab4:AddToggle({
	Name = "Time zzzzzz",
	Default = false,
	Callback = function(Fish)
		Timer = Fish
 
      if Fish == true then
 
          Count()
 
 
          end
 
 
 
          function Count()
 
while Timer do
 
 
 
task.wait(1)
 
 
 
 
if game.Players.LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" and game.Players.LocalPlayer.Character.Ragdolled.Value then
 
Time = Time + 1
 
 
print(Time)
 
 
else
 
    Time = 0
 
 
end
end
 
end
	end    
})
 
Tab4:AddToggle({
	Name = "不知道（翻译巴掌球运动员）",
	Default = false,
	Callback = function(bool)
		bully = bool
 
        if bool == true then
 
            BooleanTing()
 
            end
 
 
   function BooleanTing()
 
              while bully do
 
        wait(.001)
 
    for _, v in ipairs(workspace:GetChildren()) do
 
    if string.sub(v.Name, 3, 8) == "Baller" then
game:GetService("ReplicatedStorage").GeneralHit:FireServer(v:WaitForChild("HumanoidRootPart"))
end
end
end
 
    end
	end    
})
 
Tab2:AddButton({
	Name = "开100巴掌竞技场(不能输)",
	Callback = function()
      		arenaVoid.CanCollide = true
	arenaVoid.Anchored = true
	arenaVoid.Transparency = 0.5
  	end    
})
 
Tab2:AddButton({
	Name = "关100巴掌竞技场(不能输)",
	Callback = function()
      		arenaVoid.CanCollide = false
	arenaVoid.Anchored = true
	arenaVoid.Transparency = 1
  	end    
})
 
Tab2:AddButton({
	Name = "打开普通竞技场反虚空",
	Callback = function()
      		jesus.CanCollide = true
	jesus.Anchored = true
	jesus.Transparency = 0.5
  	end    
})
 
Tab2:AddButton({
	Name = "关闭普通竞技场反虚空",
	Callback = function()
      		jesus.CanCollide = false
	jesus.Anchored = true
	jesus.Transparency = 1
  	end    
})
 
Tab4:AddToggle({
	Name = "获得bob",
	Default = false,
	Callback = function(Get_Bob)
		GetBob = Get_Bob
 
        if Get_Bob == true then
 
            FarmBob()
 
 
 
            end
 
 
 
    function FarmBob()
 
        while GetBob do
 
            task.wait(.25)
 
             if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" then
 
            task.wait(.76)
 
 
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.Lobby.Teleport1.CFrame
 
            task.wait(.77)
 
game:GetService("ReplicatedStorage").Duplicate:FireServer()
 
task.wait(1.45)
 
if not workspace:FindFirstChild("bobcap") then
 
    local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = false
}
 
game:GetService("ReplicatedStorage").HumanoidDied:FireServer(unpack(args))
 
    else
 
        print("wait get bob")
 
    end
 
 
 
 
            end
 
 
 
    end
 
 
 
            end
	end    
})
 
 
 
Tab4:AddToggle({
	Name = "去叫电车",
	Default = false,
	Callback = function(bool)
		Brick = bool
 
        if bool == true then
 
            BooleanTing()
 
            end
 
    function BooleanTing()
 
              while Brick do
                  task.wait(0.01)
        if game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
        task.wait(5.2)
 
    game.VirtualInputManager:SendKeyEvent(true, "E", false, game)
 
 
 
end
 
end
 
    end   
	end    
})
 
Tab4:AddButton({
	Name = "获得大亨600秒",
	Callback = function()
         game.Players.LocalPlayer.Character.Torso.Anchored = true
game.Players.LocalPlayer.Character.Head:Destroy()
game.Players.LocalPlayer.Character["Left Arm"]:Destroy()
game.Players.LocalPlayer.Character["Left Leg"]:Destroy()
game.Players.LocalPlayer.Character["Right Arm"]:Destroy()
game.Players.LocalPlayer.Character["Right Leg"]:Destroy()
game.Players.LocalPlayer.Character.Torso.Anchored = false
		wait(0.5)
		while wait() do
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Arena.Plate.CFrame
		end
		wait(625)
		print("bro did u get the badge?")
  	end    
})
 
Tab4:AddButton({
	Name = "获得编辑",
	Callback = function()
         if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
    	for _,v in pairs(game:GetService("Workspace").PocketDimension.Doors:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
end
end
end
  	end    
})
 
Tab1:AddButton({
	Name = "白脚本",
	Callback = function()
      	_G["白脚本作者修狗"]="xdjhadgdsrfcyefjhsadcctyseyr6432478rudghfvszhxcaheey"loadstring(game:HttpGet(('https://raw.githubusercontent.com/wev666666/baijiaobengV2.0beta/main/%E7%99%BD%E8%84%9A%E6%9C%ACbeta'),true))()
  	end    
})
 
Tab1:AddButton({
	Name = "脚本2",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
  	end    
})
 
Tab1:AddButton({
	Name = "飞行",
	Callback = function()
      		--ARCEUS X FLY V2 SCRIPT BY me_ozoneYT
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
  	end    
})
 
Tab6:AddButton({
	Name = "耳光阿鲁阿（连杀）",
	Callback = function()
      		function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end
 
while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
               game:GetService("ReplicatedStorage").KSHit:FireServer(v.Character["Right Arm"])
               wait(.0001)
           end
       end
   end
end
  	end    
})
 
Tab6:AddButton({
	Name = "巴掌阿鲁阿（死神）",
	Callback = function()
      		function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end
 
while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
               game:GetService("ReplicatedStorage").ReaperHit:FireServer(v.Character["Right Arm"])
               wait(.0001)
           end
       end
   end
end
  	end    
})
 
Tab6:AddButton({
	Name = "拍打arua（钻石）",
	Callback = function()
      		function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end
 
while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
               game:GetService("ReplicatedStorage").DiamondHit:FireServer(v.Character["Right Arm"])
               wait(.0001)
           end
       end
   end
end
  	end    
})
 
Tab6:AddButton({
	Name = "拍打arua（默认）",
	Callback = function()
      		function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end
 
while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
               game:GetService("ReplicatedStorage").b:FireServer(v.Character["Right Arm"])
               wait(.0001)
           end
       end
   end
end
  	end    
})
 
Tab6:AddButton({
	Name = "拍打arua",
	Callback = function()
      		function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end
 
while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
               game:GetService("ReplicatedStorage").ZZZZZZZHit:FireServer(v.Character["Right Arm"])
               wait(.0001)
           end
       end
   end
end
  	end    
})
 
Tab6:AddButton({
	Name = "拍 arua(砖)",
	Callback = function()
      		function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end
 
while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
               game:GetService("ReplicatedStorage").BrickHit:FireServer(v.Character["Right Arm"])
               wait(.0001)
           end
       end
   end
end
  	end    
})
 
Tab6:AddButton({
	Name = "拍打 arua (雪)",
	Callback = function()
      		function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end
 
while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
               game:GetService("ReplicatedStorage").SnowHit:FireServer(v.Character["Right Arm"])
               wait(.0001)
           end
       end
   end
end
  	end    
})
 
Tab6:AddButton({
	Name = "拍打 arua (拉)",
	Callback = function()
      		function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end
 
while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
               game:GetService("ReplicatedStorage").PullHit:FireServer(v.Character["Right Arm"])
               wait(.0001)
           end
       end
   end
end
  	end    
})
 
Tab6:AddButton({
	Name = "拍打 arua (梦)",
	Callback = function()
      		function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end
 
while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
               game:GetService("ReplicatedStorage").Dreamhit:FireServer(v.Character["Right Arm"])
               wait(.0001)
           end
       end
   end
end
  	end    
})
 
Tab1:AddButton({
	Name = "MoonUI v10",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/IlikeyocutgHAH12/MoonUI-v10-/main/MoonUI%20v10'))()
  	end    
})
 
Tab1:AddButton({
	Name = "巴掌皇家",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/cheesynob39/Roblox-Scripts/main/Slap_Royale.lua"))()
  	end    
})
 
Tab1:AddButton({
	Name = "图里斯间谍",
	Callback = function()
      		loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
  	end    
})
 
Tab1:AddBind({
	Name = "神模式",
	Default = Enum.KeyCode.T,
	Hold = false,
	Callback = function()
		game:GetService("ReplicatedStorage").Goldify:FireServer(true)
	end    
})
 
Tab5:AddButton({
	Name = "埃平默认",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.Default.ClickDetector)
  	end    
})
 
Tab5:AddButton({
	Name = "埃平·戴蒙德",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.Diamond.ClickDetector)
  	end    
})
 
Tab5:AddButton({
	Name = "epin ZZZZZZZ",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.ZZZZZZZ.ClickDetector)
  	end    
})
 
Tab5:AddButton({
	Name = "艾平扩展",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.Extended.ClickDetector)
  	end    
})
 
Tab5:AddButton({
	Name = "埃平砖",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.Brick.ClickDetector)
  	end    
})
 
Tab5:AddButton({
	Name = "埃平雪",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.Snow.ClickDetector)
  	end    
})
 
Tab5:AddButton({
	Name = "埃平拉",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.Pull.ClickDetector)
  	end    
})
 
Tab5:AddButton({
	Name = "艾宾闪光灯",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.Flash.ClickDetector)
  	end    
})
 
Tab5:AddButton({
	Name = "埃平泉",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.Spring.ClickDetector)
  	end    
})
 
Tab5:AddButton({
	Name = "埃平交换器",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.Swapper.ClickDetector)
  	end    
})
 
Tab5:AddButton({
	Name = "艾宾公牛",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.Bull.ClickDetector)
  	end    
})
 
Tab5:AddButton({
	Name = "艾宾骰子",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.Dice.ClickDetector)
  	end    
})
 
Tab5:AddButton({
	Name = "艾平幽灵",
	Callback = function()
      		fireclickdetector(game:GetService("Workspace").Lobby.Ghost.ClickDetector)
  	end    
})
