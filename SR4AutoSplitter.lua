Player = game:GetService("Players").LocalPlayer
character = Player.Character or Player.CharacterAdded:Wait()
Humanoid =  character:WaitForChild("Humanoid")
AutoSplitter = 0
Dead = 0
Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    if Humanoid.WalkSpeed == 90 and tostring(Player.Team) == "Level 1" and AutoSplitter == 0 then
        AutoSplitter = 1
        Input.KeyPress(0x61)
    elseif Humanoid.WalkSpeed == 25 and tostring(Player.Team) == "Level 1" and AutoSplitter == 1 then
        AutoSplitter = 0
        Input.KeyPress(0x63)
    end
end)
Humanoid.Died:Connect(function()
    Dead = 1
end)
Player:GetPropertyChangedSignal("Team"):Connect(function()
  if (tostring(Player.Team) == "Level 0" or tostring(Player.Team) == "Level 1") and AutoSplitter == 1 then  
    AutoSplitter = 0
    Input.KeyPress(0x63)
  elseif tostring(Player.Team) ~= "Bonus Level" and AutoSplitter == 1 then
    Input.KeyPress(0x61)
  elseif tostring(Player.Team) == "Bonus Level" and AutoSplitter == 1 then
    AutoSplitter = 0
    Input.KeyPress(0x63)
  end
end)
Player.CharacterAdded:Connect(function()
  if (tostring(Player.Team) == "Level 0" or tostring(Player.Team) == "Level 1") and AutoSplitter == 1 and Dead == 0 then  
    AutoSplitter = 0
    Input.KeyPress(0x63)
  end
  Dead = 0
end)
Player.CharacterAdded:Connect(function()
  Player = game:GetService("Players").LocalPlayer
  character = Player.Character or Player.CharacterAdded:Wait()
  Humanoid =  character:WaitForChild("Humanoid")
  Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
      if Humanoid.WalkSpeed == 90 and tostring(Player.Team) == "Level 1" and AutoSplitter == 0 then
          AutoSplitter = 1
          Input.KeyPress(0x61)
      elseif Humanoid.WalkSpeed == 25 and tostring(Player.Team) == "Level 1" and AutoSplitter == 1 then
          AutoSplitter = 0
          Input.KeyPress(0x63)
      end
  end)
  Player:GetPropertyChangedSignal("Team"):Connect(function()
    if (tostring(Player.Team) == "Level 0" or tostring(Player.Team) == "Level 1") and AutoSplitter == 1 then  
      AutoSplitter = 0
      Input.KeyPress(0x63)
    elseif tostring(Player.Team) ~= "Bonus Level" and AutoSplitter == 1 then
      Input.KeyPress(0x61)
    elseif tostring(Player.Team) == "Bonus Level" and AutoSplitter == 1 then
      AutoSplitter = 0
      Input.KeyPress(0x63)
    end
  end)
  Player.CharacterAdded:Connect(function()
    if (tostring(Player.Team) == "Level 0" or tostring(Player.Team) == "Level 1") and AutoSplitter == 1 and Dead == 0 then  
      AutoSplitter = 0
      Input.KeyPress(0x63)
    end
    Dead = 0
  end)
  Humanoid.Died:Connect(function()
    Dead = 1
  end)
end)
