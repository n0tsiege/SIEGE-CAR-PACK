Citizen.CreateThread( function()
    resourceName = "SIEGE-CAR-PACK ("..GetCurrentResourceName()..")"
    
    function checkVersion(err,responseText, headers)
        curVersion = LoadResourceFile(GetCurrentResourceName(), "version") 
    
        if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
 print("\n^1###############################")
            print("\n"..resourceName.." is outdated, should be: "..responseText.."but is: "..curVersion.." ^1please update it from https://github.com/notsiege-development/SIEGE-CAR-PACK")
            print("\n^1###############################")
        elseif tonumber(curVersion) > tonumber(responseText) then
            print("You somehow skipped a few versions of "..resourceName.." or the git went offline, if it's still online i advise you to update ( or downgrade? )")
        else
            print("\n"..resourceName.." is up to date, have fun!")
        end
    end
    
    PerformHttpRequest("https://raw.githubusercontent.com/notsiege-development/SIEGE-CAR-PACK/main/version", checkVersion, "GET")
    end)