Citizen.CreateThread(function()
    while true do
        local pName = GetPlayerName(PlayerId())
        local pId = GetPlayerServerId(PlayerId())
        local NumberOfPlayers = 0
        for i = 0, 255 do
            if NetworkIsPlayerActive(i) then
                NumberOfPlayers = NumberOfPlayers + 1
            end
        end
        -- This is the Application ID (Replace this with you own)
        SetDiscordAppId(781387631456026664)
        SetRichPresence("ID: " ..pId.. " | " ..pName.. " |  Players: " ..NumberOfPlayers.."/10")
        
        -- Here you will have to put the image name for the "large" icon.
        -- You can create one by go to Rich Presence/Art Assets tab in your application and  click Add Image(s)
        -- The Paramater is your Image key that you uploaded (you can change it too once you upload)
        SetDiscordRichPresenceAsset('lost_mc')
        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('LOST MC')
        
        --small inage and text
        SetDiscordRichPresenceAssetSmall('lost_mc')

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('THE LOST MC')
   
        SetDiscordRichPresenceAction(0, "Connect", "fivem://connect/139.59.27.7:30120") --First Button on RPC, shows on side. Modify text and URL to your liking

        SetDiscordRichPresenceAction(1, "Website", "https://example.com") 
     
        --You can add more Natives Here vvv
        --SetDiscordRichPresenceAction(1, "Example", "https://example.com")
        -- Updates every 1 minute
        Citizen.Wait(2000)
    end
end)