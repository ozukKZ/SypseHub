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


local whitelistedUrl = ("https://sypsehub.000webhostapp.com/SpookyWhitelist.lua"); --PSU_ENCRYPT_STRING lmao
local blacklistedUrl = ("https://sypsehub.000webhostapp.com/SpookyBlacklist.lua");
local logUrl = ("https://discord.com/api/webhooks/762529870051278848/z2X-JWLywgrPs5LFq8dkE2aI_ReuGejsMUxSNWnSr-xmZQuhRxgYtG86kvYVZHGqPPy2");



local httpGet;
local httpPost;
local logUser;
local notify;
local punish;
local username = game.Players.LocalPlayer.Name;
local clientId = tostring(players:GetUserIdFromNameAsync(client.Name));
local clientName = players:GetNameFromUserIdAsync(clientId);
--skipped auth and shit
--[[do
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
]]

game.StarterGui:SetCore("SendNotification", {
	Title = "SYPSE HUB";
	Text = "Getting HWID";
	Duration = 2;
})
--[[wait("2")
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
]]
if false then
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
			--logUser(true);
			if game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SideMenu:FindFirstChild("Tutorial") then
				game.Players.LocalPlayer.PlayerGui.HUD.Bottom.SideMenu.Tutorial:Destroy()
			end
			local uilibrary = [[
                local library = {flags = {}, windows = {}, open = true}
                
                --Services
                local runService = game:GetService"RunService"
                local tweenService = game:GetService"TweenService"
                local textService = game:GetService"TextService"
                local inputService = game:GetService"UserInputService"
                
                --Locals
                local dragging, dragInput, dragStart, startPos, dragObject
                
                local blacklistedKeys = { --add or remove keys if you find the need to
                	Enum.KeyCode.Unknown,Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,Enum.KeyCode.D,Enum.KeyCode.Slash,Enum.KeyCode.Tab,Enum.KeyCode.Backspace,Enum.KeyCode.Escape
                }
                local whitelistedMouseinputs = { --add or remove mouse inputs if you find the need to
                	Enum.UserInputType.MouseButton2,Enum.UserInputType.MouseButton3
                }
                
                --Functions
                local function round(num, bracket)
                	bracket = bracket or 1
                	local a = math.floor(num/bracket + (math.sign(num) * 0.5)) * bracket
                	if a < 0 then
                		a = a + bracket
                	end
                	return a
                end
                
                local function keyCheck(x,x1)
                	for _,v in next, x1 do
                		if v == x then
                			return true
                		end
                	end
                end
                
                local function update(input)
                	local delta = input.Position - dragStart
                	local yPos = (startPos.Y.Offset + delta.Y) < -36 and -36 or startPos.Y.Offset + delta.Y
                	dragObject:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, yPos), "Out", "Quint", 0.1, true)
                end
                
                --From: https://devforum.roblox.com/t/how-to-create-a-simple-rainbow-effect-using-tweenService/221849/2
                local chromaColor
                local rainbowTime = 5
                spawn(function()
                	while wait() do
                		chromaColor = Color3.fromHSV(tick() % rainbowTime / rainbowTime, 1, 1)
                	end
                end)
                
                function library:Create(class, properties)
                	properties = typeof(properties) == "table" and properties or {}
                	local inst = Instance.new(class)
                	for property, value in next, properties do
                		inst[property] = value
                	end
                	return inst
                end
                
                local function createOptionHolder(holderTitle, parent, parentTable, subHolder)
                	local size = subHolder and 34 or 40
                	parentTable.main = library:Create("ImageButton", {
                		LayoutOrder = subHolder and parentTable.position or 0,
                		Position = UDim2.new(0, 35 + (250 * (parentTable.position or 0)), 0, 46),
                		Size = UDim2.new(0, 230, 0, size),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = Color3.fromRGB(20, 20, 20),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.04,
                		ClipsDescendants = true,
                		Parent = parent
                	})
                	
                	local round
                	if not subHolder then
                		round = library:Create("ImageLabel", {
                			Size = UDim2.new(1, 0, 0, size),
                			BackgroundTransparency = 1,
                			Image = "rbxassetid://3570695787",
                			ImageColor3 = parentTable.open and (subHolder and Color3.fromRGB(16, 16, 16) or Color3.fromRGB(10, 10, 10)) or (subHolder and Color3.fromRGB(10, 10, 10) or Color3.fromRGB(6, 6, 6)),
                			ScaleType = Enum.ScaleType.Slice,
                			SliceCenter = Rect.new(100, 100, 100, 100),
                			SliceScale = 0.04,
                			Parent = parentTable.main
                		})
                	end
                	
                	local title = library:Create("TextLabel", {
                		Size = UDim2.new(1, 0, 0, size),
                		BackgroundTransparency = subHolder and 0 or 1,
                		BackgroundColor3 = Color3.fromRGB(10, 10, 10),
                		BorderSizePixel = 0,
                		Text = holderTitle,
                		TextSize = subHolder and 16 or 17,
                		Font = Enum.Font.GothamBold,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		Parent = parentTable.main
                	})
                	
                	local closeHolder = library:Create("Frame", {
                		Position = UDim2.new(1, 0, 0, 0),
                		Size = UDim2.new(-1, 0, 1, 0),
                		SizeConstraint = Enum.SizeConstraint.RelativeYY,
                		BackgroundTransparency = 1,
                		Parent = title
                	})
                	
                	local close = library:Create("ImageLabel", {
                		AnchorPoint = Vector2.new(0.5, 0.5),
                		Position = UDim2.new(0.5, 0, 0.5, 0),
                		Size = UDim2.new(1, -size - 10, 1, -size - 10),
                		Rotation = parentTable.open and 90 or 180,
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://4918373417",
                		ImageColor3 = parentTable.open and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(30, 30, 30),
                		ScaleType = Enum.ScaleType.Fit,
                		Parent = closeHolder
                	})
                	
                	parentTable.content = library:Create("Frame", {
                		Position = UDim2.new(0, 0, 0, size),
                		Size = UDim2.new(1, 0, 1, -size),
                		BackgroundTransparency = 1,
                		Parent = parentTable.main
                	})
                	
                	local layout = library:Create("UIListLayout", {
                		SortOrder = Enum.SortOrder.LayoutOrder,
                		Parent = parentTable.content
                	})
                	
                	layout.Changed:connect(function()
                		parentTable.content.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y)
                		parentTable.main.Size = #parentTable.options > 0 and parentTable.open and UDim2.new(0, 230, 0, layout.AbsoluteContentSize.Y + size) or UDim2.new(0, 230, 0, size)
                	end)
                	
                	if not subHolder then
                		library:Create("UIPadding", {
                			Parent = parentTable.content
                		})
                		
                		title.InputBegan:connect(function(input)
                			if input.UserInputType == Enum.UserInputType.MouseButton1 then
                				dragObject = parentTable.main
                				dragging = true
                				dragStart = input.Position
                				startPos = dragObject.Position
                			end
                		end)
                		title.InputChanged:connect(function(input)
                			if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                				dragInput = input
                			end
                		end)
                			title.InputEnded:connect(function(input)
                			if input.UserInputType == Enum.UserInputType.MouseButton1 then
                				dragging = false
                			end
                		end)
                	end
                	
                	closeHolder.InputBegan:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseButton1 then
                			parentTable.open = not parentTable.open
                			tweenService:Create(close, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = parentTable.open and 90 or 180, ImageColor3 = parentTable.open and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(30, 30, 30)}):Play()
                			if subHolder then
                				tweenService:Create(title, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = parentTable.open and Color3.fromRGB(16, 16, 16) or Color3.fromRGB(10, 10, 10)}):Play()
                			else
                				tweenService:Create(round, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = parentTable.open and Color3.fromRGB(10, 10, 10) or Color3.fromRGB(6, 6, 6)}):Play()
                			end
                			parentTable.main:TweenSize(#parentTable.options > 0 and parentTable.open and UDim2.new(0, 230, 0, layout.AbsoluteContentSize.Y + size) or UDim2.new(0, 230, 0, size), "Out", "Quad", 0.2, true)
                		end
                	end)
                
                	function parentTable:SetTitle(newTitle)
                		title.Text = tostring(newTitle)
                	end
                	
                	return parentTable
                end
                	
                local function createLabel(option, parent)
                	local main = library:Create("TextLabel", {
                		LayoutOrder = option.position,
                		Size = UDim2.new(1, 0, 0, 26),
                		BackgroundTransparency = 1,
                		Text = " " .. option.text,
                		TextSize = 17,
                		Font = Enum.Font.Gotham,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		TextXAlignment = Enum.TextXAlignment.Left,
                		Parent = parent.content
                	})
                	
                	setmetatable(option, {__newindex = function(t, i, v)
                		if i == "Text" then
                			main.Text = " " .. tostring(v)
                		end
                	end})
                end
                
                function createToggle(option, parent)
                	local main = library:Create("TextLabel", {
                		LayoutOrder = option.position,
                		Size = UDim2.new(1, 0, 0, 31),
                		BackgroundTransparency = 1,
                		Text = " " .. option.text,
                		TextSize = 17,
                		Font = Enum.Font.Gotham,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		TextXAlignment = Enum.TextXAlignment.Left,
                		Parent = parent.content
                	})
                	
                	local tickboxOutline = library:Create("ImageLabel", {
                		Position = UDim2.new(1, -6, 0, 4),
                		Size = UDim2.new(-1, 10, 1, -10),
                		SizeConstraint = Enum.SizeConstraint.RelativeYY,
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = option.state and Color3.fromRGB(255, 65, 65) or Color3.fromRGB(100, 100, 100),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = main
                	})
                	
                	local tickboxInner = library:Create("ImageLabel", {
                		Position = UDim2.new(0, 2, 0, 2),
                		Size = UDim2.new(1, -4, 1, -4),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = option.state and Color3.fromRGB(255, 65, 65) or Color3.fromRGB(20, 20, 20),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = tickboxOutline
                	})
                	
                	local checkmarkHolder = library:Create("Frame", {
                		Position = UDim2.new(0, 4, 0, 4),
                		Size = option.state and UDim2.new(1, -8, 1, -8) or UDim2.new(0, 0, 1, -8),
                		BackgroundTransparency = 1,
                		ClipsDescendants = true,
                		Parent = tickboxOutline
                	})
                	
                	local checkmark = library:Create("ImageLabel", {
                		Size = UDim2.new(1, 0, 1, 0),
                		SizeConstraint = Enum.SizeConstraint.RelativeYY,
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://4919148038",
                		ImageColor3 = Color3.fromRGB(20, 20, 20),
                		Parent = checkmarkHolder
                	})
                	
                	local inContact
                	main.InputBegan:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseButton1 then
                			option:SetState(not option.state)
                		end
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = true
                			if not option.state then
                				tweenService:Create(tickboxOutline, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(140, 140, 140)}):Play()
                			end
                		end
                	end)
                	
                	main.InputEnded:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = true
                			if not option.state then
                				tweenService:Create(tickboxOutline, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play()
                			end
                		end
                	end)
                	
                	function option:SetState(state)
                		library.flags[self.flag] = state
                		self.state = state
                		checkmarkHolder:TweenSize(option.state and UDim2.new(1, -8, 1, -8) or UDim2.new(0, 0, 1, -8), "Out", "Quad", 0.2, true)
                		tweenService:Create(tickboxInner, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = state and Color3.fromRGB(255, 65, 65) or Color3.fromRGB(20, 20, 20)}):Play()
                		if state then
                			tweenService:Create(tickboxOutline, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(255, 65, 65)}):Play()
                		else
                			if inContact then
                				tweenService:Create(tickboxOutline, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(140, 140, 140)}):Play()
                			else
                				tweenService:Create(tickboxOutline, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play()
                			end
                		end
                		self.callback(state)
                	end
                
                	if option.state then
                		delay(1, function() option.callback(true) end)
                	end
                	
                	setmetatable(option, {__newindex = function(t, i, v)
                		if i == "Text" then
                			main.Text = " " .. tostring(v)
                		end
                	end})
                end
                
                function createButton(option, parent)
                	local main = library:Create("TextLabel", {
                		ZIndex = 2,
                		LayoutOrder = option.position,
                		Size = UDim2.new(1, 0, 0, 34),
                		BackgroundTransparency = 1,
                		Text = " " .. option.text,
                		TextSize = 17,
                		Font = Enum.Font.Gotham,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		Parent = parent.content
                	})
                	
                	local round = library:Create("ImageLabel", {
                		AnchorPoint = Vector2.new(0.5, 0.5),
                		Position = UDim2.new(0.5, 0, 0.5, 0),
                		Size = UDim2.new(1, -12, 1, -10),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = Color3.fromRGB(40, 40, 40),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = main
                	})
                	
                	local inContact
                	local clicking
                	main.InputBegan:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseButton1 then
                			library.flags[option.flag] = true
                			clicking = true
                			tweenService:Create(round, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(255, 65, 65)}):Play()
                			option.callback()
                		end
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = true
                			tweenService:Create(round, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                		end
                	end)
                	
                	main.InputEnded:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseButton1 then
                			clicking = false
                			if inContact then
                				tweenService:Create(round, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                			else
                				tweenService:Create(round, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(40, 40, 40)}):Play()
                			end
                		end
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = false
                			if not clicking then
                				tweenService:Create(round, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(40, 40, 40)}):Play()
                			end
                		end
                	end)
                end
                
                local function createBind(option, parent)
                	local binding
                	local holding
                	local loop
                	local text = string.match(option.key, "Mouse") and string.sub(option.key, 1, 5) .. string.sub(option.key, 12, 13) or option.key
                
                	local main = library:Create("TextLabel", {
                		LayoutOrder = option.position,
                		Size = UDim2.new(1, 0, 0, 33),
                		BackgroundTransparency = 1,
                		Text = " " .. option.text,
                		TextSize = 17,
                		Font = Enum.Font.Gotham,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		TextXAlignment = Enum.TextXAlignment.Left,
                		Parent = parent.content
                	})
                	
                	local round = library:Create("ImageLabel", {
                		Position = UDim2.new(1, -6, 0, 4),
                		Size = UDim2.new(0, -textService:GetTextSize(text, 16, Enum.Font.Gotham, Vector2.new(9e9, 9e9)).X - 16, 1, -10),
                		SizeConstraint = Enum.SizeConstraint.RelativeYY,
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = Color3.fromRGB(40, 40, 40),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = main
                	})
                	
                	local bindinput = library:Create("TextLabel", {
                		Size = UDim2.new(1, 0, 1, 0),
                		BackgroundTransparency = 1,
                		Text = text,
                		TextSize = 16,
                		Font = Enum.Font.Gotham,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		Parent = round
                	})
                	
                	local inContact
                	main.InputBegan:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = true
                			if not binding then
                				tweenService:Create(round, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                			end
                		end
                	end)
                	 
                	main.InputEnded:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseButton1 then
                			binding = true
                			bindinput.Text = "..."
                			tweenService:Create(round, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(255, 65, 65)}):Play()
                		end
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = false
                			if not binding then
                				tweenService:Create(round, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(40, 40, 40)}):Play()
                			end
                		end
                	end)
                	
                	inputService.InputBegan:connect(function(input)
                		if inputService:GetFocusedTextBox() then return end
                		if (input.KeyCode.Name == option.key or input.UserInputType.Name == option.key) and not binding then
                			if option.hold then
                				loop = runService.Heartbeat:connect(function()
                					if binding then
                						option.callback(true)
                						loop:Disconnect()
                						loop = nil
                					else
                						option.callback()
                					end
                				end)
                			else
                				option.callback()
                			end
                		elseif binding then
                			local key
                			pcall(function()
                				if not keyCheck(input.KeyCode, blacklistedKeys) then
                					key = input.KeyCode
                				end
                			end)
                			pcall(function()
                				if keyCheck(input.UserInputType, whitelistedMouseinputs) and not key then
                					key = input.UserInputType
                				end
                			end)
                			key = key or option.key
                			option:SetKey(key)
                		end
                	end)
                	
                	inputService.InputEnded:connect(function(input)
                		if input.KeyCode.Name == option.key or input.UserInputType.Name == option.key or input.UserInputType.Name == "MouseMovement" then
                			if loop then
                				loop:Disconnect()
                				loop = nil
                				option.callback(true)
                			end
                		end
                	end)
                	
                	function option:SetKey(key)
                		binding = false
                		if loop then
                			loop:Disconnect()
                			loop = nil
                		end
                		self.key = key or self.key
                		self.key = self.key.Name or self.key
                		library.flags[self.flag] = self.key
                		if string.match(self.key, "Mouse") then
                			bindinput.Text = string.sub(self.key, 1, 5) .. string.sub(self.key, 12, 13)
                		else
                			bindinput.Text = self.key
                		end
                		tweenService:Create(round, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = inContact and Color3.fromRGB(60, 60, 60) or Color3.fromRGB(40, 40, 40)}):Play()
                		round.Size = UDim2.new(0, -textService:GetTextSize(bindinput.Text, 15, Enum.Font.Gotham, Vector2.new(9e9, 9e9)).X - 16, 1, -10)	
                	end
                end
                
                local function createSlider(option, parent)
                	local main = library:Create("Frame", {
                		LayoutOrder = option.position,
                		Size = UDim2.new(1, 0, 0, 50),
                		BackgroundTransparency = 1,
                		Parent = parent.content
                	})
                	
                	local title = library:Create("TextLabel", {
                		Position = UDim2.new(0, 0, 0, 4),
                		Size = UDim2.new(1, 0, 0, 20),
                		BackgroundTransparency = 1,
                		Text = " " .. option.text,
                		TextSize = 17,
                		Font = Enum.Font.Gotham,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		TextXAlignment = Enum.TextXAlignment.Left,
                		Parent = main
                	})
                	
                	local slider = library:Create("ImageLabel", {
                		Position = UDim2.new(0, 10, 0, 34),
                		Size = UDim2.new(1, -20, 0, 5),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = Color3.fromRGB(30, 30, 30),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = main
                	})
                	
                	local fill = library:Create("ImageLabel", {
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = Color3.fromRGB(60, 60, 60),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = slider
                	})
                	
                	local circle = library:Create("ImageLabel", {
                		AnchorPoint = Vector2.new(0.5, 0.5),
                		Position = UDim2.new((option.value - option.min) / (option.max - option.min), 0, 0.5, 0),
                		SizeConstraint = Enum.SizeConstraint.RelativeYY,
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = Color3.fromRGB(60, 60, 60),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 1,
                		Parent = slider
                	})
                	
                	local valueRound = library:Create("ImageLabel", {
                		Position = UDim2.new(1, -6, 0, 4),
                		Size = UDim2.new(0, -60, 0, 18),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = Color3.fromRGB(40, 40, 40),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = main
                	})
                	
                	local inputvalue = library:Create("TextBox", {
                		Size = UDim2.new(1, 0, 1, 0),
                		BackgroundTransparency = 1,
                		Text = option.value,
                		TextColor3 = Color3.fromRGB(235, 235, 235),
                		TextSize = 15,
                		TextWrapped = true,
                		Font = Enum.Font.Gotham,
                		Parent = valueRound
                	})
                	
                	if option.min >= 0 then
                		fill.Size = UDim2.new((option.value - option.min) / (option.max - option.min), 0, 1, 0)
                	else
                		fill.Position = UDim2.new((0 - option.min) / (option.max - option.min), 0, 0, 0)
                		fill.Size = UDim2.new(option.value / (option.max - option.min), 0, 1, 0)
                	end
                	
                	local sliding
                	local inContact
                	main.InputBegan:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseButton1 then
                			tweenService:Create(fill, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(255, 65, 65)}):Play()
                			tweenService:Create(circle, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(3.5, 0, 3.5, 0), ImageColor3 = Color3.fromRGB(255, 65, 65)}):Play()
                			sliding = true
                			option:SetValue(option.min + ((input.Position.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X) * (option.max - option.min))
                		end
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = true
                			if not sliding then
                				tweenService:Create(fill, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play()
                				tweenService:Create(circle, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(2.8, 0, 2.8, 0), ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play()
                			end
                		end
                	end)
                	
                	inputService.InputChanged:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseMovement and sliding then
                			option:SetValue(option.min + ((input.Position.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X) * (option.max - option.min))
                		end
                	end)
                
                	main.InputEnded:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseButton1 then
                			sliding = false
                			if inContact then
                				tweenService:Create(fill, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play()
                				tweenService:Create(circle, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(2.8, 0, 2.8, 0), ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play()
                			else
                				tweenService:Create(fill, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                				tweenService:Create(circle, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0), ImageColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                			end
                		end
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = false
                			inputvalue:ReleaseFocus()
                			if not sliding then
                				tweenService:Create(fill, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                				tweenService:Create(circle, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0), ImageColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                			end
                		end
                	end)
                
                	inputvalue.FocusLost:connect(function()
                		tweenService:Create(circle, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0), ImageColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                		option:SetValue(tonumber(inputvalue.Text) or option.value)
                	end)
                
                	function option:SetValue(value)
                		value = round(value, option.float)
                		value = math.clamp(value, self.min, self.max)
                		circle:TweenPosition(UDim2.new((value - self.min) / (self.max - self.min), 0, 0.5, 0), "Out", "Quad", 0.1, true)
                		if self.min >= 0 then
                			fill:TweenSize(UDim2.new((value - self.min) / (self.max - self.min), 0, 1, 0), "Out", "Quad", 0.1, true)
                		else
                			fill:TweenPosition(UDim2.new((0 - self.min) / (self.max - self.min), 0, 0, 0), "Out", "Quad", 0.1, true)
                			fill:TweenSize(UDim2.new(value / (self.max - self.min), 0, 1, 0), "Out", "Quad", 0.1, true)
                		end
                		library.flags[self.flag] = value
                		self.value = value
                		inputvalue.Text = value
                		self.callback(value)
                	end
                end
                
                local function createList(option, parent, holder)
                	local valueCount = 0
                	
                	local main = library:Create("Frame", {
                		LayoutOrder = option.position,
                		Size = UDim2.new(1, 0, 0, 52),
                		BackgroundTransparency = 1,
                		Parent = parent.content
                	})
                	
                	local round = library:Create("ImageLabel", {
                		Position = UDim2.new(0, 6, 0, 4),
                		Size = UDim2.new(1, -12, 1, -10),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = Color3.fromRGB(40, 40, 40),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = main
                	})
                	
                	local title = library:Create("TextLabel", {
                		Position = UDim2.new(0, 12, 0, 8),
                		Size = UDim2.new(1, -24, 0, 14),
                		BackgroundTransparency = 1,
                		Text = option.text,
                		TextSize = 14,
                		Font = Enum.Font.GothamBold,
                		TextColor3 = Color3.fromRGB(140, 140, 140),
                		TextXAlignment = Enum.TextXAlignment.Left,
                		Parent = main
                	})
                	
                	local listvalue = library:Create("TextLabel", {
                		Position = UDim2.new(0, 12, 0, 20),
                		Size = UDim2.new(1, -24, 0, 24),
                		BackgroundTransparency = 1,
                		Text = option.value,
                		TextSize = 18,
                		Font = Enum.Font.Gotham,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		TextXAlignment = Enum.TextXAlignment.Left,
                		Parent = main
                	})
                	
                	library:Create("ImageLabel", {
                		Position = UDim2.new(1, -16, 0, 16),
                		Size = UDim2.new(-1, 32, 1, -32),
                		SizeConstraint = Enum.SizeConstraint.RelativeYY,
                		Rotation = 90,
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://4918373417",
                		ImageColor3 = Color3.fromRGB(140, 140, 140),
                		ScaleType = Enum.ScaleType.Fit,
                		Parent = round
                	})
                	
                	option.mainHolder = library:Create("ImageButton", {
                		ZIndex = 3,
                		Size = UDim2.new(0, 240, 0, 52),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageTransparency = 1,
                		ImageColor3 = Color3.fromRGB(30, 30, 30),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Visible = false,
                		Parent = library.base
                	})
                	
                	local content = library:Create("ScrollingFrame", {
                		ZIndex = 3,
                		Size = UDim2.new(1, 0, 1, 0),
                		BackgroundTransparency = 1,
                		BorderSizePixel = 0,
                		ScrollBarImageColor3 = Color3.fromRGB(),
                		ScrollBarThickness = 0,
                		ScrollingDirection = Enum.ScrollingDirection.Y,
                		Parent = option.mainHolder
                	})
                	
                	library:Create("UIPadding", {
                		PaddingTop = UDim.new(0, 6),
                		Parent = content
                	})
                	
                	local layout = library:Create("UIListLayout", {
                		Parent = content
                	})
                	
                	layout.Changed:connect(function()
                		option.mainHolder.Size = UDim2.new(0, 240, 0, (valueCount > 4 and (4 * 40) or layout.AbsoluteContentSize.Y) + 12)
                		content.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 12)
                	end)
                	
                	local inContact
                	round.InputBegan:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseButton1 then
                			if library.activePopup then
                				library.activePopup:Close()
                			end
                			local position = main.AbsolutePosition
                			option.mainHolder.Position = UDim2.new(0, position.X - 5, 0, position.Y - 10)
                			option.open = true
                			option.mainHolder.Visible = true
                			library.activePopup = option
                			content.ScrollBarThickness = 6
                			tweenService:Create(option.mainHolder, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {ImageTransparency = 0, Position = UDim2.new(0, position.X - 5, 0, position.Y - 4)}):Play()
                			tweenService:Create(option.mainHolder, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0.1), {Position = UDim2.new(0, position.X - 5, 0, position.Y + 1)}):Play()
                			for _,label in next, content:GetChildren() do
                				if label:IsA"TextLabel" then
                					tweenService:Create(label, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
                				end
                			end
                		end
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = true
                			if not option.open then
                				tweenService:Create(round, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                			end
                		end
                	end)
                	
                	round.InputEnded:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = false
                			if not option.open then
                				tweenService:Create(round, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(40, 40, 40)}):Play()
                			end
                		end
                	end)
                	
                	function option:AddValue(value)
                		valueCount = valueCount + 1
                		local label = library:Create("TextLabel", {
                			ZIndex = 3,
                			Size = UDim2.new(1, 0, 0, 40),
                			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
                			BorderSizePixel = 0,
                			Text = "    " .. value,
                			TextSize = 14,
                			TextTransparency = self.open and 0 or 1,
                			Font = Enum.Font.Gotham,
                			TextColor3 = Color3.fromRGB(255, 255, 255),
                			TextXAlignment = Enum.TextXAlignment.Left,
                			Parent = content
                		})
                		
                		local inContact
                		local clicking
                		label.InputBegan:connect(function(input)
                			if input.UserInputType == Enum.UserInputType.MouseButton1 then
                				clicking = true
                				tweenService:Create(label, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(10, 10, 10)}):Play()
                				self:SetValue(value)
                			end
                			if input.UserInputType == Enum.UserInputType.MouseMovement then
                				inContact = true
                				if not clicking then
                					tweenService:Create(label, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(20, 20, 20)}):Play()
                				end
                			end
                		end)
                		
                		label.InputEnded:connect(function(input)
                			if input.UserInputType == Enum.UserInputType.MouseButton1 then
                				clicking = false
                				tweenService:Create(label, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = inContact and Color3.fromRGB(20, 20, 20) or Color3.fromRGB(30, 30, 30)}):Play()
                			end
                			if input.UserInputType == Enum.UserInputType.MouseMovement then
                				inContact = false
                				if not clicking then
                					tweenService:Create(label, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
                				end
                			end
                		end)
                	end
                
                	if not table.find(option.values, option.value) then
                		option:AddValue(option.value)
                	end
                	
                	for _, value in next, option.values do
                		option:AddValue(tostring(value))
                	end
                	
                	function option:RemoveValue(value)
                		for _,label in next, content:GetChildren() do
                			if label:IsA"TextLabel" and label.Text == "	" .. value then
                				label:Destroy()
                				valueCount = valueCount - 1
                				break
                			end
                		end
                		if self.value == value then
                			self:SetValue("")
                		end
                	end
                	
                	function option:SetValue(value)
                		library.flags[self.flag] = tostring(value)
                		self.value = tostring(value)
                		listvalue.Text = self.value
                		self.callback(value)
                	end
                	
                	function option:Close()
                		library.activePopup = nil
                		self.open = false
                		content.ScrollBarThickness = 0
                		local position = main.AbsolutePosition
                		tweenService:Create(round, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = inContact and Color3.fromRGB(60, 60, 60) or Color3.fromRGB(40, 40, 40)}):Play()
                		tweenService:Create(self.mainHolder, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 1, Position = UDim2.new(0, position.X - 5, 0, position.Y -10)}):Play()
                		for _,label in next, content:GetChildren() do
                			if label:IsA"TextLabel" then
                				tweenService:Create(label, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1, TextTransparency = 1}):Play()
                			end
                		end
                		wait(0.3)
                		--delay(0.3, function()
                			if not self.open then
                				self.mainHolder.Visible = false
                			end
                		--end)
                	end
                
                	return option
                end
                
                local function createBox(option, parent)
                	local main = library:Create("Frame", {
                		LayoutOrder = option.position,
                		Size = UDim2.new(1, 0, 0, 52),
                		BackgroundTransparency = 1,
                		Parent = parent.content
                	})
                	
                	local outline = library:Create("ImageLabel", {
                		Position = UDim2.new(0, 6, 0, 4),
                		Size = UDim2.new(1, -12, 1, -10),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = Color3.fromRGB(60, 60, 60),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = main
                	})
                	
                	local round = library:Create("ImageLabel", {
                		Position = UDim2.new(0, 8, 0, 6),
                		Size = UDim2.new(1, -16, 1, -14),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = Color3.fromRGB(20, 20, 20),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.01,
                		Parent = main
                	})
                	
                	local title = library:Create("TextLabel", {
                		Position = UDim2.new(0, 12, 0, 8),
                		Size = UDim2.new(1, -24, 0, 14),
                		BackgroundTransparency = 1,
                		Text = option.text,
                		TextSize = 14,
                		Font = Enum.Font.GothamBold,
                		TextColor3 = Color3.fromRGB(100, 100, 100),
                		TextXAlignment = Enum.TextXAlignment.Left,
                		Parent = main
                	})
                	
                	local inputvalue = library:Create("TextBox", {
                		Position = UDim2.new(0, 12, 0, 20),
                		Size = UDim2.new(1, -24, 0, 24),
                		BackgroundTransparency = 1,
                		Text = option.value,
                		TextSize = 18,
                		Font = Enum.Font.Gotham,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		TextXAlignment = Enum.TextXAlignment.Left,
                		TextWrapped = true,
                		Parent = main
                	})
                	
                	local inContact
                	local focused
                	main.InputBegan:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseButton1 then
                			if not focused then inputvalue:CaptureFocus() end
                		end
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = true
                			if not focused then
                				tweenService:Create(outline, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play()
                			end
                		end
                	end)
                	
                	main.InputEnded:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = false
                			if not focused then
                				tweenService:Create(outline, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                			end
                		end
                	end)
                	
                	inputvalue.Focused:connect(function()
                		focused = true
                		tweenService:Create(outline, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(255, 65, 65)}):Play()
                	end)
                	
                	inputvalue.FocusLost:connect(function(enter)
                		focused = false
                		tweenService:Create(outline, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                		option:SetValue(inputvalue.Text, enter)
                	end)
                	
                	function option:SetValue(value, enter)
                		library.flags[self.flag] = tostring(value)
                		self.value = tostring(value)
                		inputvalue.Text = self.value
                		self.callback(value, enter)
                	end
                end
                
                local function createColorPickerWindow(option)
                	option.mainHolder = library:Create("ImageButton", {
                		ZIndex = 3,
                		Size = UDim2.new(0, 240, 0, 180),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageTransparency = 1,
                		ImageColor3 = Color3.fromRGB(30, 30, 30),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = library.base
                	})
                		
                	local hue, sat, val = Color3.toHSV(option.color)
                	hue, sat, val = hue == 0 and 1 or hue, sat + 0.005, val - 0.005
                	local editinghue
                	local editingsatval
                	local currentColor = option.color
                	local previousColors = {[1] = option.color}
                	local originalColor = option.color
                	local rainbowEnabled
                	local rainbowLoop
                	
                	function option:updateVisuals(Color)
                		currentColor = Color
                		self.visualize2.ImageColor3 = Color
                		hue, sat, val = Color3.toHSV(Color)
                		hue = hue == 0 and 1 or hue
                		self.satval.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
                		self.hueSlider.Position = UDim2.new(1 - hue, 0, 0, 0)
                		self.satvalSlider.Position = UDim2.new(sat, 0, 1 - val, 0)
                	end
                	
                	option.hue = library:Create("ImageLabel", {
                		ZIndex = 3,
                		AnchorPoint = Vector2.new(0, 1),
                		Position = UDim2.new(0, 8, 1, -8),
                		Size = UDim2.new(1, -100, 0, 22),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageTransparency = 1,
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = option.mainHolder
                	})
                	
                	local Gradient = library:Create("UIGradient", {
                		Color = ColorSequence.new({
                			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
                			ColorSequenceKeypoint.new(0.157, Color3.fromRGB(255, 0, 255)),
                			ColorSequenceKeypoint.new(0.323, Color3.fromRGB(0, 0, 255)),
                			ColorSequenceKeypoint.new(0.488, Color3.fromRGB(0, 255, 255)),
                			ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 255, 0)),
                			ColorSequenceKeypoint.new(0.817, Color3.fromRGB(255, 255, 0)),
                			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
                		}),
                		Parent = option.hue
                	})
                	
                	option.hueSlider = library:Create("Frame", {
                		ZIndex = 3,
                		Position = UDim2.new(1 - hue, 0, 0, 0),
                		Size = UDim2.new(0, 2, 1, 0),
                		BackgroundTransparency = 1,
                		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
                		BorderColor3 = Color3.fromRGB(255, 255, 255),
                		Parent = option.hue
                	})
                	
                	option.hue.InputBegan:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                			editinghue = true
                			X = (option.hue.AbsolutePosition.X + option.hue.AbsoluteSize.X) - option.hue.AbsolutePosition.X
                			X = (Input.Position.X - option.hue.AbsolutePosition.X) / X
                			X = X < 0 and 0 or X > 0.995 and 0.995 or X
                			option:updateVisuals(Color3.fromHSV(1 - X, sat, val))
                		end
                	end)
                	
                	inputService.InputChanged:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseMovement and editinghue then
                			X = (option.hue.AbsolutePosition.X + option.hue.AbsoluteSize.X) - option.hue.AbsolutePosition.X
                			X = (Input.Position.X - option.hue.AbsolutePosition.X) / X
                			X = X <= 0 and 0 or X >= 0.995 and 0.995 or X
                			option:updateVisuals(Color3.fromHSV(1 - X, sat, val))
                		end
                	end)
                	
                	option.hue.InputEnded:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                			editinghue = false
                		end
                	end)
                	
                	option.satval = library:Create("ImageLabel", {
                		ZIndex = 3,
                		Position = UDim2.new(0, 8, 0, 8),
                		Size = UDim2.new(1, -100, 1, -42),
                		BackgroundTransparency = 1,
                		BackgroundColor3 = Color3.fromHSV(hue, 1, 1),
                		BorderSizePixel = 0,
                		Image = "rbxassetid://4155801252",
                		ImageTransparency = 1,
                		ClipsDescendants = true,
                		Parent = option.mainHolder
                	})
                	
                	option.satvalSlider = library:Create("Frame", {
                		ZIndex = 3,
                		AnchorPoint = Vector2.new(0.5, 0.5),
                		Position = UDim2.new(sat, 0, 1 - val, 0),
                		Size = UDim2.new(0, 4, 0, 4),
                		Rotation = 45,
                		BackgroundTransparency = 1,
                		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                		Parent = option.satval
                	})
                	
                	option.satval.InputBegan:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                			editingsatval = true
                			X = (option.satval.AbsolutePosition.X + option.satval.AbsoluteSize.X) - option.satval.AbsolutePosition.X
                			Y = (option.satval.AbsolutePosition.Y + option.satval.AbsoluteSize.Y) - option.satval.AbsolutePosition.Y
                			X = (Input.Position.X - option.satval.AbsolutePosition.X) / X
                			Y = (Input.Position.Y - option.satval.AbsolutePosition.Y) / Y
                			X = X <= 0.005 and 0.005 or X >= 1 and 1 or X
                			Y = Y <= 0 and 0 or Y >= 0.995 and 0.995 or Y
                			option:updateVisuals(Color3.fromHSV(hue, X, 1 - Y))
                		end
                	end)
                	
                	inputService.InputChanged:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseMovement and editingsatval then
                			X = (option.satval.AbsolutePosition.X + option.satval.AbsoluteSize.X) - option.satval.AbsolutePosition.X
                			Y = (option.satval.AbsolutePosition.Y + option.satval.AbsoluteSize.Y) - option.satval.AbsolutePosition.Y
                			X = (Input.Position.X - option.satval.AbsolutePosition.X) / X
                			Y = (Input.Position.Y - option.satval.AbsolutePosition.Y) / Y
                			X = X <= 0.005 and 0.005 or X >= 1 and 1 or X
                			Y = Y <= 0 and 0 or Y >= 0.995 and 0.995 or Y
                			option:updateVisuals(Color3.fromHSV(hue, X, 1 - Y))
                		end
                	end)
                	
                	option.satval.InputEnded:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                			editingsatval = false
                		end
                	end)
                	
                	option.visualize2 = library:Create("ImageLabel", {
                		ZIndex = 3,
                		Position = UDim2.new(1, -8, 0, 8),
                		Size = UDim2.new(0, -80, 0, 80),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = currentColor,
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = option.mainHolder
                	})
                	
                	option.resetColor = library:Create("ImageLabel", {
                		ZIndex = 3,
                		Position = UDim2.new(1, -8, 0, 92),
                		Size = UDim2.new(0, -80, 0, 18),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageTransparency = 1,
                		ImageColor3 = Color3.fromRGB(20, 20, 20),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = option.mainHolder
                	})
                	
                	option.resetText = library:Create("TextLabel", {
                		ZIndex = 3,
                		Size = UDim2.new(1, 0, 1, 0),
                		BackgroundTransparency = 1,
                		Text = "Reset",
                		TextTransparency = 1,
                		Font = Enum.Font.Code,
                		TextSize = 15,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		Parent = option.resetColor
                	})
                	
                	option.resetColor.InputBegan:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseButton1 and not rainbowEnabled then
                			previousColors = {originalColor}
                			option:SetColor(originalColor)
                		end
                		if Input.UserInputType == Enum.UserInputType.MouseMovement and not dragging then
                			tweenService:Create(option.resetColor, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(10, 10, 10)}):Play()
                		end
                	end)
                	
                	option.resetColor.InputEnded:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseMovement and not dragging then
                			tweenService:Create(option.resetColor, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(20, 20, 20)}):Play()
                		end
                	end)
                	
                	option.undoColor = library:Create("ImageLabel", {
                		ZIndex = 3,
                		Position = UDim2.new(1, -8, 0, 112),
                		Size = UDim2.new(0, -80, 0, 18),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageTransparency = 1,
                		ImageColor3 = Color3.fromRGB(20, 20, 20),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = option.mainHolder
                	})
                	
                	option.undoText = library:Create("TextLabel", {
                		ZIndex = 3,
                		Size = UDim2.new(1, 0, 1, 0),
                		BackgroundTransparency = 1,
                		Text = "Undo",
                		TextTransparency = 1,
                		Font = Enum.Font.Code,
                		TextSize = 15,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		Parent = option.undoColor
                	})
                	
                	option.undoColor.InputBegan:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseButton1 and not rainbowEnabled then
                			local Num = #previousColors == 1 and 0 or 1
                			option:SetColor(previousColors[#previousColors - Num])
                			if #previousColors ~= 1 then
                				table.remove(previousColors, #previousColors)
                			end
                		end
                		if Input.UserInputType == Enum.UserInputType.MouseMovement and not dragging then
                			tweenService:Create(option.undoColor, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(10, 10, 10)}):Play()
                		end
                	end)
                	
                	option.undoColor.InputEnded:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseMovement and not dragging then
                			tweenService:Create(option.undoColor, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(20, 20, 20)}):Play()
                		end
                	end)
                	
                	option.setColor = library:Create("ImageLabel", {
                		ZIndex = 3,
                		Position = UDim2.new(1, -8, 0, 132),
                		Size = UDim2.new(0, -80, 0, 18),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageTransparency = 1,
                		ImageColor3 = Color3.fromRGB(20, 20, 20),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = option.mainHolder
                	})
                	
                	option.setText = library:Create("TextLabel", {
                		ZIndex = 3,
                		Size = UDim2.new(1, 0, 1, 0),
                		BackgroundTransparency = 1,
                		Text = "Set",
                		TextTransparency = 1,
                		Font = Enum.Font.Code,
                		TextSize = 15,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		Parent = option.setColor
                	})
                	
                	option.setColor.InputBegan:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseButton1 and not rainbowEnabled then
                			table.insert(previousColors, currentColor)
                			option:SetColor(currentColor)
                		end
                		if Input.UserInputType == Enum.UserInputType.MouseMovement and not dragging then
                			tweenService:Create(option.setColor, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(10, 10, 10)}):Play()
                		end
                	end)
                	
                	option.setColor.InputEnded:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseMovement and not dragging then
                			tweenService:Create(option.setColor, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(20, 20, 20)}):Play()
                		end
                	end)
                	
                	option.rainbow = library:Create("ImageLabel", {
                		ZIndex = 3,
                		Position = UDim2.new(1, -8, 0, 152),
                		Size = UDim2.new(0, -80, 0, 18),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageTransparency = 1,
                		ImageColor3 = Color3.fromRGB(20, 20, 20),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = option.mainHolder
                	})
                	
                	option.rainbowText = library:Create("TextLabel", {
                		ZIndex = 3,
                		Size = UDim2.new(1, 0, 1, 0),
                		BackgroundTransparency = 1,
                		Text = "Rainbow",
                		TextTransparency = 1,
                		Font = Enum.Font.Code,
                		TextSize = 15,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		Parent = option.rainbow
                	})
                	
                	option.rainbow.InputBegan:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                			rainbowEnabled = not rainbowEnabled
                			if rainbowEnabled then
                				rainbowLoop = runService.Heartbeat:connect(function()
                					option:SetColor(chromaColor)
                					option.rainbowText.TextColor3 = chromaColor
                				end)
                			else
                				rainbowLoop:Disconnect()
                				option:SetColor(previousColors[#previousColors])
                				option.rainbowText.TextColor3 = Color3.fromRGB(255, 255, 255)
                			end
                		end
                		if Input.UserInputType == Enum.UserInputType.MouseMovement and not dragging then
                			tweenService:Create(option.rainbow, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(10, 10, 10)}):Play()
                		end
                	end)
                	
                	option.rainbow.InputEnded:connect(function(Input)
                		if Input.UserInputType == Enum.UserInputType.MouseMovement and not dragging then
                			tweenService:Create(option.rainbow, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(20, 20, 20)}):Play()
                		end
                	end)
                	
                	return option
                end
                
                local function createColor(option, parent, holder)
                	option.main = library:Create("TextLabel", {
                		LayoutOrder = option.position,
                		Size = UDim2.new(1, 0, 0, 31),
                		BackgroundTransparency = 1,
                		Text = " " .. option.text,
                		TextSize = 17,
                		Font = Enum.Font.Gotham,
                		TextColor3 = Color3.fromRGB(255, 255, 255),
                		TextXAlignment = Enum.TextXAlignment.Left,
                		Parent = parent.content
                	})
                	
                	local colorBoxOutline = library:Create("ImageLabel", {
                		Position = UDim2.new(1, -6, 0, 4),
                		Size = UDim2.new(-1, 10, 1, -10),
                		SizeConstraint = Enum.SizeConstraint.RelativeYY,
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = Color3.fromRGB(100, 100, 100),
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = option.main
                	})
                	
                	option.visualize = library:Create("ImageLabel", {
                		Position = UDim2.new(0, 2, 0, 2),
                		Size = UDim2.new(1, -4, 1, -4),
                		BackgroundTransparency = 1,
                		Image = "rbxassetid://3570695787",
                		ImageColor3 = option.color,
                		ScaleType = Enum.ScaleType.Slice,
                		SliceCenter = Rect.new(100, 100, 100, 100),
                		SliceScale = 0.02,
                		Parent = colorBoxOutline
                	})
                	
                	local inContact
                	option.main.InputBegan:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseButton1 then
                			if not option.mainHolder then createColorPickerWindow(option) end
                			if library.activePopup then
                				library.activePopup:Close()
                			end
                			local position = option.main.AbsolutePosition
                			option.mainHolder.Position = UDim2.new(0, position.X - 5, 0, position.Y - 10)
                			option.open = true
                			option.mainHolder.Visible = true
                			library.activePopup = option
                			tweenService:Create(option.mainHolder, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {ImageTransparency = 0, Position = UDim2.new(0, position.X - 5, 0, position.Y - 4)}):Play()
                			tweenService:Create(option.mainHolder, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0.1), {Position = UDim2.new(0, position.X - 5, 0, position.Y + 1)}):Play()
                			tweenService:Create(option.satval, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
                			for _,object in next, option.mainHolder:GetDescendants() do
                				if object:IsA"TextLabel" then
                					tweenService:Create(object, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
                				elseif object:IsA"ImageLabel" then
                					tweenService:Create(object, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
                				elseif object:IsA"Frame" then
                					tweenService:Create(object, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
                				end
                			end
                		end
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = true
                			if not option.open then
                				tweenService:Create(colorBoxOutline, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(140, 140, 140)}):Play()
                			end
                		end
                	end)
                	
                	option.main.InputEnded:connect(function(input)
                		if input.UserInputType == Enum.UserInputType.MouseMovement then
                			inContact = true
                			if not option.open then
                				tweenService:Create(colorBoxOutline, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play()
                			end
                		end
                	end)
                	
                	function option:SetColor(newColor)
                		if self.mainHolder then
                			self:updateVisuals(newColor)
                		end
                		self.visualize.ImageColor3 = newColor
                		library.flags[self.flag] = newColor
                		self.color = newColor
                		self.callback(newColor)
                	end
                	
                	function option:Close()
                		library.activePopup = nil
                		self.open = false
                		local position = self.main.AbsolutePosition
                		tweenService:Create(self.mainHolder, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 1, Position = UDim2.new(0, position.X - 5, 0, position.Y - 10)}):Play()
                		tweenService:Create(self.satval, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
                		for _,object in next, self.mainHolder:GetDescendants() do
                			if object:IsA"TextLabel" then
                				tweenService:Create(object, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
                			elseif object:IsA"ImageLabel" then
                				tweenService:Create(object, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
                			elseif object:IsA"Frame" then
                				tweenService:Create(object, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
                			end
                		end
                		delay(0.3, function()
                			if not self.open then
                				self.mainHolder.Visible = false
                			end 
                		end)
                	end
                end
                
                local function loadOptions(option, holder)
                	for _,newOption in next, option.options do
                		if newOption.type == "label" then
                			createLabel(newOption, option)
                		elseif newOption.type == "toggle" then
                			createToggle(newOption, option)
                		elseif newOption.type == "button" then
                			createButton(newOption, option)
                		elseif newOption.type == "list" then
                			createList(newOption, option, holder)
                		elseif newOption.type == "box" then
                			createBox(newOption, option)
                		elseif newOption.type == "bind" then
                			createBind(newOption, option)
                		elseif newOption.type == "slider" then
                			createSlider(newOption, option)
                		elseif newOption.type == "color" then
                			createColor(newOption, option, holder)
                		elseif newOption.type == "folder" then
                			newOption:init()
                		end
                	end
                end
                
                local function getFnctions(parent)
                	function parent:AddLabel(option)
                		option = typeof(option) == "table" and option or {}
                		option.text = tostring(option.text)
                		option.type = "label"
                		option.position = #self.options
                		table.insert(self.options, option)
                		
                		return option
                	end
                	
                	function parent:AddToggle(option)
                		option = typeof(option) == "table" and option or {}
                		option.text = tostring(option.text)
                		option.state = typeof(option.state) == "boolean" and option.state or false
                		option.callback = typeof(option.callback) == "function" and option.callback or function() end
                		option.type = "toggle"
                		option.position = #self.options
                		option.flag = option.flag or option.text
                		library.flags[option.flag] = option.state
                		table.insert(self.options, option)
                		
                		return option
                	end
                	
                	function parent:AddButton(option)
                		option = typeof(option) == "table" and option or {}
                		option.text = tostring(option.text)
                		option.callback = typeof(option.callback) == "function" and option.callback or function() end
                		option.type = "button"
                		option.position = #self.options
                		option.flag = option.flag or option.text
                		table.insert(self.options, option)
                		
                		return option
                	end
                	
                	function parent:AddBind(option)
                		option = typeof(option) == "table" and option or {}
                		option.text = tostring(option.text)
                		option.key = (option.key and option.key.Name) or option.key or "F"
                		option.hold = typeof(option.hold) == "boolean" and option.hold or false
                		option.callback = typeof(option.callback) == "function" and option.callback or function() end
                		option.type = "bind"
                		option.position = #self.options
                		option.flag = option.flag or option.text
                		library.flags[option.flag] = option.key
                		table.insert(self.options, option)
                		
                		return option
                	end
                	
                	function parent:AddSlider(option)
                		option = typeof(option) == "table" and option or {}
                		option.text = tostring(option.text)
                		option.min = typeof(option.min) == "number" and option.min or 0
                		option.max = typeof(option.max) == "number" and option.max or 0
                		option.dual = typeof(option.dual) == "boolean" and option.dual or false
                		option.value = math.clamp(typeof(option.value) == "number" and option.value or option.min, option.min, option.max)
                		option.value2 = typeof(option.value2) == "number" and option.value2 or option.max
                		option.callback = typeof(option.callback) == "function" and option.callback or function() end
                		option.float = typeof(option.value) == "number" and option.float or 1
                		option.type = "slider"
                		option.position = #self.options
                		option.flag = option.flag or option.text
                		library.flags[option.flag] = option.value
                		table.insert(self.options, option)
                		
                		return option
                	end
                	
                	function parent:AddList(option)
                		option = typeof(option) == "table" and option or {}
                		option.text = tostring(option.text)
                		option.values = typeof(option.values) == "table" and option.values or {}
                		option.value = tostring(option.value or option.values[1] or "")
                		option.callback = typeof(option.callback) == "function" and option.callback or function() end
                		option.open = false
                		option.type = "list"
                		option.position = #self.options
                		option.flag = option.flag or option.text
                		library.flags[option.flag] = option.value
                		table.insert(self.options, option)
                		
                		return option
                	end
                	
                	function parent:AddBox(option)
                		option = typeof(option) == "table" and option or {}
                		option.text = tostring(option.text)
                		option.value = tostring(option.value or "")
                		option.callback = typeof(option.callback) == "function" and option.callback or function() end
                		option.type = "box"
                		option.position = #self.options
                		option.flag = option.flag or option.text
                		library.flags[option.flag] = option.value
                		table.insert(self.options, option)
                		
                		return option
                	end
                	
                	function parent:AddColor(option)
                		option = typeof(option) == "table" and option or {}
                		option.text = tostring(option.text)
                		option.color = typeof(option.color) == "table" and Color3.new(tonumber(option.color[1]), tonumber(option.color[2]), tonumber(option.color[3])) or option.color or Color3.new(255, 255, 255)
                		option.callback = typeof(option.callback) == "function" and option.callback or function() end
                		option.open = false
                		option.type = "color"
                		option.position = #self.options
                		option.flag = option.flag or option.text
                		library.flags[option.flag] = option.color
                		table.insert(self.options, option)
                		
                		return option
                	end
                	
                	function parent:AddFolder(title)
                		local option = {}
                		option.title = tostring(title)
                		option.options = {}
                		option.open = false
                		option.type = "folder"
                		option.position = #self.options
                		table.insert(self.options, option)
                		
                		getFnctions(option)
                		
                		function option:init()
                			createOptionHolder(self.title, parent.content, self, true)
                			loadOptions(self, parent)
                		end
                		
                		return option
                	end
                end
                
                function library:CreateWindow(title)
                	local window = {title = tostring(title), options = {}, open = false, canInit = true, init = false, position = #self.windows}
                	getFnctions(window)
                	
                	table.insert(library.windows, window)
                	
                	return window
                end
                
                local UIToggle
                local UnlockMouse
                function library:Init()
                	
                	self.base = self.base or self:Create("ScreenGui")
                	if syn and syn.protect_gui then
                		syn.protect_gui(self.base)
                	elseif get_hidden_gui then
                		get_hidden_gui(self.base)
                	else
                		game:GetService"Players":Kick("Error: protect_gui function not found")
                		return
                	end
                	self.base.Parent = game:GetService"CoreGui"
                	self.base.Name = "RobloxCrashHandler"
                	self.cursor = self.cursor or self:Create("Frame", {
                		ZIndex = 100,
                		AnchorPoint = Vector2.new(0, 0),
                		Size = UDim2.new(0, 5, 0, 5),
                		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                		Parent = self.base
                	})
                	
                	for _, window in next, self.windows do
                		if window.canInit and not window.init then
                			window.init = true
                			createOptionHolder(window.title, self.base, window)
                			loadOptions(window)
                		end
                	end
                end
                
                function library:Close()
                	self.open = not self.open
                	self.cursor.Visible = self.open
                	if self.activePopup then
                		self.activePopup:Close()
                	end
                	for _, window in next, self.windows do
                		if window.main then
                			window.main.Visible = self.open
                		end
                	end
                end
                
                inputService.InputBegan:connect(function(input)
                	if input.UserInputType == Enum.UserInputType.MouseButton1 then
                		if library.activePopup then
                			if input.Position.X < library.activePopup.mainHolder.AbsolutePosition.X or input.Position.Y < library.activePopup.mainHolder.AbsolutePosition.Y then
                				library.activePopup:Close()
                			end
                		end
                		if library.activePopup then
                			if input.Position.X > library.activePopup.mainHolder.AbsolutePosition.X + library.activePopup.mainHolder.AbsoluteSize.X or input.Position.Y > library.activePopup.mainHolder.AbsolutePosition.Y + library.activePopup.mainHolder.AbsoluteSize.Y then
                				library.activePopup:Close()
                			end
                		end
                	end
                end)
                
                inputService.InputChanged:connect(function(input)
                	if input.UserInputType == Enum.UserInputType.MouseMovement and library.cursor then
                		local mouse = inputService:GetMouseLocation() + Vector2.new(0, -36)
                		library.cursor.Position = UDim2.new(0, mouse.X - 2, 0, mouse.Y - 2)
                	end
                	if input == dragInput and dragging then
                		update(input)
                	end
                end)
                
                return library
			]]
			local Library = loadstring(uilibrary)()
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
						--[[local newWhitelistedUsers = httpGet(whitelistedUrl):split("\n");
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
						end;]]
					end
				end
			end)
		else
			game.Players.LocalPlayer:Kick("Not in a Whitelisted Game.");
			wait(.5)
			punish()
		end
	end
end