--Scripted by tinarg

Colors = {"Bright red", "Bright blue", "Bright green", "Bright violet", "Bright orange", "Bright bluish green", "Pink", "Nougat", "Olive", "Dark green", "Black", "White"}

script.Parent.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])

SkinColors = {"Bright yellow", "Bright yellow", "Bright yellow", "Pastel brown"}

Color = BrickColor.new(SkinColors[math.random(1,#SkinColors)])

script.Parent.Parent.Head.BrickColor = Color
script.Parent.Parent:FindFirstChild("Left Arm").BrickColor = Color
script.Parent.Parent:FindFirstChild("Right Arm").BrickColor = Color

wait()

script:Destroy()