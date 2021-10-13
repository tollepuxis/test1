return {
  Players=game:GetService('Players'),
  ReplicatedStorage=game:GetService('ReplicatedStorage'),
  ServerStorage=game:GetService('ServerStorage'),
  GetPlayer=function(self, name)
    local player = self.Players:FindFirstChild(name)
    if player ~= nil and player:IsA("Player") then
      return player
     else
      return nil
     end
  end
}
