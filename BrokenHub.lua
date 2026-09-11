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


--==================================================
-- SHAYARI THEMES
--==================================================

local EmojiThemes = {
    love = {"💖","❤️","💕","🫶","💌","🌹"},
    sad = {"💔","😭","🥀","😢","🖤","🌧️"},
    cold = {"🥶","🧊","❄️","🖤","🌨️"},
    funny = {"🫢","😂","😭","💀","🤣","🎉"},
    hope = {"❤️‍🩹","✨","🌙","🫶","💫","🤍"}
}

local function themeForText(text)
    local t = string.lower(text)
    if t:find("smile") or t:find("khush") or t:find("muskur") then
        return EmojiThemes.love
    elseif t:find("cold") or t:find("ice") or t:find("broken vibes") then
        return EmojiThemes.cold
    elseif t:find("funny") or t:find("monk mode") then
        return EmojiThemes.funny
    elseif t:find("peace") or t:find("stronger") or t:find("aage") then
        return EmojiThemes.hope
    end
    return EmojiThemes.sad
end

local function decorateShayari(text)
    local theme = themeForText(text)
    return theme[math.random(1,#theme)].."  "..text.."  "..theme[math.random(1,#theme)]
end

local function copyToClipboard(text)
    if typeof(setclipboard) == "function" then
        return pcall(setclipboard, text)
    elseif typeof(toclipboard) == "function" then
        return pcall(toclipboard, text)
    end
    return false
end

local function sendToChat(text)
    local TextChatService = game:GetService("TextChatService")
    local channels = TextChatService:FindFirstChild("TextChannels")
    local general = channels and channels:FindFirstChild("RBXGeneral")

    if general then
        local ok = pcall(function()
            general:SendAsync(text)
        end)
        if ok then return true end
    end

    -- Legacy fallback for compatible Studio experiences.
    local events = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
    local say = events and events:FindFirstChild("SayMessageRequest")
    if say then
        return pcall(function()
            say:FireServer(text, "All")
        end)
    end

    return false
end

--==================================================
-- ROOT GUI
--==================================================

local gui = Instance.new("ScreenGui")
gui.Name = "MONK_BrokenLoveHub"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = PlayerGui

--==================================================
-- INTRO
--==================================================

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

--==================================================
-- SHOW GUI BUTTON
--==================================================

local show = Instance.new("TextButton")
show.AnchorPoint = Vector2.new(.5,.5)
show.Position = UDim2.fromScale(.5,.5)
show.Size = UDim2.fromOffset(230,68)
show.BackgroundColor3 = BLACK
show.Text = "🖤  SHOW GUI"
show.TextColor3 = WHITE
show.TextSize = 19
show.Font = Enum.Font.GothamBold
show.AutoButtonColor = false
show.Parent = gui

local showCorner = Instance.new("UICorner")
showCorner.CornerRadius = UDim.new(0,20)
showCorner.Parent = show

local showStroke = Instance.new("UIStroke")
showStroke.Color = RED
showStroke.Thickness = 2
showStroke.Parent = show

--==================================================
-- MAIN HEART-BROKEN WINDOW
--==================================================

local main = Instance.new("Frame")
main.AnchorPoint = Vector2.new(.5,.5)
main.Position = UDim2.fromScale(.5,.52)
main.Size = UDim2.fromOffset(460,590)
main.BackgroundColor3 = DARK
main.Visible = false
main.ClipsDescendants = true
main.Parent = gui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0,26)
mainCorner.Parent = main

local mainStroke = Instance.new("UIStroke")
mainStroke.Color = Color3.fromRGB(115,18,34)
mainStroke.Thickness = 2
mainStroke.Parent = main

local mainGradient = Instance.new("UIGradient")
mainGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(43,8,17)),
    ColorSequenceKeypoint.new(.45, Color3.fromRGB(10,10,13)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(32,6,14))
})
mainGradient.Rotation = 135
mainGradient.Parent = main

-- More falling emojis, clipped to the GUI.
local emojiLayer = Instance.new("Frame")
emojiLayer.Size = UDim2.fromScale(1,1)
emojiLayer.BackgroundTransparency = 1
emojiLayer.ClipsDescendants = true
emojiLayer.ZIndex = 1
emojiLayer.Parent = main

local fallingEmojis = {
    "💖","❤️","💕","💔","🥀","🫶","💌","😭","😢","😞",
    "🥶","🧊","❄️","🖤","🫢","😂","💀","🤣","🎉","✨",
    "🌹","❤️‍🩹","💫","🌙","🤍","🌧️","💘","💗","💞","😶",
    "😔","😿","⭐","🌸","🩷"
}

task.spawn(function()
    while gui.Parent do
        if main.Visible then
            local emoji = Instance.new("TextLabel")
            emoji.BackgroundTransparency = 1
            emoji.Size = UDim2.fromOffset(30,30)
            emoji.Position = UDim2.new(math.random(3,97)/100,0,-.08,0)
            emoji.Text = fallingEmojis[math.random(1,#fallingEmojis)]
            emoji.TextSize = math.random(16,28)
            emoji.TextTransparency = .08
            emoji.ZIndex = 1
            emoji.Parent = emojiLayer

            local fall = TweenService:Create(
                emoji,
                TweenInfo.new(math.random(30,58)/10,Enum.EasingStyle.Linear),
                {
                    Position = UDim2.new(
                        emoji.Position.X.Scale + math.random(-10,10)/100,
                        0,1.1,0
                    ),
                    Rotation = math.random(-45,45),
                    TextTransparency = 1
                }
            )

            fall:Play()
            fall.Completed:Connect(function()
                emoji:Destroy()
            end)
        end
        task.wait(.22)
    end
end)

--==================================================
-- HEADER
--==================================================

local header = Instance.new("TextLabel")
header.Position = UDim2.fromOffset(24,18)
header.Size = UDim2.new(1,-95,0,38)
header.BackgroundTransparency = 1
header.Text = "❤️‍🩹 MONK • HEARTBROKEN"
header.TextColor3 = WHITE
header.TextSize = 21
header.Font = Enum.Font.GothamBlack
header.TextXAlignment = Enum.TextXAlignment.Left
header.ZIndex = 5
header.Parent = main

local subtitle = Instance.new("TextLabel")
subtitle.Position = UDim2.fromOffset(26,51)
subtitle.Size = UDim2.new(1,-80,0,22)
subtitle.BackgroundTransparency = 1
subtitle.Text = "love • memories • broken vibes"
subtitle.TextColor3 = GRAY
subtitle.TextSize = 11
subtitle.Font = Enum.Font.GothamMedium
subtitle.TextXAlignment = Enum.TextXAlignment.Left
subtitle.ZIndex = 5
subtitle.Parent = main

local close = Instance.new("TextButton")
close.Position = UDim2.new(1,-57,0,17)
close.Size = UDim2.fromOffset(38,38)
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

--==================================================
-- SHAYARI CARD
--==================================================

local card = Instance.new("Frame")
card.Position = UDim2.fromOffset(24,88)
card.Size = UDim2.new(1,-48,0,295)
card.BackgroundColor3 = BLACK
card.BackgroundTransparency = .07
card.ZIndex = 4
card.Parent = main

local cardCorner = Instance.new("UICorner")
cardCorner.CornerRadius = UDim.new(0,22)
cardCorner.Parent = card

local cardStroke = Instance.new("UIStroke")
cardStroke.Color = Color3.fromRGB(105,18,32)
cardStroke.Thickness = 1.5
cardStroke.Parent = card

local brokenIcon = Instance.new("TextLabel")
brokenIcon.Position = UDim2.fromOffset(18,13)
brokenIcon.Size = UDim2.fromOffset(40,35)
brokenIcon.BackgroundTransparency = 1
brokenIcon.Text = "💔"
brokenIcon.TextSize = 25
brokenIcon.ZIndex = 5
brokenIcon.Parent = card

local cardTitle = Instance.new("TextLabel")
cardTitle.Position = UDim2.fromOffset(60,16)
cardTitle.Size = UDim2.new(1,-80,0,30)
cardTitle.BackgroundTransparency = 1
cardTitle.Text = "HEARTBROKEN SHAYARI"
cardTitle.TextColor3 = BRIGHT_RED
cardTitle.TextSize = 17
cardTitle.Font = Enum.Font.GothamBold
cardTitle.TextXAlignment = Enum.TextXAlignment.Left
cardTitle.ZIndex = 5
cardTitle.Parent = card

local shayari = Instance.new("TextLabel")
shayari.AnchorPoint = Vector2.new(.5,.5)
shayari.Position = UDim2.fromScale(.5,.55)
shayari.Size = UDim2.new(1,-42,0,165)
shayari.BackgroundTransparency = 1
shayari.TextWrapped = true
shayari.TextColor3 = WHITE
shayari.TextSize = 17
shayari.Font = Enum.Font.GothamMedium
shayari.ZIndex = 5
shayari.Parent = card

local counter = Instance.new("TextLabel")
counter.AnchorPoint = Vector2.new(.5,1)
counter.Position = UDim2.fromScale(.5,.96)
counter.Size = UDim2.fromOffset(90,20)
counter.BackgroundTransparency = 1
counter.TextColor3 = GRAY
counter.TextSize = 11
counter.Font = Enum.Font.GothamBold
counter.ZIndex = 5
counter.Parent = card

--==================================================
-- BUTTON FACTORY
--==================================================

local function makeButton(text,x,width)
    local b = Instance.new("TextButton")
    b.Position = UDim2.fromOffset(x,397)
    b.Size = UDim2.fromOffset(width,50)
    b.BackgroundColor3 = DARK_RED
    b.Text = text
    b.TextColor3 = WHITE
    b.TextSize = 12
    b.Font = Enum.Font.GothamBold
    b.AutoButtonColor = false
    b.ZIndex = 6
    b.Parent = main

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0,15)
    c.Parent = b

    local st = Instance.new("UIStroke")
    st.Color = RED
    st.Thickness = 1.5
    st.Parent = b

    b.MouseEnter:Connect(function()
        TweenService:Create(b,TweenInfo.new(.15),{
            BackgroundColor3=RED
        }):Play()
    end)

    b.MouseLeave:Connect(function()
        TweenService:Create(b,TweenInfo.new(.15),{
            BackgroundColor3=DARK_RED
        }):Play()
    end)

    return b
end

local copyButton = makeButton("📋 COPY SHAYARI",24,126)
local randomButton = makeButton("🎲 RANDOM SHAYARI",167,135)
local sendButton = makeButton("💬 SEND TO CHAT",319,117)

--==================================================
-- STATUS + PLAYER MESSAGE
--==================================================

local status = Instance.new("TextLabel")
status.Position = UDim2.fromOffset(25,457)
status.Size = UDim2.new(1,-50,0,25)
status.BackgroundTransparency = 1
status.Text = "❤️‍🩹 Choose your broken vibe"
status.TextColor3 = GRAY
status.TextSize = 12
status.Font = Enum.Font.GothamMedium
status.ZIndex = 5
status.Parent = main

local message = Instance.new("TextLabel")
message.Position = UDim2.fromOffset(25,488)
message.Size = UDim2.new(1,-50,0,42)
message.BackgroundTransparency = 1
message.TextWrapped = true
message.Text = "HEY "..string.upper(player.DisplayName)..
    " • NEVER DO LOVE WITH SOMEONE\nALWAYS BE ALONE -MONK"
message.TextColor3 = GRAY
message.TextSize = 11
message.Font = Enum.Font.GothamBold
message.ZIndex = 5
message.Parent = main

local credit = Instance.new("TextLabel")
credit.AnchorPoint = Vector2.new(.5,1)
credit.Position = UDim2.fromScale(.5,.985)
credit.Size = UDim2.new(1,-40,0,25)
credit.BackgroundTransparency = 1
credit.Text = "💀 MONK • BROKEN HEART EDITION"
credit.TextColor3 = BRIGHT_RED
credit.TextSize = 12
credit.Font = Enum.Font.GothamBlack
credit.ZIndex = 5
credit.Parent = main

--==================================================
-- SHAYARI CONTROLS
--==================================================

local current = 1
local currentRaw = Shayaris[1]

local function updateShayari(index)
    current = index
    currentRaw = Shayaris[current]
    shayari.TextTransparency = 1
    shayari.Text = decorateShayari(currentRaw)
    counter.Text = tostring(current).." / "..tostring(#Shayaris)

    TweenService:Create(
        shayari,
        TweenInfo.new(.35),
        {TextTransparency=0}
    ):Play()
end

updateShayari(1)

copyButton.MouseButton1Click:Connect(function()
    if copyToClipboard(currentRaw) then
        status.Text = "✅ Shayari copied!"
        status.TextColor3 = Color3.fromRGB(180,255,190)
    else
        status.Text = "📋 Clipboard isn't available in Studio"
        status.TextColor3 = GRAY
    end
end)

randomButton.MouseButton1Click:Connect(function()
    local nextIndex = math.random(1,#Shayaris)

    if #Shayaris > 1 then
        while nextIndex == current do
            nextIndex = math.random(1,#Shayaris)
        end
    end

    updateShayari(nextIndex)
    status.Text = "🎲 Random broken vibe selected!"
    status.TextColor3 = BRIGHT_RED
end)

sendButton.MouseButton1Click:Connect(function()
    if sendToChat(currentRaw) then
        status.Text = "💬 Shayari sent to chat!"
        status.TextColor3 = Color3.fromRGB(180,255,190)
    else
        status.Text = "⚠️ Chat sending isn't available here"
        status.TextColor3 = GRAY
    end
end)

--==================================================
-- SHOW / CLOSE
--==================================================

show.MouseButton1Click:Connect(function()
    show.Visible = false
    main.Visible = true
    main.Size = UDim2.fromOffset(370,470)
    main.BackgroundTransparency = 1

    TweenService:Create(
        main,
        TweenInfo.new(.55,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
        {
            Size=UDim2.fromOffset(460,590),
            BackgroundTransparency=0
        }
    ):Play()
end)

close.MouseButton1Click:Connect(function()
    local tween = TweenService:Create(
        main,
        TweenInfo.new(.35,Enum.EasingStyle.Back,Enum.EasingDirection.In),
        {
            Size=UDim2.fromOffset(370,470),
            BackgroundTransparency=1
        }
    )

    tween:Play()
    tween.Completed:Wait()

    main.Visible = false
    show.Visible = true
end)

print("🖤 MONK HEARTBROKEN HUB LOADED")
print("🥀 Shayaris: "..#Shayaris)



-- MONK UI controls enhancement
-- Adds: draggable-from-anywhere, 💔 minimize, and close/reopen behavior.
local function setupMonkWindowControls(rootGui, mainFrame, showButton)
    mainFrame.Active = true

    -- Drag from anywhere inside the main GUI.
    local UserInputService = game:GetService("UserInputService")
    local dragging = false
    local dragStart, startPos

    local function updateDrag(input)
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y
        )
    end

    mainFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = mainFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch) then
            updateDrag(input)
        end
    end)

    -- Close button.
    local closeButton = Instance.new("TextButton")
    closeButton.Name = "CloseButton"
    closeButton.Text = "✕"
    closeButton.Size = UDim2.fromOffset(42, 34)
    closeButton.Position = UDim2.new(1, -48, 0, 8)
    closeButton.BackgroundColor3 = Color3.fromRGB(75, 12, 20)
    closeButton.TextColor3 = Color3.new(1, 1, 1)
    closeButton.TextSize = 20
    closeButton.Font = Enum.Font.GothamBold
    closeButton.Parent = mainFrame
    Instance.new("UICorner", closeButton).CornerRadius = UDim.new(0, 10)

    -- Minimize button with broken-heart emoji.
    local minimizeButton = Instance.new("TextButton")
    minimizeButton.Name = "MinimizeButton"
    minimizeButton.Text = "💔"
    minimizeButton.Size = UDim2.fromOffset(42, 34)
    minimizeButton.Position = UDim2.new(1, -96, 0, 8)
    minimizeButton.BackgroundColor3 = Color3.fromRGB(48, 12, 18)
    minimizeButton.TextColor3 = Color3.new(1, 1, 1)
    minimizeButton.TextSize = 20
    minimizeButton.Font = Enum.Font.GothamBold
    minimizeButton.Parent = mainFrame
    Instance.new("UICorner", minimizeButton).CornerRadius = UDim.new(0, 10)

    local minimized = false
    local savedSize = mainFrame.Size
    local savedPosition = mainFrame.Position

    minimizeButton.MouseButton1Click:Connect(function()
        minimized = not minimized
        if minimized then
            savedSize = mainFrame.Size
            savedPosition = mainFrame.Position
            mainFrame.Size = UDim2.fromOffset(260, 52)
            minimizeButton.Text = "💔"
            showButton.Visible = true
        else
            mainFrame.Size = savedSize
            mainFrame.Position = savedPosition
            showButton.Visible = false
        end
    end)

    closeButton.MouseButton1Click:Connect(function()
        mainFrame.Visible = false
        showButton.Visible = true
    end)

    showButton.MouseButton1Click:Connect(function()
        mainFrame.Visible = true
        showButton.Visible = false
        minimized = false
        mainFrame.Size = savedSize
        mainFrame.Position = savedPosition
    end)
end

-- Call this after creating the GUI:
-- setupMonkWindowControls(ScreenGui, MainFrame, ShowButton)


-- BROKEN 💔 MONK launcher + heart transition enhancement
ShowButton.BackgroundTransparency = 1
ShowButton.BorderSizePixel = 0
ShowButton.Text = "BROKEN 💔 MONK"
ShowButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ShowButton.TextSize = 38
ShowButton.Font = Enum.Font.GothamBlack
ShowButton.Size = UDim2.fromOffset(330, 110)
ShowButton.AnchorPoint = Vector2.new(0.5, 0.5)
ShowButton.Position = UDim2.fromScale(0.5, 0.5)
ShowButton.ZIndex = 100

local HeartTransition = Instance.new("Frame")
HeartTransition.Size = UDim2.fromScale(1, 1)
HeartTransition.BackgroundColor3 = Color3.fromRGB(7, 4, 8)
HeartTransition.BackgroundTransparency = 1
HeartTransition.Visible = false
HeartTransition.ZIndex = 500
HeartTransition.Parent = ScreenGui

local HeartText = Instance.new("TextLabel")
HeartText.AnchorPoint = Vector2.new(0.5, 0.5)
HeartText.Position = UDim2.fromScale(0.5, 0.5)
HeartText.Size = UDim2.fromOffset(180, 180)
HeartText.BackgroundTransparency = 1
HeartText.Text = "💔"
HeartText.TextScaled = true
HeartText.TextColor3 = Color3.new(1,1,1)
HeartText.TextTransparency = 1
HeartText.ZIndex = 501
HeartText.Parent = HeartTransition

ShowButton.MouseButton1Click:Connect(function()
    ShowButton.Visible = false
    MainFrame.Visible = true
    HeartTransition.Visible = true
    TweenService:Create(HeartTransition, TweenInfo.new(0.18), {BackgroundTransparency = 0.08}):Play()
    local t = TweenService:Create(HeartText, TweenInfo.new(0.3, Enum.EasingStyle.Back), {
        TextTransparency = 0, Size = UDim2.fromOffset(210,210)
    })
    t:Play()
    t.Completed:Wait()
    task.wait(0.25)
    local out = TweenService:Create(HeartText, TweenInfo.new(0.25), {
        TextTransparency = 1, Size = UDim2.fromOffset(300,300)
    })
    local bg = TweenService:Create(HeartTransition, TweenInfo.new(0.3), {BackgroundTransparency = 1})
    out:Play(); bg:Play()
    bg.Completed:Wait()
    HeartTransition.Visible = false
end)
