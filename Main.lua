--FallDamage Script
game.Players.PlayerAdded:Connect(function(Plr)
	Plr.CharacterAdded:Connect(function(char)
		local MinimumDistanceToTakeDamage = 5
		local MaximumDistancebeforeInstantKill = 10
		local hum = char:WaitForChild("Humanoid")
		local hrp = char:WaitForChild("HumanoidRootPart")

		hum.StateChanged:Connect(function()
			local charvc = hrp.Velocity.Y
			charvc *= -1
			
			if charvc > MaximumDistancebeforeInstantKill then
				hum.Health = 0
			elseif charvc > MinimumDistanceToTakeDamage then
				hum.Health -= charvc / 4
			end
		end)
	end)
end)
