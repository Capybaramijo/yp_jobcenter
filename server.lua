ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent("yp:setJob")
AddEventHandler("yp:setJob", function(Joblist)
   local xPlayer = ESX.GetPlayerFromId(source)
  
   if xPlayer ~= nil then 
      if xPlayer.getJob().name == Joblist.job then
      TriggerClientEvent("esx:showNotification", xPlayer.source,  "Du hast schon denn job: ".. Joblist.job .."")
       else
      xPlayer.setJob(Joblist.job, Joblist.jobgrade) 
      TriggerClientEvent("esx:showNotification", xPlayer.source, "Hey der Job " .. Joblist.job .. " wurde dir Erfolgreich gesetzt")
      end
   end
end)
