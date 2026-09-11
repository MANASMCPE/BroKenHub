--// 🖤 MONK BROKEN LOVE HUB ❤️‍🩹
--// Roblox Studio LocalScript
--// Put inside StarterPlayer > StarterPlayerScripts

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local old = PlayerGui:FindFirstChild("MONK_BrokenLoveHub")
if old then old:Destroy() end

local BLACK = Color3.fromRGB(7, 7, 9)
local DARK = Color3.fromRGB(17, 10, 14)
local DARK_RED = Color3.fromRGB(45, 8, 15)
local RED = Color3.fromRGB(210, 25, 45)
local BRIGHT_RED = Color3.fromRGB(255, 45, 65)
local WHITE = Color3.fromRGB(245, 245, 248)
local GRAY = Color3.fromRGB(165, 160, 165)

local Shayaris = {
"Jo apna tha, wahi sabse door ho gaya... 🥀",
"Dil diya tha sambhalne ke liye,\nusne tod diya bhoolne ke liye.",
"Muskurana seekh liya,\npar khush rehna abhi baaki hai.",
"Ek waqt tha jab tera naam sukoon tha,\nab wahi naam ek yaad hai.",
"Yaadein reh gayi,\ninsaan chala gaya.",
"Kuch rishte khatam nahi hote,\nbas baatein band ho jaati hain.",
"Jise khona nahi chaha,\nusi ko khud se door karna pada.",
"Humne mohabbat sach samjhi,\nshayad woh sirf ek waqt tha.",
"Ab kisi se umeed nahi,\nbas khud se ek vaada hai.",
"Dil ki baat dil mein rakhna bhi\nek hunar ban gaya.",
"Woh badla nahi,\nbas humein samajh aa gaya.",
"Jo kal tak apna tha,\naaj sirf ek yaad hai.",
"Har smile ke peeche\nek kahani hoti hai.",
"Hum chup kya hue,\nlogon ne samjha farq nahi padta.",
"Adhoori kahaniyan hi aksar\nsabse zyada yaad rehti hain.",
"Uski yaadon ka kya karein,\ndil se delete nahi hoti.",
"Mohabbat mili nahi,\nmagar sabak bahut mila.",
"Jis dil ko sabse zyada sambhala,\nwahi sabse zyada toot gaya.",
"Ab dil nahi lagta,\nbas waqt guzar jaata hai.",
"Kuch log zindagi mein aate hain,\nsirf yaad banne ke liye.",
"Khamoshi kabhi kabhi\nsabse bada jawab hoti hai.",
"Waqt badla,\nlog badle,\nbas kuch yaadein nahi badli.",
"Humne use khoya nahi,\nbas uska hona khatam ho gaya.",
"Har baar dil ko samjhaya,\nhar baar dil ne mana kar diya.",
"Jis se sukoon milta tha,\nusi se dard mil gaya.",
"Ab kisi ke jaane ka\ndarr nahi lagta.",
"Rishta tha, isliye dard hua;\nwarna ajnabi kya dard denge.",
"Kaash kuch yaadein bhi\nmute ho sakti.",
"Dil ke kareeb log hi kabhi kabhi\nsabse door chale jaate hain.",
"Humne sabko samjha,\nhumein samajhne wala koi nahi mila.",
"Ek khwab tha,\njo aankh khulte hi toot gaya.",
"Ab mohabbat se zyada\nkhamoshi pasand hai.",
"Jinhe hum apna samajhte hain,\nwoh aksar sabak ban jaate hain.",
"Muskurahat wahi hai,\nbas wajah badal gayi.",
"Kuch dard waqt ke saath kam nahi,\nbas aadat ban jaate hain.",
"Uski kami nahi,\nuski yaad pareshaan karti hai.",
"Hum door hue toh pata chala,\npaas rehna kitna khoobsurat tha.",
"Jo kehna tha,\nwaqt ne keh diya.",
"Ab dil kisi se judne se pehle\nsau baar sochta hai.",
"Ek waqt tha intezaar tha,\nab sirf sukoon chahiye.",
"Har kisi ko khush rakhne ki koshish mein\nkhud ko bhool gaye.",
"Jo cheez dil se chahi thi,\nwahi naseeb mein nahi thi.",
"Yaadon ka bhi ajeeb rishta hai,\nbina bulaye aa jaati hain.",
"Humne rishta bachaya,\nsaamne wale ne bas waqt guzaara.",
"Kuch log tasveeron mein achhe lagte hain,\nzindagi mein nahi.",
"Ab kisi ke promises par\nyakeen nahi hota.",
"Jitna kareeb aaye,\nutna hi door kar gaye.",
"Ek khamosh dil hai,\njo bahut kuch kehna chahta hai.",
"Jo chala gaya uske peeche nahi,\njo seekh mili uske saath hain.",
"Har goodbye ke peeche\nek unsaid story hoti hai.",
"Hum badle nahi,\nbas ab har kisi ko apna nahi samajhte.",
"Dil tootne ke baad insaan kamzor nahi,\nsamajhdaar ho jaata hai.",
"Ab yaadon se dosti hai,\naur umeedon se doori.",
"Jis din umeed chhodi,\nus din sukoon mila.",
"Sab kuch tha,\nbas woh nahi tha.",
"Ek chapter khatam hua,\nkahani nahi.",
"Jo milkar bhi apna na ho saka,\nusse khona kya.",
"Ab dil ko kisi jawab ki\nzarurat nahi.",
"Har baar laga sab theek hoga,\npar waqt ne kuch aur likha tha.",
"Kuch log dil mein rehte hain,\nzindagi mein nahi.",
"Usne kaha waqt badal jayega,\nwaqt badla par kahani nahi.",
"Humne sachcha dil diya,\nbadle mein khamoshi mili.",
"Kisi ko bhoolna aasaan nahi,\nbas uske bina jeena seekhna padta hai.",
"Jo yaad ban gaye,\nunse shikayat kaisi.",
"Har mulaqat ka ek anjaam hota hai,\nhamari mulaqat ka bhi tha.",
"Ab sawaal kam hain,\nkhamoshi zyada hai.",
"Dil ne kaha ruk ja,\ndimaag ne kaha aage badh.",
"Kuch baatein kehne se nahi,\nsirf mehsoos karne se samajh aati hain.",
"Jise apna samjha,\nusne humein option samjha.",
"Ab kisi ke aane ki khushi nahi,\njaane ka darr bhi nahi.",
"Humne dil se nibhaya,\nusne waqt se nibhaya.",
"Zindagi mein sab mil jaata hai,\nbas kuch log dobara nahi milte.",
"Yaad toh aati hai,\npar ab awaaz nahi dete.",
"Jo toot gaya,\nuse har baar jodna zaroori nahi.",
"Khud ko sambhalna seekh liya,\nab kisi ke sahare ki zarurat nahi.",
"Kal tak jiski fikr thi,\naaj uski khairiyat bhi bas dua hai.",
"Har kahani mein villain nahi hota,\nkabhi kabhi bas waqt galat hota hai.",
"Hum dono sahi the,\nbas ek doosre ke liye nahi.",
"Jo hona tha ho gaya,\nab dil ko aage badhna hai.",
"Broken heart,\nstronger mind. 🖤",
"Some memories stay,\neven when people leave.",
"Not every goodbye needs an explanation.",
"Sometimes silence is the final answer.",
"Love taught a lesson,\nlife kept the memory.",
"Some chapters hurt,\nbut they still have to end.",
"Heart changed,\nstandards changed,\nlife moved on.",
"Once trusted,\nnow just remembered.",
"Old memories,\nnew mindset. 🥀",
"MONK MODE:\nNo expectations. No drama. 💀",
"Broken vibes,\nstronger nights. 🖤",
"Love was a chapter,\npeace became the story.",
"Smile outside,\nmemories inside.",
"Sometimes moving on\nis the best reply.",
"One heart,\nmany lessons. ❤️‍🩹",
"Trust takes years,\nbut one moment can change everything.",
"Past is a lesson,\nnot a destination.",
"Some people leave,\nbut their lessons stay.",
"Peace feels better\nthan forced love.",
"New chapter.\nSame soul.\nStronger mindset. 🖤",
}

local gui = Instance.new("ScreenGui")
gui.Name = "MONK_BrokenLoveHub"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = PlayerGui

local intro = Instance.new("Frame")
intro.Size = UDim2.fromScale(1,1)
intro.BackgroundColor3 = BLACK
intro.ZIndex = 100
intro.Parent = gui

local introGradient = Instance.new("UIGradient")
introGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, BLACK),
	ColorSequenceKeypoint.new(.5, Color3.fromRGB(45,7,14)),
	ColorSequenceKeypoint.new(1, BLACK)
})
introGradient.Rotation = 45
introGradient.Parent = intro

local introTitle = Instance.new("TextLabel")
introTitle.AnchorPoint = Vector2.new(.5,.5)
introTitle.Position = UDim2.fromScale(.5,.43)
introTitle.Size = UDim2.fromScale(.85,.16)
introTitle.BackgroundTransparency = 1
introTitle.Text = "BROKEN"
introTitle.TextColor3 = BRIGHT_RED
introTitle.TextScaled = true
introTitle.Font = Enum.Font.GothamBlack
introTitle.ZIndex = 101
introTitle.Parent = intro

local introSub = Instance.new("TextLabel")
introSub.AnchorPoint = Vector2.new(.5,.5)
introSub.Position = UDim2.fromScale(.5,.57)
introSub.Size = UDim2.fromScale(.8,.06)
introSub.BackgroundTransparency = 1
introSub.Text = "❤️‍🩹 LOVE • PAIN • MEMORIES"
introSub.TextColor3 = GRAY
introSub.TextScaled = true
introSub.Font = Enum.Font.GothamMedium
introSub.ZIndex = 101
introSub.Parent = intro

task.wait(2)

for _,obj in ipairs(intro:GetDescendants()) do
	if obj:IsA("TextLabel") then
		TweenService:Create(obj,TweenInfo.new(.5),{TextTransparency=1}):Play()
	end
end
TweenService:Create(intro,TweenInfo.new(.5),{BackgroundTransparency=1}):Play()
task.wait(.55)
intro:Destroy()

local show = Instance.new("TextButton")
show.AnchorPoint = Vector2.new(.5,.5)
show.Position = UDim2.fromScale(.5,.5)
show.Size = UDim2.fromOffset(220,65)
show.BackgroundColor3 = BLACK
show.Text = "🖤  SHOW GUI"
show.TextColor3 = WHITE
show.TextSize = 19
show.Font = Enum.Font.GothamBold
show.AutoButtonColor = false
show.Parent = gui

local showCorner = Instance.new("UICorner")
showCorner.CornerRadius = UDim.new(0,18)
showCorner.Parent = show

local showStroke = Instance.new("UIStroke")
showStroke.Color = RED
showStroke.Thickness = 2
showStroke.Parent = show

local main = Instance.new("Frame")
main.AnchorPoint = Vector2.new(.5,.5)
main.Position = UDim2.fromScale(.5,.52)
main.Size = UDim2.fromOffset(440,530)
main.BackgroundColor3 = DARK
main.Visible = false
main.ClipsDescendants = true
main.Parent = gui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0,24)
mainCorner.Parent = main

local mainStroke = Instance.new("UIStroke")
mainStroke.Color = Color3.fromRGB(105,18,32)
mainStroke.Thickness = 2
mainStroke.Parent = main

local mainGradient = Instance.new("UIGradient")
mainGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(40,9,16)),
	ColorSequenceKeypoint.new(.5, Color3.fromRGB(12,11,14)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(30,7,13))
})
mainGradient.Rotation = 135
mainGradient.Parent = main

local emojiLayer = Instance.new("Frame")
emojiLayer.Size = UDim2.fromScale(1,1)
emojiLayer.BackgroundTransparency = 1
emojiLayer.ClipsDescendants = true
emojiLayer.ZIndex = 1
emojiLayer.Parent = main

local fallingEmojis = {"💖","🎉","🥶","😭","🫢"}

task.spawn(function()
	while gui.Parent do
		if main.Visible then
			local emoji = Instance.new("TextLabel")
			emoji.BackgroundTransparency = 1
			emoji.Size = UDim2.fromOffset(30,30)
			emoji.Position = UDim2.new(math.random(5,95)/100,0,-.08,0)
			emoji.Text = fallingEmojis[math.random(1,#fallingEmojis)]
			emoji.TextSize = math.random(17,26)
			emoji.TextTransparency = .1
			emoji.ZIndex = 1
			emoji.Parent = emojiLayer

			local tween = TweenService:Create(
				emoji,
				TweenInfo.new(math.random(35,60)/10,Enum.EasingStyle.Linear),
				{
					Position = UDim2.new(
						emoji.Position.X.Scale + math.random(-8,8)/100,
						0,1.1,0
					),
					Rotation = math.random(-35,35),
					TextTransparency = 1
				}
			)
			tween:Play()
			tween.Completed:Connect(function() emoji:Destroy() end)
		end
		task.wait(.35)
	end
end)

local header = Instance.new("TextLabel")
header.Position = UDim2.fromOffset(25,18)
header.Size = UDim2.new(1,-80,0,38)
header.BackgroundTransparency = 1
header.Text = "❤️‍🩹 MONK BROKEN LOVE"
header.TextColor3 = WHITE
header.TextSize = 22
header.Font = Enum.Font.GothamBlack
header.TextXAlignment = Enum.TextXAlignment.Left
header.ZIndex = 5
header.Parent = main

local close = Instance.new("TextButton")
close.Position = UDim2.new(1,-55,0,16)
close.Size = UDim2.fromOffset(36,36)
close.BackgroundColor3 = DARK_RED
close.Text = "×"
close.TextColor3 = WHITE
close.TextSize = 25
close.Font = Enum.Font.GothamBold
close.AutoButtonColor = false
close.ZIndex = 6
close.Parent = main

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1,0)
closeCorner.Parent = close

local card = Instance.new("Frame")
card.Position = UDim2.fromOffset(22,75)
card.Size = UDim2.new(1,-44,0,285)
card.BackgroundColor3 = BLACK
card.BackgroundTransparency = .12
card.ZIndex = 4
card.Parent = main

local cardCorner = Instance.new("UICorner")
cardCorner.CornerRadius = UDim.new(0,18)
cardCorner.Parent = card

local cardStroke = Instance.new("UIStroke")
cardStroke.Color = Color3.fromRGB(85,18,30)
cardStroke.Parent = card

local cardTitle = Instance.new("TextLabel")
cardTitle.Position = UDim2.fromOffset(20,16)
cardTitle.Size = UDim2.new(1,-40,0,30)
cardTitle.BackgroundTransparency = 1
cardTitle.Text = "🥀 BROKEN SHAYARI"
cardTitle.TextColor3 = BRIGHT_RED
cardTitle.TextSize = 18
cardTitle.Font = Enum.Font.GothamBold
cardTitle.TextXAlignment = Enum.TextXAlignment.Left
cardTitle.ZIndex = 5
cardTitle.Parent = card

local shayari = Instance.new("TextLabel")
shayari.AnchorPoint = Vector2.new(.5,.5)
shayari.Position = UDim2.fromScale(.5,.54)
shayari.Size = UDim2.new(1,-40,0,155)
shayari.BackgroundTransparency = 1
shayari.TextWrapped = true
shayari.TextColor3 = WHITE
shayari.TextSize = 18
shayari.Font = Enum.Font.GothamMedium
shayari.ZIndex = 5
shayari.Parent = card

local counter = Instance.new("TextLabel")
counter.Position = UDim2.new(1,-90,1,-35)
counter.Size = UDim2.fromOffset(70,22)
counter.BackgroundTransparency = 1
counter.TextColor3 = GRAY
counter.TextSize = 12
counter.Font = Enum.Font.GothamBold
counter.ZIndex = 5
counter.Parent = card

local nextButton = Instance.new("TextButton")
nextButton.Position = UDim2.fromOffset(22,375)
nextButton.Size = UDim2.new(1,-44,0,50)
nextButton.BackgroundColor3 = RED
nextButton.Text = "🥀  NEXT SHAYARI"
nextButton.TextColor3 = WHITE
nextButton.TextSize = 16
nextButton.Font = Enum.Font.GothamBold
nextButton.AutoButtonColor = false
nextButton.ZIndex = 5
nextButton.Parent = main

local nextCorner = Instance.new("UICorner")
nextCorner.CornerRadius = UDim.new(0,14)
nextCorner.Parent = nextButton

local message = Instance.new("TextLabel")
message.Position = UDim2.fromOffset(25,438)
message.Size = UDim2.new(1,-50,0,42)
message.BackgroundTransparency = 1
message.TextWrapped = true
message.Text = "HEY "..string.upper(player.DisplayName)..
	"  •  NEVER DO LOVE WITH SOMEONE\nALWAYS BE ALONE -MONK"
message.TextColor3 = GRAY
message.TextSize = 12
message.Font = Enum.Font.GothamBold
message.ZIndex = 5
message.Parent = main

local credit = Instance.new("TextLabel")
credit.AnchorPoint = Vector2.new(.5,1)
credit.Position = UDim2.fromScale(.5,.985)
credit.Size = UDim2.new(1,-40,0,25)
credit.BackgroundTransparency = 1
credit.Text = "💀 CREDIT: MONK"
credit.TextColor3 = BRIGHT_RED
credit.TextSize = 12
credit.Font = Enum.Font.GothamBlack
credit.ZIndex = 5
credit.Parent = main

local current = 1

local function updateShayari()
	shayari.TextTransparency = 1
	shayari.Text = Shayaris[current]
	counter.Text = tostring(current).." / "..tostring(#Shayaris)
	TweenService:Create(shayari,TweenInfo.new(.35),{TextTransparency=0}):Play()
end

updateShayari()

nextButton.MouseButton1Click:Connect(function()
	current += 1
	if current > #Shayaris then current = 1 end
	updateShayari()
end)

show.MouseButton1Click:Connect(function()
	show.Visible = false
	main.Visible = true
	main.Size = UDim2.fromOffset(350,430)
	main.BackgroundTransparency = 1

	TweenService:Create(
		main,
		TweenInfo.new(.55,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
		{
			Size = UDim2.fromOffset(440,530),
			BackgroundTransparency = 0
		}
	):Play()
end)

close.MouseButton1Click:Connect(function()
	local tween = TweenService:Create(
		main,
		TweenInfo.new(.35,Enum.EasingStyle.Back,Enum.EasingDirection.In),
		{
			Size = UDim2.fromOffset(350,430),
			BackgroundTransparency = 1
		}
	)
	tween:Play()
	tween.Completed:Wait()
	main.Visible = false
	show.Visible = true
end)

show.MouseEnter:Connect(function()
	TweenService:Create(show,TweenInfo.new(.2),{
		Size=UDim2.fromOffset(230,69)
	}):Play()
end)

show.MouseLeave:Connect(function()
	TweenService:Create(show,TweenInfo.new(.2),{
		Size=UDim2.fromOffset(220,65)
	}):Play()
end)

nextButton.MouseEnter:Connect(function()
	TweenService:Create(nextButton,TweenInfo.new(.15),{
		BackgroundColor3=BRIGHT_RED
	}):Play()
end)

nextButton.MouseLeave:Connect(function()
	TweenService:Create(nextButton,TweenInfo.new(.15),{
		BackgroundColor3=RED
	}):Play()
end)

close.MouseEnter:Connect(function()
	TweenService:Create(close,TweenInfo.new(.15),{
		BackgroundColor3=RED
	}):Play()
end)

close.MouseLeave:Connect(function()
	TweenService:Create(close,TweenInfo.new(.15),{
		BackgroundColor3=DARK_RED
	}):Play()
end)

print("🖤 MONK BROKEN LOVE HUB LOADED")
print("🥀 Shayaris: "..#Shayaris)
