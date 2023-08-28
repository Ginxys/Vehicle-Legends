--credits: ginxys


local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Vehicle legends")

local Main = PhantomForcesWindow:NewSection("Main")

local plra = PhantomForcesWindow:NewSection("Player")

local telp = PhantomForcesWindow:NewSection("Teleport")

local misc = PhantomForcesWindow:NewSection("Misc")

local plr = game.Players.LocalPlayer

local tpplr = plr.Character.HumanoidRootPart

local credits = PhantomForcesWindow:NewSection("YT: Ginxys")

local farm 

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()

local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

function infjump()
	game:GetService("UserInputService").JumpRequest:connect(function()
if InfiniteJumpEnabled then
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
end
end)
end


local function gplr(String)
	local Found = {}
	local strl = String:lower()
	if strl == "all" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			table.insert(Found,v)
		end
	elseif strl == "others" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name ~= lp.Name then
				table.insert(Found,v)
			end
		end 
	elseif strl == "me" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name == lp.Name then
				table.insert(Found,v)
			end
		end 
	else
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #String) == String:lower() then
				table.insert(Found,v)
			end
		end 
	end
	return Found 
end



Main:CreateToggle("Auto Farm {Need Car}", function(val)
farm = val
_G.farm = val
if farm == true then
	while _G.farm do
local function GetCar()
    local Target
    for i, v in ipairs(game:GetService("Workspace").Vehicles:GetChildren()) do
        if v.ClassName == "Model" and v.Name == game.Players.LocalPlayer.Name.."'s Car" then
            Target = v
		end
    end
    return Target
end

wait(2)
GetCar():SetPrimaryPartCFrame(CFrame.new(762.062927, 43.397934, -1556.17786, 0.224233747, 3.16664917e-08, 0.974535406, -4.03933882e-08, 1, -2.31997017e-08, -0.974535406, -3.41626318e-08, 0.224233747))
game:GetService("VirtualInputManager"):SendKeyEvent(true, "W", false, uwu)
end
		end
end)

plra:CreateSlider("WalkSpeed", 1, 777, 16, false, function(value)
plr.Character.Humanoid.WalkSpeed = value
 end)

 plra:CreateSlider("JumpPower", 1, 777, 16, false, function(value)
plr.Character.Humanoid.JumpPower = value
 end)

plra:CreateToggle("Inf jump", function(value)
 if value == true then
InfiniteJumpEnabled = true
infjump()
else
InfiniteJumpEnabled = false
	end
end)


misc:CreateToggle("Can ride On Water", function(val)
if val == true then
        	for i,v in pairs(workspace.Map.Static.Ocean:GetDescendants()) do
		if v.Name == "Ocean" then
			v.CanCollide = true
			v.CanTouch = true
		end
	end
	else
	        	for i,v in pairs(workspace.Map.Static.Ocean:GetDescendants()) do
		if v.Name == "Ocean" then
			v.CanCollide = false
			v.CanTouch = false
		end
	end
end
end)

telp:CreateButton("Teleport to random player", function()
local randomPlayer = game.Players:GetPlayers()
[math.random(1,#game.Players:GetPlayers())]

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(randomPlayer.Character.Head.Position.X, randomPlayer.Character.Head.Position.Y, randomPlayer.Character.Head.Position.Z))
end)
telp:CreateTextbox("Teleport to player", function(text)
	local Target = gplr(text)
	if Target[1] then
		Target = Target[1]
			lp.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
	else
		Notification:Notify(
    {Title = "Notification", Description = " "..text.." is Invaild Player"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 2, Type = "default"}
)

	end
end)


KillingCheats:CreateTextbox("TextBox", function(text)
        print(text)
end)

KillingCheats:CreateToggle("Auto Ez", function(value)
print(value)
end)

KillingCheats:CreateDropdown("DropDown", {"Hello", "World", "Hello World"}, 2, function(text)
print(text)
end)

KillingCheats:CreateSlider("Slider", 0, 100, 15, false, function(value)
print(value)
 end)
KillingCheats:CreateColorPicker("Picker", Color3.new(255, 255, 255), function(value)
print(value)
end)
