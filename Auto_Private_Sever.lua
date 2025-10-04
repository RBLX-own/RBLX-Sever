function showPrivateServerWindow()
    print("🎮 Showing Private Server Window...")
    
    serverFrame.Visible = true
    serverFrame.Size = UDim2.new(0, 10, 0, 10)
    serverFrame.Position = UDim2.new(0.5, -5, 0.5, -5)
    serverFrame.BackgroundTransparency = 0 -- FIXED
    
    serverFrame.ClipsDescendants = false -- FIXED
    
    shadow.Parent = mainGui -- FIXED
    shadow.ZIndex = 9       -- Put behind window
    
    serverFrame.ZIndex = 10
    serverTitleBar.ZIndex = 11
    contentFrame.ZIndex = 11
    serverButton.ZIndex = 12
    
    -- Rest of your animation code...
end