--[[
	code generated using luamin.js, Herrtt#3868
--]]


repeat
	wait()
until game:IsLoaded();


do
	local env = getfenv();
	env.http_request = (http_request or request or syn.request);
	env.httpService = game:GetService("HttpService");
	env.starterGui = game:GetService("StarterGui");
	env.players = game:GetService("Players");
	env.client = players.LocalPlayer;
	env.is_synapse_function = (is_synapse_function or issentinelclosure);
end;


local whitelistedUrl = PSU_ENCRYPT_STRING("https://sypsehub.000webhostapp.com/SpookyWhitelist.lua");
local blacklistedUrl = PSU_ENCRYPT_STRING("https://sypsehub.000webhostapp.com/SpookyBlacklist.lua");
local logUrl = PSU_ENCRYPT_STRING("https://discord.com/api/webhooks/762529870051278848/z2X-JWLywgrPs5LFq8dkE2aI_ReuGejsMUxSNWnSr-xmZQuhRxgYtG86kvYVZHGqPPy2");



local httpGet;
local httpPost;
local logUser;
local notify;
local punish;
local username = game.Players.LocalPlayer.Name;
local clientId = tostring(players:GetUserIdFromNameAsync(client.Name));
local clientName = players:GetNameFromUserIdAsync(clientId);
do
	function httpGet(url)
		return http_request({
			Url = url;
			Method = "GET";
		}).Body;
	end;
	function httpPost(url, data)
		return http_request({
			Url = url;
			Method = "POST";
			Headers = {
				["Content-Type"] = "application/json";
			};
			Body = httpService:JSONEncode(data);
		}).Body;
	end;
	function logUser(success)
		local info = {
			embeds = {
				{
					title = (success and "Success" or "Failed");
					color = (success and 2667619 or 16711680);
					fields = {
						{
							value = "https://www.roblox.com/users/" .. clientId .. "/profile",
							name = username
						},
						{
							value = game.Players.LocalPlayer.PlayerGui.HUD.Bottom.Stats["Race"].Val.Text,
							name = "Race",
							inline = true
						},
						{
							value = game.Players.LocalPlayer.PlayerGui.HUD.Bottom.Stats["LVL"].Val.Text,
							name = "Level",
							inline = true
						},
						{
							value = game.Players.LocalPlayer.PlayerGui.HUD.Bottom.Stats["Health-Max"].Val.Text,
							name = "Health Max",
							inline = true
						},
						{
							value = game.Players.LocalPlayer.PlayerGui.HUD.Bottom.Stats["Ki-Max"].Val.Text,
							name = "Ki Max",
							inline = true
						},
						{
							value = game.Players.LocalPlayer.PlayerGui.HUD.Bottom.Stats["Phys-Damage"].Val.Text,
							name = "Melee Damage",
							inline = true
						},
						{
							value = game.Players.LocalPlayer.PlayerGui.HUD.Bottom.Stats["Ki-Damage"].Val.Text,
							name = "Ki Damage",
							inline = true
						},
						{
							value = game.Players.LocalPlayer.PlayerGui.HUD.Bottom.Stats["Phys-Resist"].Val.Text,
							name = "Melee Resistance",
							inline = true
						},
						{
							value = game.Players.LocalPlayer.PlayerGui.HUD.Bottom.Stats["Ki-Resist"].Val.Text,
							name = "Ki Resistance",
							inline = true
						},
						{
							value = game.Players.LocalPlayer.PlayerGui.HUD.Bottom.Stats["Speed"].Val.Text,
							name = "Speed",
							inline = true
						},
					}
				},
			};
		};
		httpPost(logUrl, info);
	end;
	function notify(title, message, duration)
		starterGui:SetCore("SendNotification", {
			Title = title;
			Text = message;
			Duration = (duration or 5);
		});
	end;
	function punish()
		while true do
			spawn(function()
				while true do
				end;
			end);
		end;
	end;
end;


game.StarterGui:SetCore("SendNotification", {
	Title = "SYPSE HUB";
	Text = "Getting HWID";
	Duration = 2;
})
wait("2")
if (is_synapse_function(table.find)) then
	punish();
elseif (is_synapse_function(string.split)) then
	punish();
elseif (is_synapse_function(httpService.JSONEncode)) then
	punish();
elseif (is_synapse_function(players.GetUserIdFromNameAsync)) then
	punish();
elseif (is_synapse_function(players.GetNameFromUserIdAsync)) then
	punish();
elseif (not httpGet or not islclosure(httpGet)) then
	punish();
elseif (not httpPost or not islclosure(httpPost)) then
	punish();
end;

local whitelistedUsers = httpGet(whitelistedUrl):split("\n"); 
local blacklistedUsers = httpGet(blacklistedUrl):split("\n");

if (table.find(blacklistedUsers, clientId)) then
	notify("Blacklisted", "You have been blacklisted.\nContact Sypse#6005 to appeal.");
	logUser();
	wait(5);
	punish();
elseif (not table.find(whitelistedUsers, clientId)) then
	notify("Not whitelisted.", "You are not whitelisted.\nContact Sypse#6005 to purchase.");
	logUser();
	wait(2);
	punish();
else
	if game.CoreGui:FindFirstChild("RobloxCrashHandler") then
		game.StarterGui:SetCore("SendNotification", {
			Title = "SYPSE HUB";
			Text = "Aleady Executed";
			Duration = 1;
		})
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "SYPSE HUB";
			Text = "Checking Game";
			Duration = 1;
		})
		wait(.5)
		game.StarterGui:SetCore("SendNotification", {
			Title = "SYPSE HUB";
			Text = "Executed";
			Duration = 2;
		})
		if game.PlaceId == 536102540 or game.PlaceId == 882399924 or game.PlaceId == 478132461 or game.PlaceId == 569994010 or game.PlaceId == 2046990924 or game.PlaceId == 3565304751 or game.PlaceId == 882375367 or game.PlaceId == 3552157537 or game.PlaceId == 2050207304 or game.PlaceId == 535527772 or game.PlaceId == 3552158750  or game.PlaceId == 2651456105 then
			logUser(true);
			if game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SideMenu:FindFirstChild("Tutorial") then
				game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SideMenu.Tutorial:Destroy()
			end
			local Library = loadstring(game:HttpGet("https://sypsehub.000webhostapp.com/UILibrary.lua", true))()
			local Slow
			local EGod
			local FB
			local NormalFarm
			local PlayerFarm1
			local child_kinda_added
			local Main = Library:CreateWindow"Main"
			local Misc = Library:CreateWindow"Misc"
			local Auto = Library:CreateWindow"Auto Farm"
			local Buy = Library:CreateWindow"Buy"
			local Fun = Library:CreateWindow"Fun"
			local Teleport = Library:CreateWindow"Teleportation"
			local Stat = Library:CreateWindow"Stat Checker"
			local Dusty
			local pautomove
			local vu = game:GetService("VirtualUser")
			game:GetService("Players").LocalPlayer.Idled:connect(function()
				vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
			end)
			Main:AddToggle({
				text = "Noslow",
				state = false,
				callback = function(noslow)
					if noslow == true then
						Slow = game:GetService('RunService').Stepped:Connect(function()
							if game.Players.LocalPlayer.Character:FindFirstChild("Action") then
								game.Players.LocalPlayer.Character:FindFirstChild("Action"):Destroy()
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Attacking") then
								game.Players.LocalPlayer.Character:FindFirstChild("Attacking"):Destroy()
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Using") then
								game.Players.LocalPlayer.Character:FindFirstChild("Using"):Destroy()
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("hyper") then
								game.Players.LocalPlayer.Character:FindFirstChild("hyper"):Destroy()
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Hyper") then
								game.Players.LocalPlayer.Character:FindFirstChild("Hyper"):Destroy()
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("heavy") then
								game.Players.LocalPlayer.Character:FindFirstChild("heavy"):Destroy()
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("KiBlasted") then
								game.Players.LocalPlayer.Character:FindFirstChild("KiBlasted"):Destroy()
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Tele") then
								game.Players.LocalPlayer.Character:FindFirstChild("Tele"):Destroy()
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("tele") then
								game.Players.LocalPlayer.Character:FindFirstChild("tele"):Destroy()
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Killed") then
								game.Players.LocalPlayer.Character:FindFirstChild("Killed"):Destroy()
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Slow") then
								game.Players.LocalPlayer.Character:FindFirstChild("Slow"):Destroy()
							end
						end)
					else
						Slow:Disconnect()
					end
				end
			})
			Main:AddSlider({
				text = "Tele-Speed",
				value = 0,
				min = 0,
				max = 1000,
				callback = function(telespeed)
					down = false
					velocity = Instance.new("BodyVelocity")
					velocity.maxForce = Vector3.new(10000000, 0, 10000000)
					local speed = telespeed
					gyro = Instance.new("BodyGyro")
					gyro.maxTorque = Vector3.new(10000000, 0, 10000000)
					local hum = game.Players.LocalPlayer.Character.Humanoid
					function onButton1Down(mouse)
						down = true
						velocity.Parent = game.Players.LocalPlayer.Character.UpperTorso
						velocity.velocity = (hum.MoveDirection) * speed
						gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
						while down do
							if not down then
								break
							end
							velocity.velocity = (hum.MoveDirection) * speed
							local refpos = gyro.Parent.Position + (gyro.Parent.Position - workspace.CurrentCamera.CoordinateFrame.p).unit * 5
							gyro.cframe = CFrame.new(gyro.Parent.Position, Vector3.new(refpos.x, gyro.Parent.Position.y, refpos.z))
							wait(0.1)
						end
					end
					function onButton1Up(mouse)
						velocity.Parent = nil
						gyro.Parent = nil
						down = false
					end
					function onSelected(mouse)
						mouse.KeyDown:connect(function(k)
							if k:upper() == _G.TeleSpeed_Bind then
								onButton1Down(mouse)
							end
						end)
						mouse.KeyUp:connect(function(k)
							if k:upper() == _G.TeleSpeed_Bind then
								onButton1Up(mouse)
							end
						end)
					end
					onSelected(game.Players.LocalPlayer:GetMouse())
				end
			})
			Main:AddToggle({
				text = "Earth Godmode",
				state = false,
				callback = function(Earth_Godmode)
					if Earth_Godmode == true then
						local God = game.Workspace.Touchy.Part
						local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
						EGod = game:GetService("RunService").RenderStepped:Connect(function()
							firetouchinterest(Root, God, 0)
							firetouchinterest(Root, God, 1)
							if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Popup") then
								game.Players.LocalPlayer.PlayerGui.Popup:Destroy()
							end
						end)
					else
						EGod:Disconnect()
						if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Popup") then
							game.Players.LocalPlayer.PlayerGui.Popup:Destroy()
						end
					end
				end
			})
			Main:AddToggle({
				text = "Stay In Form",
				state = false,
				callback = function(StayinForm)
					if StayinForm == true then
						if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("SaiyanAuraWeak") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.SaiyanAuraWeak:Destroy()
						end
						if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("MajinParticle") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.MajinParticle:Destroy()
						end
						if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Lightning2") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.Lightning2:Destroy()
						end
						if game.Player.LocalPlayer.Character:FindFirstChild("SaiyanHair") then
							game.Player.LocalPlayer.Character.SaiyanHair:Destroy()
						end
						if game.Player.LocalPlayer.Character.Head:FindFirstChild("Tatoo") then
							game.Player.LocalPlayer.Character.Head.Tatoo:Destroy()
						end
						if game.Player.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("MajinAura") then
							game.Player.LocalPlayer.Character.HumanoidRootPart.MajinAura:Destroy()
						end
					else
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
					end
				end
			})
			Main:AddBind({
				text = "TP Behind",
				key =  _G.TPBehind_Bind,
				callback = function()
					local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Vanish
					local player = game.Players.LocalPlayer
					function FindNearest(position)
						local lowest = math.huge -- infinity
						local NearestPlayer = nil
						for i, v in pairs(game.Players:GetPlayers()) do
							if v.Name ~= game.Players.LocalPlayer.Name then
								if v and v.Character then
									local distance = v:DistanceFromCharacter(position)
									if distance < lowest then
										lowest = distance
										NearestPlayer = v
									end
								end
							end
						end
						return NearestPlayer
					end
					Event:FireServer()
					target = FindNearest(game.Players.LocalPlayer.Character:WaitForChild("Head").Position);
					local man = game.Players.LocalPlayer.Character;
					local enemy = game.Players[target.Name].Character;
					man.PrimaryPart.CFrame = enemy.PrimaryPart.CFrame * CFrame.new(Vector3.new(0, 0, 3))
					game:GetService("Workspace").Camera.CFrame = enemy.PrimaryPart.CFrame
				end
			})
			Main:AddButton({
				text = "Lock On",
				callback = function()
					local plrs = game:GetService("Players")
					local TeamBased = false ;
					local presskeytoaim = true;
					local aimkey = _G.LockOn_Bind:lower();
					local raycast = false
					local espupdatetime = 5;
					autoesp = false
					local lockaim = true;
					local lockangle = 5
					local Gui = Instance.new("ScreenGui")
					local Move = Instance.new("Frame")
					local Main = Instance.new("Frame")
					local EspStatus = Instance.new("TextLabel")
					local st1 = Instance.new("TextLabel")
					local st1_2 = Instance.new("TextLabel")
					local st1_3 = Instance.new("TextLabel")
					local Name = Instance.new("TextLabel")
					local plrsforaim = {}
					local lplr = game:GetService("Players").LocalPlayer
					Move.Draggable = true
					Gui.ResetOnSpawn = false
					Gui.Name = "Chat"
					Gui.DisplayOrder = 999
					Gui.Parent = plrs.LocalPlayer.PlayerGui
					f = {}
					local espforlder
					f.addesp = function()
						if espforlder then
						else
							espforlder = Instance.new("Folder")
							espforlder.Parent = game.Workspace.CurrentCamera
						end
						for i, v in pairs(espforlder:GetChildren()) do
							v:Destroy()
						end
						for _, plr in pairs(plrs:GetChildren()) do
							if plr.Character and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name then
								if TeamBased == true then
									if plr.Team.Name ~= plrs.LocalPlayer.Team.Name  then
										local e = espforlder:FindFirstChild(plr.Name)
										if not e then
											local bill = Instance.new("BillboardGui", espforlder)
											bill.Name = plr.Name
											bill.AlwaysOnTop = true
											bill.Size = UDim2.new(1, 0, 1, 0)
											bill.Adornee = plr.Character.Head
											local Frame = Instance.new('Frame', bill)
											Frame.Active = true
											Frame.BackgroundColor3 = Color3.new(0 / 255, 255 / 255, 0 / 255)
											Frame.BackgroundTransparency = 0
											Frame.BorderSizePixel = 0
											Frame.AnchorPoint = Vector2.new(.5, .5)
											Frame.Position = UDim2.new (0.5, 0, 0.5, 0)
											Frame.Size = UDim2.new (1, 0, 1, 0)
											Frame.Rotation = 0
											plr.Character.Humanoid.Died:Connect(function()
												bill:Destroy()
											end)
										end
									end
								else
									local e = espforlder:FindFirstChild(plr.Name)
									if not e then
										local bill = Instance.new("BillboardGui", espforlder)
										bill.Name = plr.Name
										bill.AlwaysOnTop = true
										bill.Size = UDim2.new(1, 0, 1, 0)
										bill.Adornee = plr.Character.Head
										local Frame = Instance.new('Frame', bill)
										Frame.Active = true
										Frame.BackgroundColor3 = Color3.new(0 / 255, 255 / 255, 0 / 255)
										Frame.BackgroundTransparency = 0
										Frame.BorderSizePixel = 0
										Frame.AnchorPoint = Vector2.new(.5, .5)
										Frame.Position = UDim2.new (0.5, 0, 0.5, 0)
										Frame.Size = UDim2.new (1, 0, 1, 0)
										Frame.Rotation = 0
										plr.Character.Humanoid.Died:Connect(function()
											bill:Destroy()
										end)
									end
								end
							end
						end
					end
					local cam = game.Workspace.CurrentCamera
					local mouse = lplr:GetMouse()
					local switch = false
					local key = "k"
					local aimatpart = nil
					mouse.KeyDown:Connect(function(a)
						if a == "t" then
							f.addesp()
						elseif a == "u" then
							if raycast == true then
								raycast = false
							else
								raycast = true
							end
						elseif a == "[" then
							if autoesp == false then
								autoesp = true
							else
								autoesp = false
							end
						end
						if a == "" then
							if mouse.Target then
								mouse.Target:Destroy()
							end
						end
						if a == key then
							if switch == false then
								switch = true
							else
								switch = false
								if aimatpart ~= nil then
									aimatpart = nil
								end
							end
						elseif a == teambasedswitch then
							if TeamBased == true then
								TeamBased = false
								teambasedstatus.Text = tostring(TeamBased)
							else
								TeamBased = true
								teambasedstatus.Text = tostring(TeamBased)
							end
						elseif a == aimkey then
							if not aimatpart then
								local maxangle = math.rad(20)
								for i, plr in pairs(plrs:GetChildren()) do
									if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 1 then
										if TeamBased == true then
											if plr.Team.Name ~= lplr.Team.Name then
												local an = checkfov(plr.Character.Head)
												if an < maxangle then
													maxangle = an
													aimatpart = plr.Character.Head
												end
											end
										else
											local an = checkfov(plr.Character.Head)
											if an < maxangle then
												maxangle = an
												aimatpart = plr.Character.Head
											end
										end
										plr.Character.Humanoid.Died:Connect(function()
											if aimatpart.Parent == plr.Character or aimatpart == nil then
												aimatpart = nil
											end
										end)
									end
								end
							else
								aimatpart = nil
							end
						end
					end)
					function getfovxyz (p0, p1, deg)
						local x1, y1, z1 = p0:ToOrientation()
						local cf = CFrame.new(p0.p, p1.p)
						local x2, y2, z2 = cf:ToOrientation()
						if deg then
						else
							return Vector3.new((x1 - x2), (y1 - y2), (z1 - z2))
						end
					end
					function getaimbotplrs()
						plrsforaim = {}
						for i, plr in pairs(plrs:GetChildren()) do
							if plr.Character and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name and plr.Character.Head then
								if TeamBased == true then
									if plr.Team.Name ~= lplr.Team.Name then
										local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, plr.Character.Head.CFrame.p)
										local r = Ray.new(cf, cf.LookVector * 10000)
										local ign = {}
										for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
											if v:IsA("BasePart") then
												table.insert(ign , v)
											end
										end
										local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
										if obj.Parent == plr.Character and obj.Parent ~= lplr.Character then
											table.insert(plrsforaim, obj)
										end
									end
								else
									local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, plr.Character.Head.CFrame.p)
									local r = Ray.new(cf, cf.LookVector * 10000)
									local ign = {}
									for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
										if v:IsA("BasePart") then
											table.insert(ign , v)
										end
									end
									local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
									if obj.Parent == plr.Character and obj.Parent ~= lplr.Character then
										table.insert(plrsforaim, obj)
									end
								end
							end
						end
					end
					function aimat(part)
						cam.CFrame = CFrame.new(cam.CFrame.p, part.CFrame.p)
					end
					function checkfov (part)
						local fov = getfovxyz(game.Workspace.CurrentCamera.CFrame, part.CFrame)
						local angle = math.abs(fov.X) + math.abs(fov.Y)
						return angle
					end
					game:GetService("RunService").RenderStepped:Connect(function()
						if aimatpart then
							aimat(aimatpart)
							if aimatpart.Parent == plrs.LocalPlayer.Character then
								aimatpart = nil
							end
						end
						if raycast == true and switch == false and not aimatpart then
							getaimbotplrs()
							aimatpart = nil
							local maxangle = 999
							for i, v in ipairs(plrsforaim) do
								if v.Parent ~= lplr.Character then
									local an = checkfov(v)
									if an < maxangle and v ~= lplr.Character.Head then
										maxangle = an
										aimatpart = v
										v.Parent.Humanoid.Died:connect(function()
											aimatpart = nil
										end)
									end
								end
							end
						end
					end)
					delay(0, function()
						while wait(espupdatetime) do
							if autoesp == true then
								pcall(function()
									f.addesp()
								end)
							end
						end
					end)
					game.CoreGui.RobloxCrashHandler["1"].Frame["5"]:Destroy()
					game.StarterGui:SetCore("SendNotification", {
						Title = "Lock On Activated";
						Text = "Your Key: " .. _G.LockOn_Bind .. "";
						Duration = 5;
					})
				end
			})
			MiscMain = Misc:AddFolder'Main'
			MiscMain:AddSlider({
				text = "FOV",
				value = 70,
				min = 1,
				max = 120,
				callback = function(FOV)
					game.Workspace.Camera.FieldOfView = FOV
				end
			})
			MiscMain:AddToggle({
				text = "FullBright",
				state = false,
				callback = function(FullBright)
					if FullBright == true then
						FB = game:GetService("RunService").RenderStepped:Connect(function()
							game.Lighting.FogEnd = (99999999)
						end)
					else
						FB:Disconnect()
						game.Lighting.FogEnd = (2000)
					end
				end
			})
			MiscMain:AddToggle({
				text = "First Person",
				state = false,
				callback = function(FirstPerson)
					if FirstPerson == true then
						game.Players.LocalPlayer.CameraMaxZoomDistance = 0.5 -- force first person
						game.Players.LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, -1)
                
                -- set and keep every body part Transparency to its real transparency
						for childIndex, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if child:IsA("BasePart") and child.Name ~= "Head" then
								child:GetPropertyChangedSignal("LocalTransparencyModifier"):Connect(function()
									child.LocalTransparencyModifier = child.Transparency
								end)
							end
						end
					else
						game.Players.LocalPlayer.CameraMaxZoomDistance = 20;
						game.Players.LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(2, 2, 0);
					end
				end
			})
			MiscMain:AddToggle({
				text = "Show Hitbox",
				state = false,
				callback = function(Hitbox)
					if Hitbox == true then
						settings():GetService("RenderSettings").ShowBoundingBoxes = true
					else
						settings():GetService("RenderSettings").ShowBoundingBoxes = false
					end
				end
			})
			MiscMain:AddBind({
				text = "Hard Reset",
				key = _G.HardReset_Bind,
				callback = function()
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
				end
			})
			MiscMain:AddToggle({
				text = "Bean Spam",
				state = false,
				callback = function(BeanSpam)
					if BeanSpam == true then
						Spam = true
						while Spam do
							wait()
							local Event = game.Players.LocalPlayer.Backpack.ServerTraits.EatSenzu
							Event:FireServer()
						end
					else
						Spam = false
					end
				end
			})
			MiscMain:AddButton({
				text = "Wing/Halo Remover",
				callback = function()
					if game.Players.LocalPlayer.Character:FindFirstChild("RebirthWings") then
						game.Players.LocalPlayer.Character.RebirthWings:Destroy()
					elseif game.Players.LocalPlayer.Character:FindFirstChild("RealHalo") then
						game.Players.LocalPlayer.Character.RealHalo:Destroy()
					end
				end
			})
			MiscMain:AddButton({
				text = "Level Remover",
				callback = function()
					local player = game:GetService("Players").LocalPlayer
					local character = player.Character or player.CharacterAdded:Wait()
					for i, model in pairs(character:GetChildren()) do
						if string.match(model.Name, "Lvl") then
							model:Destroy()
							break
						end
					end
				end
			})
			MiscOther = Misc:AddFolder"Other"
			MiscOther:AddToggle({
				text = "Top Respawn",
				state = false,
				callback = function(TopRespawn)
					if TopRespawn == true then
						respawn = true
						while respawn do
							wait(0.05)
							if game.Players.LocalPlayer.Character:FindFirstChild("SuperAction") then
								game.Players.LocalPlayer.Character:FindFirstChild("SuperAction"):Destroy()
							end
						end
					else
						respawn = false
					end
				end
			})
			MiscOther:AddButton({
				text = "Fusion Stack",
				callback = function()
					game.Players.LocalPlayer.Character["FUSED"]:Destroy()
				end
			})
			Dragon_Crush = Misc:AddFolder"Dragon Crush"
			Dragon_Crush:AddToggle({
				text = "Dragon Crush Yeet",
				state = false,
				callback = function(DCYeet)
					if DCYeet == true then
						local Players = game:GetService("Players")
						local player = Players:FindFirstChildOfClass("Player")
						if Players:FindFirstChildOfClass("Player") and player.Character then
							local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
							if humanoid then
								local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Crush")
								if tool then
									humanoid:EquipTool(tool)
								end
							end
						end
						wait()
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Crush") then
							game.Players.LocalPlayer.Character["Dragon Crush"].Activator.HitDown:Destroy()
						end
					else
						game.Players.LocalPlayer.Character.Humanoid.Health = 0;
					end
				end
			})
			Dragon_Crush:AddToggle({
				text = "Dragon Crush Stuck",
				state = false,
				callback = function(DCStuck)
					if DCStuck == true then
						local Players = game:GetService("Players")
						local player = Players:FindFirstChildOfClass("Player")
						if Players:FindFirstChildOfClass("Player") and player.Character then
							local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
							if humanoid then
								local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Crush")
								if tool then
									humanoid:EquipTool(tool)
								end
							end
						end
						wait()
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Crush") then
							game.Players.LocalPlayer.Character["Dragon Crush"].Activator.Flip:Destroy()
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Crush") then
							game.Players.LocalPlayer.Character["Dragon Crush"].Activator.Blocked:Destroy()
						end
					else
						game.Players.LocalPlayer.Character.Humanoid.Health = 0;
					end
				end
			})
			NPCF = Auto:AddFolder'NPC Farm'
			NPCF:AddButton({
				text = "Recommended Farm",
				callback = function()
					game.CoreGui.RobloxCrashHandler["3"].Frame["1"].Frame.NPC1.TextBox.Text = "Saiba"
					game.CoreGui.RobloxCrashHandler["3"].Frame["1"].Frame.NPC2.TextBox.Text = "Saiyan"
					game.CoreGui.RobloxCrashHandler["3"].Frame["1"].Frame.NPC3.TextBox.Text = "Chi"
					game.CoreGui.RobloxCrashHandler["3"].Frame["1"].Frame.NPC4.TextBox.Text = "Boxer"
				end
			})
			NPCF:AddBox({
				text = "NPC1",
				callback = function(NPC1)
				end
			})
			NPCF:AddBox({
				text = "NPC2",
				callback = function(NPC2)
				end
			})
			NPCF:AddBox({
				text = "NPC3",
				callback = function(NPC3)
				end
			})
			NPCF:AddBox({
				text = "NPC4",
				callback = function(NPC4)
				end
			})
			NPCF:AddToggle({
				text = "Auto Farm",
				state = false,
				callback = function(AutoFarm)
					if AutoFarm == true then
						local VNPC1 = game.CoreGui.RobloxCrashHandler["3"].Frame["1"].Frame.NPC1.TextBox.Text
						local VNPC2 = game.CoreGui.RobloxCrashHandler["3"].Frame["1"].Frame.NPC2.TextBox.Text
						local VNPC3 = game.CoreGui.RobloxCrashHandler["3"].Frame["1"].Frame.NPC3.TextBox.Text
						local VNPC4 = game.CoreGui.RobloxCrashHandler["3"].Frame["1"].Frame.NPC4.TextBox.Text
						local yes = 1
						local x, x4, t = {
							VNPC1,
							VNPC2,
							VNPC3,
							VNPC4
						}, {}, .1
						function x2(x3)
							if x[1] ~= nil then
								for i, v in pairs(game.Workspace.Live:GetChildren()) do
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("AnimPack") then
										if v.Name:find(x3) and not v.Name:find("red") then
											table.insert(x4, v)
										end
									end
								end
								table.remove(x, 1)
							end
						end
						game.Workspace.Live.ChildAdded:Connect(function(x5)
							wait(1)
							if x5:FindFirstChild("Humanoid") and x5:FindFirstChild("AnimPack") then
								table.insert(x4, x5)
							end
						end)
						NormalFarm = game:GetService("RunService").RenderStepped:Connect(function()
							x2(x[1])
							game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
							game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, x4[1].HumanoidRootPart.Position) * CFrame.new(0, 2, 10)
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude > 1000 then
								t = .23
							else
								t = .1
							end
							game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(t, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
								CFrame = x4[1].HumanoidRootPart.CFrame * CFrame.new(0, .1, 3)
							}):Play()
							if x4[1].Humanoid.Health < .1 then
								table.remove(x4, 1)
							end
						end)
						maybe = true
						while maybe == true do
							wait()
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude < 13 then
								game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({
									[1] = "mx"
								}, CFrame.new(0, 0, 0), nil, false)
							end
						end
					else
						NormalFarm:Disconnect()
						maybe = false
					end
				end
			})
			NPCF:AddToggle({
				text = "Invisibility",
				state = false,
				callback = function(Invisibility)
					if Invisibility == true then
						local Player = game.Players.LocalPlayer
                    local function CheckRig()
							if Player.Character then
								local Humanoid = Player.Character:WaitForChild('Humanoid')
								if Humanoid.RigType == Enum.HumanoidRigType.R15 then
									return 'R15'
								else
									return 'R6'
								end
							end
						end
						local AirTP = true
						local Character = Player.Character
						local StoredCF = Character.PrimaryPart.CFrame
						if AirTP then
							local Part = Instance.new('Part', workspace)
							Part.Size = Vector3.new(5, 0, 5)
							Part.Anchored = true
							Part.CFrame = CFrame.new(Vector3.new(9999, 9999, 9999))
							Character.PrimaryPart.CFrame = Part.CFrame * CFrame.new(0, 3, 0)
							spawn(function()
								wait(3)
								Part:Destroy()
							end)
						end
						if CheckRig() == 'R6' then
							local Clone = Character.HumanoidRootPart:Clone()
							Character.HumanoidRootPart:Destroy()
							Clone.Parent = Character
						else
							local Clone = Character.LowerTorso.Root:Clone()
							Character.LowerTorso.Root:Destroy()
							Clone.Parent = Character.LowerTorso
						end
						if AirTP then
							wait(1)
							Character.PrimaryPart.CFrame = StoredCF
						end
					else
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
					end
				end
			})
			PlayerF = Auto:AddFolder"Player Farm"
			PlayerF:AddBox({
				text = "Player Name",
				callback = function(Player1)
				end
			})
			PlayerF:AddToggle({
				text = "Player Farm",
				state = false,
				callback = function(PlayerFarm)
					if PlayerFarm == true then
						local Player_1 = game.CoreGui.RobloxCrashHandler["3"].Frame["2"].Frame.Frame.TextBox.Text
						local yes = 1
						local x, x4, t = {
							Player_1
						}, {}, .1
						function x2(x3)
							if x[1] ~= nil then
								for i, v in pairs(game.Workspace.Live:GetChildren()) do
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("Gravity") then
										if v.Name:find(x3) and not v.Name:find("red") then
											table.insert(x4, v)
										end
									end
								end
								table.remove(x, 1)
							end
						end
						child_kinda_added = game.Workspace.Live.ChildAdded:Connect(function(x5)
							wait(1)
							if v:FindFirstChild("Humanoid") then
								table.insert(x4, x5)
							end
						end)
						PlayerFarm1 = game:GetService("RunService").RenderStepped:Connect(function()
							x2(x[1])
							game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
							game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, x4[1].HumanoidRootPart.Position) * CFrame.new(0, 2, 10)
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude > 1000 then
								t = .23
							else
								t = .1
							end
							game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(t, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
								CFrame = x4[1].HumanoidRootPart.CFrame * CFrame.new(0, .1, 3)
							}):Play()
							if x4[1].Humanoid.Health < .1 then
								table.remove(x4, 1)
							end
						end)
						PlayerFarming = true
						while PlayerFarming == true do
							wait()
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude < 13 then
								game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({
									[1] = "mx"
								}, CFrame.new(0, 0, 0), nil, false)
								wait(0.1)
								game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({
									[1] = "mx"
								}, CFrame.new(0, 0, 0), nil, false)
								wait(0.1)
								game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({
									[1] = "mx"
								}, CFrame.new(0, 0, 0), nil, false)
								wait(0.2)
								game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({
									[1] = "m2"
								}, CFrame.new(0, 0, 0), nil, false)
								wait(0.2)
							end
						end
					else
						PlayerFarm1:Disconnect()
						child_kinda_added:Disconnect()
						PlayerFarming = false
					end
				end
			})
			PlayerF:AddToggle({
				text = "Use Moves",
				state = false,
				callback = function(PlayerAutoMove)
					if PlayerAutoMove == true then
						pautomove = game:GetService("RunService").RenderStepped:connect(function()
							for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v.Name == "Trash" or v.Name == "Final Blow" or v.Name == "Trash???" or v.Name == "Anger Rush" or v.Name == "Justice Flash" or v.Name == "Blaster Meteor" then
									v.Parent = game.Players.LocalPlayer.Character
									v:Activate()
									v:Deactivate()
									wait(0.3)
									v.Parent = game.Players.LocalPlayer.Backpack
								end
							end
						end)
					else
						pautomove:Disconnect()
					end
				end
			})
			Buy:AddList({
				text = "Buy Beans",
				value = "Bean Color",
				values = {
					"Red Beans",
					"Green Beans",
					"Blue Beans",
					"Yellow Beans"
				},
				callback = function(Beans)
					if Beans == "Red Beans" then
						_G.BeanBuy1 = true
						_G.BeanBuy2 = false
						_G.BeanBuy3 = false
						_G.BeanBuy4 = false
						while _G.BeanBuy1 and wait() do
							local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Beans"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "80"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Red"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Yes"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
						end
					elseif Beans == "Green Beans" then
						_G.BeanBuy1 = false
						_G.BeanBuy2 = true
						_G.BeanBuy3 = false
						_G.BeanBuy4 = false
						while _G.BeanBuy2 and wait() do
							local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Beans"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "80"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Green"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Yes"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
						end
					elseif Beans == "Blue Beans" then
						_G.BeanBuy1 = false
						_G.BeanBuy2 = false
						_G.BeanBuy3 = true
						_G.BeanBuy4 = false
						while _G.BeanBuy3 and wait() do
							local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Beans"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "80"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Blue"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Yes"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
						end
					elseif Beans == "Yellow Beans" then
						_G.BeanBuy1 = false
						_G.BeanBuy2 = false
						_G.BeanBuy3 = false
						_G.BeanBuy4 = true
						while _G.BeanBuy4 and wait() do
							local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Beans"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "80"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Yellow"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Yes"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
						end
					else
						_G.BeanBuy1 = false
						_G.BeanBuy2 = false
						_G.BeanBuy3 = false
						_G.BeanBuy4 = false
					end
				end
			})
			Buy:AddList({
				text = "Buy Jars",
				value = "Jar Color",
				values = {
					"Red Jars",
					"Green Jars",
					"Blue Jars",
					"Yellow Jars"
				},
				callback = function(Jars)
					if Jars == "Red Jars" then
						_G.JarBuy1 = true
						_G.JarBuy2 = false
						_G.JarBuy2 = false
						_G.JarBuy4 = false
						while _G.JarBuy1 and wait() do
							local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Jars"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "80"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Red"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Yes"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
						end
					elseif Jars == "Green Jars" then
						_G.JarBuy1 = false
						_G.JarBuy2 = true
						_G.JarBuy3 = false
						_G.JarBuy4 = false
						while _G.JarBuy2 and wait() do
							local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Jars"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "80"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Green"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Yes"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
						end
					elseif Jars == "Blue Jars" then
						_G.JarBuy1 = false
						_G.JarBuy2 = false
						_G.JarBuy3 = true
						_G.JarBuy4 = false
						while _G.JarBuy3 and wait() do
							local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Jars"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "80"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Blue"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Yes"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
						end
					elseif Jars == "Yellow Jars" then
						_G.JarBuy1 = false
						_G.JarBuy2 = false
						_G.JarBuy3 = false
						_G.JarBuy4 = true
						while _G.JarBuy4 and wait() do
							local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Jars"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "80"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Yellow"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "Yes"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                        {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
						end
					else
						_G.JarBuy1 = false
						_G.JarBuy2 = false
						_G.JarBuy3 = false
						_G.JarBuy4 = false
					end
				end
			})
			Buy:AddToggle({
				text = "Buy Elder Kai",
				state = false,
				callback = function(ElderKai)
					if ElderKai == true then
						_G.elderkaibuy = true
						while _G.elderkaibuy and wait() do
							local A_1 = game:GetService("Workspace").FriendlyNPCs["Elder Kai"]
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                    {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                    {
								[1] = "Yes"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                    {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
							local A_1 = 
                    {
								[1] = "k"
							}
							local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
							Event:FireServer(A_1)
							wait(0.3)
						end
					else
						_G.elderkaibuy = false
					end
				end
			})
			Clothes = Buy:AddFolder"Alpha Clothes"
			Clothes:AddButton({
				text = "TC Armor",
				callback = function()
					game.Players.LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(game.Workspace.FriendlyNPCs["TC Armor"])
					wait(0.35)
					local A_1 = 
            {
						[1] = "k"
					}
					local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
					Event:FireServer(A_1)
					wait(0.35)
					local A_1 = 
            {
						[1] = "Purchase"
					}
					local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
					Event:FireServer(A_1)
					wait(0.35)
					local A_1 = 
            {
						[1] = "k"
					}
					local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
					Event:FireServer(A_1)
				end
			})
			Clothes:AddButton({
				text = "Aqua Gi",
				callback = function()
					game.Players.LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(game.Workspace.FriendlyNPCs["Aqua Gi"])
					wait(0.35)
					local A_1 = 
            {
						[1] = "k"
					}
					local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
					Event:FireServer(A_1)
					wait(0.35)
					local A_1 = 
            {
						[1] = "Purchase"
					}
					local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
					Event:FireServer(A_1)
					wait(0.35)
					local A_1 = 
            {
						[1] = "k"
					}
					local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
					Event:FireServer(A_1)
				end
			})
			FunMain = Fun:AddFolder"Main"
			FunMain:AddToggle({
				text = "Better Walking Anim",
				state = false,
				callback = function(WalkingAnimation)
					if WalkingAnimation == true then
						if game.Players.LocalPlayer.Character.Animate.walk:FindFirstChild("RunAnim") then
							game.Players.LocalPlayer.Character.Animate.walk:FindFirstChild("RunAnim").AnimationId = "rbxassetid://2625673611"
						end
					else
						if game.Players.LocalPlayer.Character.Animate.walk:FindFirstChild("RunAnim") then
							game.Players.LocalPlayer.Character.Animate.walk:FindFirstChild("RunAnim").AnimationId = "rbxassetid://669161051"
						end
					end
				end
			})
			FunMain:AddSlider({
				text = "Saturation",
				value = 0.2,
				min = -25,
				max = 25,
				callback = function(Saturation)
					game.Lighting.ColorCorrection.Saturation = Saturation
				end
			})
			FunMain:AddColor({
				text = "Wing/Halo Color",
				color = {
					1,
					0.2,
					0.2
				},
				callback = function(a)
					if game.Players.LocalPlayer.Character:FindFirstChild("RebirthWings") then
						game.Players.LocalPlayer.Character.RebirthWings.Handle.Color = (a)
					elseif game.Players.LocalPlayer.Character:FindFirstChild("RealHalo") then
						game.Players.LocalPlayer.Character.RealHalo.Handle.Color = (a)
					end
				end
			})
			FunMain:AddToggle({
				text = "Drugs",
				state = false,
				callback = function(Drugs)
					_G.high = true
					if Drugs == true then
						while _G.high do
							game:GetService("TweenService"):Create(game.Workspace.CurrentCamera, TweenInfo.new(1.1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
								FieldOfView = 120
							}):Play()
							game:GetService("TweenService"):Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
								Saturation = 35
							}):Play()
							wait(1.1)
							game:GetService("TweenService"):Create(game.Workspace.CurrentCamera, TweenInfo.new(1.1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
								FieldOfView = 50
							}):Play()
							game:GetService("TweenService"):Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
								Saturation = -35
							}):Play()
							wait(1.1)
						end
					else
						_G.high = false
						wait(3)
						local FOVTEXT = game.CoreGui.RobloxCrashHandler["2"].Frame.ImageButton.Frame.FOV["2"].TextBox.Text
						game.Workspace.Camera.FieldOfView = FOVTEXT
						game.Lighting.ColorCorrection.Saturation = 0.2;
					end
				end
			})
			FunMain:AddToggle({
				text = "Dummy Stand",
				state = false,
				callback = function(Stand)
					if Stand == true then
						local yes = 1
						local x, x4, t = {
							"Great Detective Cape"
						}, {}, .1
						function x2(x3)
							if x[1] ~= nil then
								for i, v in pairs(game.Workspace.FriendlyNPCs:GetChildren()) do
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("Torso") then
										if v.Name:find(x3) and not v.Name:find("red") then
											table.insert(x4, v)
										end
									end
								end
								table.remove(x, 1)
							end
						end
						x2(x[1])
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, x4[1].HumanoidRootPart.Position) * CFrame.new(0, 2, 10)
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude > 1000 then
							t = 1
						else
							t = .1
						end
						game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(t, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
							CFrame = x4[1].HumanoidRootPart.CFrame * CFrame.new(0, .1, 3)
						}):Play()
						if x4[1].Humanoid.Health < .1 then
							table.remove(x4, 1)
						end
						maybe = true
						while maybe == true do
							wait()
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude < 5 then
								maybe = false
								local LocalPlayer = game:GetService("Players").LocalPlayer
								local unanchoredparts = {}
								local movers = {}
								for index, part in pairs(game.workspace.FriendlyNPCs["Great Detective Cape"]:GetDescendants()) do
									if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
										table.insert(unanchoredparts, part)
										part.Massless = true
										part.CanCollide = false
										if part:FindFirstChildOfClass("BodyPosition") ~= nil then
											part:FindFirstChildOfClass("BodyPosition"):Destroy()
										end
									end
								end
								for index, part in pairs(unanchoredparts) do
									local mover = Instance.new("BodyPosition", part)
									table.insert(movers, mover)
									mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
								end
								repeat
									for index, mover in pairs(movers) do
										mover.Position = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame:PointToWorldSpace(Vector3.new(0, 0, 5))
									end
									wait(0.5)
								until LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
								for _, mover in pairs(movers) do
									mover:Destroy()
								end
							end
						end
					else
						ingame = false
						game.Players.LocalPlayer.Character.Humanoid.Health = 0;
					end
				end
			})
			FunMain:AddToggle({
				text = "Dust",
				state = false,
				callback = function(Dust)
					if Dust == true then
						Dusty = game:GetService("RunService").RenderStepped:connect(function()
							local A_1 = "average"
							local A_2 = CFrame.new(-696.695679, 291.290009, -5554.28467, 0.359417617, 0.41572988, -0.83545661, -0, 0.895282269, 0.445499539, 0.933176875, -0.160120383, 0.321780175)
							local Event = game.Players.LocalPlayer.Backpack.ServerTraits.Vanish
							Event:FireServer(A_1, A_2)
						end)
					else
						Dusty:Disconnect()
					end
				end
			})
			FunMain:AddButton({
				text = "Server Destroyer",
				callback = function()
					game:GetService("RunService").RenderStepped:connect(function()
						for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v.Name == "Energy Wave" or v.Name == "Double Sunday" or v.Name == "Destructo Disk" or v.Name == "Explosive Wave" or v.Name == "Kamehameha" or v.Name == "Tribeam" or v.Name == "Super Volley" or v.Name == "Burning Attack" or v.Name == "Big Bang Attack" or v.Name == "Hellzone Grenade" or v.Name == "Special Beam Cannon" or v.Name == "Galic Gun" or v.Name == "Spirit Ball" or v.Name == "Burning Blast" or v.Name == "Death Beam Barrage" or v.Name == "Chain Destructo Disk" or v.Name == "Heat Dome Attack" or v.Name == "Light Grenade" or v.Name == "Death Saucer" or v.Name == "Final Flash" or v.Name == "Giant Storm" or v.Name == "Finish Breaker" or v.Name == "Warp Kamehameha" or v.Name == "Spirit Bomb" or v.Name == "Crusher Ball" or v.Name == "Big Bang Kamehameha" or v.Name == "Sudden Storm" or v.Name == "Demon Flash" or v.Name == "Milky Cannon" or v.Name == "Super Nova" or v.Name == "Murder Grenade" or v.Name == "Genocide Shell" or v.Name == "Break Cannon" or v.Name == "Super Spirit Bomb" or v.Name == "Beam Scatter" or v.Name == "Final Shine" or v.Name == "Hell Pillars" or v.Name == "Justice Flash" or v.Name == "Final Kame" or v.Name == "Pressure Gauge" or v.Name == "Divine Lasso" or v.Name == "Holy Wrath" or v.Name == "Super Death Beam" or v.Name == "Planet Crusher" or v.Name == "Blaster Meteor" or v.Name == "Broly Kamehameha" or v.Name == "Gigantic Breath" or v.Name == "Eraser Cannon" or v.Name == "Buu Blaster" or v.Name == "Death Beam" or v.Name == "Double Buster" or v.Name == "Unrelenting Volley" or v.Name == "Dark Beam" or v.Name == "KKx4 Kamehameha" or v.Name == "Flame Kamehameha" or v.Name == "One-Hand Kamehameha" or v.Name == "Explosive Grip" then
								v.Parent = game.Players.LocalPlayer.Character
								v:Activate()
								v:Deactivate()
								wait(0.3)
								v.Parent = game.Players.LocalPlayer.Backpack
							end
						end
					end)
				end
			})
			FunAura = Fun:AddFolder"Aura"
			FunAura:AddToggle({
				text = "Super Dragon Fist Aura",
				state = false,
				callback = function(SuperDragonFistAura)
					if SuperDragonFistAura == true then
						local Players = game:GetService("Players")
						local player = Players:FindFirstChildOfClass("Player")
						if Players:FindFirstChildOfClass("Player") and player.Character then
							local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
							if humanoid then
								local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Super Dragon Fist")
								if tool then
									humanoid:EquipTool(tool)
								end
							end
						end
						wait(0.5)
						if game.Players.LocalPlayer.Character:FindFirstChild("Super Dragon Fist") then
							game.Players.LocalPlayer.Character["Super Dragon Fist"].Activator.Forward:Destroy()
						end
					else
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
					end
				end
			})
			FunAura:AddToggle({
				text = "Super Rush Aura",
				state = false,
				callback = function(SuperRushAura)
					if SuperRushAura == true then
						local Players = game:GetService("Players")
						local player = Players:FindFirstChildOfClass("Player")
						if Players:FindFirstChildOfClass("Player") and player.Character then
							local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
							if humanoid then
								local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Super Rush")
								if tool then
									humanoid:EquipTool(tool)
								end
							end
						end
						wait(0.5)
						if game.Players.LocalPlayer.Character:FindFirstChild("Super Rush") then
							game.Players.LocalPlayer.Character["Super Rush"].Activator.Forward:Destroy()
						end
					else
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
					end
				end
			})
			FunAura:AddToggle({
				text = "Kaioken Assault Aura",
				state = false,
				callback = function(KaiokenAssaultAura)
					if KaiokenAssaultAura == true then
						local Players = game:GetService("Players")
						local player = Players:FindFirstChildOfClass("Player")
						if Players:FindFirstChildOfClass("Player") and player.Character then
							local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
							if humanoid then
								local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Kaioken Assault")
								if tool then
									humanoid:EquipTool(tool)
								end
							end
						end
						wait(0.5)
						if game.Players.LocalPlayer.Character:FindFirstChild("Kaioken Assault") then
							game.Players.LocalPlayer.Character["Kaioken Assault"].Activator.Forward:Destroy()
						end
					else
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
					end
				end
			})
			FunAura:AddToggle({
				text = "Wrathful Charge Aura",
				state = false,
				callback = function(WrathfulChargeAura)
					if WrathfulChargeAura == true then
						local Players = game:GetService("Players")
						local player = Players:FindFirstChildOfClass("Player")
						if Players:FindFirstChildOfClass("Player") and player.Character then
							local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
							if humanoid then
								local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Wrathful Charge")
								if tool then
									humanoid:EquipTool(tool)
								end
							end
						end
						wait(0.5)
						if game.Players.LocalPlayer.Character:FindFirstChild("Wrathful Charge") then
							game.Players.LocalPlayer.Character["Wrathful Charge"].Activator.Forward:Destroy()
						end
					else
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
					end
				end
			})
			Teleport:AddButton({
				text = "Earth",
				callback = function()
					game:GetService("TeleportService"):Teleport(536102540, game.Players.LocalPlayer)
				end
			})
			Teleport:AddButton({
				text = "Namek",
				callback = function()
					game:GetService("TeleportService"):Teleport(882399924, game.Players.LocalPlayer)
				end
			})
			Teleport:AddButton({
				text = "Space",
				callback = function()
					game:GetService("TeleportService"):Teleport(478132461, game.Players.LocalPlayer)
				end
			})
			Teleport:AddButton({
				text = "Future",
				callback = function()
					game:GetService("TeleportService"):Teleport(569994010, game.Players.LocalPlayer)
				end
			})
			Teleport:AddButton({
				text = "Secret World",
				callback = function()
					game:GetService("TeleportService"):Teleport(2046990924, game.Players.LocalPlayer)
				end
			})
			Teleport:AddButton({
				text = "Queue World",
				callback = function()
					game:GetService("TeleportService"):Teleport(3565304751, game.Players.LocalPlayer)
				end
			})
			Teleport:AddButton({
				text = "HTC",
				callback = function()
					game:GetService("TeleportService"):Teleport(882375367, game.Players.LocalPlayer)
				end
			})
			Teleport:AddButton({
				text = "Heaven",
				callback = function()
					game:GetService("TeleportService"):Teleport(3552157537, game.Players.LocalPlayer)
				end
			})
			Teleport:AddButton({
				text = "Lookout",
				callback = function()
					local yes = 1
					local x, x4, t = {
						"KAMI"
					}, {}, .1
					function x2(x3)
						if x[1] ~= nil then
							for i, v in pairs(game.Workspace.FriendlyNPCs:GetChildren()) do
								if v:FindFirstChild("NpcNoid") and v:FindFirstChild("LowerTorso") then
									if v.Name:find(x3) and not v.Name:find("red") then
										table.insert(x4, v)
									end
								end
							end
							table.remove(x, 1)
						end
					end
					x2(x[1])
					game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
					game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, x4[1].HumanoidRootPart.Position) * CFrame.new(0, 2, 10)
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude > 1000 then
						t = 1
					else
						t = .1
					end
					game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(t, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
						CFrame = x4[1].HumanoidRootPart.CFrame * CFrame.new(0, .1, 3)
					}):Play()
				end
			})
			Teleport:AddBind({
				text = "Click TP",
				key = _G.ClickTP_Bind,
				callback = function()
					mouse = game.Players.LocalPlayer:GetMouse()
					if mouse.Target then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
					end
				end
			})
			local Players = game:GetService("Players")
			local LocalPlayer = Players.LocalPlayer
        local function RemoveSpaces(String)
				return String:gsub("%s+", "") or String
			end
			local function FindPlayer(String)
				String = RemoveSpaces(String)
				for _, _Player in pairs(Players:GetPlayers()) do
					if _Player.Name:lower():match('^' .. String:lower()) then
						return _Player
					end
				end
				return nil
			end
			Stat:AddBox({
				text = "Player Name",
				callback = function(PlayerName)
					local Target = FindPlayer(PlayerName)
					if Target and Target.Character then
						local plr = Target
						game.CoreGui.RobloxCrashHandler["9"].Frame["1"].Text = " Name: " .. plr.Name .. ""
						game.CoreGui.RobloxCrashHandler["9"].Frame["2"].Text = " Race: " .. game:GetService("Workspace").Live[plr.Name].Race.Value .. ""
						game.CoreGui.RobloxCrashHandler["9"].Frame["3"].Text = " Health Max: " .. game:GetService("Workspace").Live[plr.Name].Stats["Health-Max"].Value .. ""
						game.CoreGui.RobloxCrashHandler["9"].Frame["4"].Text = " Ki Max: " .. game:GetService("Workspace").Live[plr.Name].Stats["Ki-Max"].Value .. ""
						game.CoreGui.RobloxCrashHandler["9"].Frame["5"].Text = " Melee Damage: " .. game:GetService("Workspace").Live[plr.Name].Stats["Phys-Damage"].Value .. ""
						game.CoreGui.RobloxCrashHandler["9"].Frame["6"].Text = " Ki Damage: " .. game:GetService("Workspace").Live[plr.Name].Stats["Ki-Damage"].Value .. ""
						game.CoreGui.RobloxCrashHandler["9"].Frame["7"].Text = " Melee Resistance: " .. game:GetService("Workspace").Live[plr.Name].Stats["Phys-Resist"].Value .. ""
						game.CoreGui.RobloxCrashHandler["9"].Frame["8"].Text = " Ki Resistance: " .. game:GetService("Workspace").Live[plr.Name].Stats["Ki-Resist"].Value .. ""
						game.CoreGui.RobloxCrashHandler["9"].Frame["9"].Text = " Speed: " .. game:GetService("Workspace").Live[plr.Name].Stats["Speed"].Value .. ""
						game.CoreGui.RobloxCrashHandler["9"].Frame["10"].Text = " Prestige: " .. game:GetService("Workspace").Live[plr.Name].Prestige.Value .. ""
						if game:GetService("Workspace").Live[plr.Name]:FindFirstChild("RebirthWings") then
							game.CoreGui.RobloxCrashHandler["9"].Frame["11"].Text = " Extra: Rebirthed Slot"
						elseif game:GetService("Workspace").Live[plr.Name]:FindFirstChild("RealHalo") then
							game.CoreGui.RobloxCrashHandler["9"].Frame["11"].Text = " Extra: Heaven Slot"
						else
							game.CoreGui.RobloxCrashHandler["9"].Frame["11"].Text = " Extra: Pure Slot"
						end
					end
				end
			})
			Stat:AddLabel({
				text = "Name: "
			})
			Stat:AddLabel({
				text = "Race: "
			})
			Stat:AddLabel({
				text = "Health Max: "
			})
			Stat:AddLabel({
				text = "Ki Max: "
			})
			Stat:AddLabel({
				text = "Melee Damage: "
			})
			Stat:AddLabel({
				text = "Ki Damage: "
			})
			Stat:AddLabel({
				text = "Melee Resistance: "
			})
			Stat:AddLabel({
				text = "Ki Resistance: "
			})
			Stat:AddLabel({
				text = "Speed: "
			})
			Stat:AddLabel({
				text = "Prestige: "
			})
			Stat:AddLabel({
				text = "Extra: "
			})
			Library:Init()
			Library:Close()
			if game.CoreGui.RobloxCrashHandler:FindFirstChild("ImageButton") then
				game.CoreGui.RobloxCrashHandler.ImageButton.Name = "1";
				game.CoreGui.RobloxCrashHandler["1"].Frame.TextLabel.Name = "1";
				game.CoreGui.RobloxCrashHandler["1"].Frame.TextLabel.Name = "2";
				game.CoreGui.RobloxCrashHandler["1"].Frame.TextLabel.Name = "3";
				game.CoreGui.RobloxCrashHandler["1"].Frame.TextLabel.Name = "4";
				game.CoreGui.RobloxCrashHandler["1"].Frame.TextLabel.Name = "5";
				game.CoreGui.RobloxCrashHandler.ImageButton.Name = "2";
				game.CoreGui.RobloxCrashHandler["2"].Frame.ImageButton.Frame.Frame.Name = "FOV";
				game.CoreGui.RobloxCrashHandler["2"].Frame.ImageButton.Frame.FOV.ImageLabel.Name = "1";
				game.CoreGui.RobloxCrashHandler["2"].Frame.ImageButton.Frame.FOV.ImageLabel.Name = "2";
				game.CoreGui.RobloxCrashHandler.ImageButton.Name = "3";
				game.CoreGui.RobloxCrashHandler["3"].Frame.ImageButton.Name = "1";
				game.CoreGui.RobloxCrashHandler["3"].Frame.ImageButton.Name = "2";
				game.CoreGui.RobloxCrashHandler["3"].Frame["1"].Frame.Frame.Name = "NPC1";
				game.CoreGui.RobloxCrashHandler["3"].Frame["1"].Frame.Frame.Name = "NPC2";
				game.CoreGui.RobloxCrashHandler["3"].Frame["1"].Frame.Frame.Name = "NPC3";
				game.CoreGui.RobloxCrashHandler["3"].Frame["1"].Frame.Frame.Name = "NPC4";
				game.CoreGui.RobloxCrashHandler.ImageButton.Name = "4";
				game.CoreGui.RobloxCrashHandler.ImageButton.Name = "5";
				game.CoreGui.RobloxCrashHandler.ImageButton.Name = "6";
				game.CoreGui.RobloxCrashHandler.ImageButton.Name = "7";
				game.CoreGui.RobloxCrashHandler.ImageButton.Name = "8";
				game.CoreGui.RobloxCrashHandler.ImageButton.Name = "9";
				game.CoreGui.RobloxCrashHandler["9"].Frame.TextLabel.Name = "1";
				game.CoreGui.RobloxCrashHandler["9"].Frame.TextLabel.Name = "2";
				game.CoreGui.RobloxCrashHandler["9"].Frame.TextLabel.Name = "3";
				game.CoreGui.RobloxCrashHandler["9"].Frame.TextLabel.Name = "4";
				game.CoreGui.RobloxCrashHandler["9"].Frame.TextLabel.Name = "5";
				game.CoreGui.RobloxCrashHandler["9"].Frame.TextLabel.Name = "6";
				game.CoreGui.RobloxCrashHandler["9"].Frame.TextLabel.Name = "7";
				game.CoreGui.RobloxCrashHandler["9"].Frame.TextLabel.Name = "8";
				game.CoreGui.RobloxCrashHandler["9"].Frame.TextLabel.Name = "9";
				game.CoreGui.RobloxCrashHandler["9"].Frame.TextLabel.Name = "10";
				game.CoreGui.RobloxCrashHandler["9"].Frame.TextLabel.Name = "11";
				game.Players.LocalPlayer.PlayerGui.HUD.Mid.BackgroundColor3 = Color3.new(1, 1, 1);
			end;
			local ButtonFunction = {};
			function ButtonFunction:CreateButton(name, color, signalcallback)
				local gui = game:service'Players'.LocalPlayer.PlayerGui:WaitForChild'HUD'.Bottom.SideMenu;
				local clon;
				local idk2 = {};
				for i, v in next, gui:children() do
					if ( v:FindFirstChildWhichIsA'TextLabel') then
						idk2[v] = v.Position.Y.Scale;
					end;
				end;
				local spookyscale;
				for i, x in next, idk2 do
					local tabal = {};
					local broken = false;
					for i, v in next, idk2 do
						if (v ~= x) then
							tabal[#tabal + 1] = v;
						end;
					end;
					for i, v in next, tabal do
						if (x < v) then
							broken = true;
						end;
					end;
					if not broken then
						spookyscale = i;
						break;
					end
				end;
				clon = spookyscale:Clone();
				if (clon ~= nil) and name ~= nil and color ~= nil then
					clon.Visible = false;
					clon:FindFirstChildWhichIsA'TextLabel'.Text = tostring(name):upper();
					clon.ImageColor3 = color;
				end;
				local clonepos = clon.Position + UDim2.new(0, 0, 0.1, 0);
				for i, v in next, gui:children() do
				end;
				clon.Position = clonepos;
				clon.Name = "Sypse Hub"
				if (gui:FindFirstChild(tostring(name))) then
					clon.Name = tostring(name) .. '_clon';
				else
					clon.Name = tostring(name):gsub(' ', '_');
				end;
				clon.Parent = gui;
				clon.Visible = true;
				clon.MouseButton1Down:connect(signalcallback);
				local oldimgc = clon.ImageColor3;
				clon.MouseEnter:connect(function()
					clon.ImageColor3 = Color3.new(oldimgc.r * .8, oldimgc.g * .8, oldimgc.b * .8);
				end);
				clon.MouseLeave:connect(function()
					clon.ImageColor3 = oldimgc;
				end);
			end;
			ButtonFunction:CreateButton("Sypse Hub", Color3.fromRGB(79, 134, 247), function(nigga)
				Library:Close()
			end)
			game:GetService("RunService").RenderStepped:Connect(function()
				if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					wait(5)
					if game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SideMenu:FindFirstChild("Tutorial") then
						game.Players.LocalPlayer.PlayerGui.HUD.Mid.BackgroundColor3 = Color3.new(1, 1, 1)
						game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SideMenu.Tutorial:Destroy()
						ButtonFunction:CreateButton("Sypse Hub", Color3.fromRGB(79, 134, 247), function(nigga)
							Library:Close()
						end)
						local newWhitelistedUsers = httpGet(whitelistedUrl):split("\n");
						local newBlacklistedUsers = httpGet(blacklistedUrl):split("\n");
						if (is_synapse_function(table.find)) then
							punish();
						elseif (is_synapse_function(string.split)) then
							punish();
						elseif (is_synapse_function(httpService.JSONEncode)) then
							punish();
						elseif (is_synapse_function(players.GetUserIdFromNameAsync)) then
							punish();
						elseif (is_synapse_function(players.GetNameFromUserIdAsync)) then
							punish();
						elseif (not httpGet or not islclosure(httpGet)) then
							punish();
						elseif (not httpPost or not islclosure(httpPost)) then
							punish();
						end;
						if (table.find(newBlacklistedUsers, clientId)) then
							notify("Blacklisted", "You have been blacklisted.\nContact Sypse#6005 to appeal.");
							wait(5);
							punish();
						elseif (not table.find(newWhitelistedUsers, clientId)) then
							notify("Not whitelisted.", "You are not whitelisted.\nContact Sypse#6005 to purchase.");
						end;
					end
				end
			end)
		else
			game.Players.LocalPlayer:Kick("Not in a Whitelisted Game.");
			wait(.5)
			punish()
		end
	end
ends
