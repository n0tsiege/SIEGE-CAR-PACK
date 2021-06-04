SetConvarServerInfo('tags', 'NS_CAR_PACK')
Citizen.CreateThread( function()
    resourceName = "NS-CAR-PACK ("..GetCurrentResourceName()..")"
    
    function checkVersion(err,responseText, headers)
        curVersion = LoadResourceFile(GetCurrentResourceName(), "version") 
        if GetCurrentResourceName() ~= "NS-CAR-PACK" then
            print("-----------------------------------------------------")
            print("Please Dont Change the resource name to avoid errors.")
            print("-----------------------------------------------------")
        end
        if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
 print("\n^1###############################")
            print("\n"..resourceName.." is outdated, should be: "..responseText.."but is: "..curVersion.." ^1please update it from https://github.com/notsiege-development/NS-CAR-PACK")
            print("\n^1###############################")
        elseif tonumber(curVersion) > tonumber(responseText) then
            print("You somehow skipped a few versions of "..resourceName.." or the git went offline, if it's still online i advise you to update ( or downgrade? )")
        else
            print("\n"..resourceName.." is up to date, have fun!")
        end
    end
    
    PerformHttpRequest("https://raw.githubusercontent.com/notsiege-development/NS-CAR-PACK/main/version", checkVersion, "GET")
    end)