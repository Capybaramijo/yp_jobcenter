ESX = exports['es_extended']:getSharedObject()

local mainMenu 
_menupool = NativeUI.CreatePool()

Citizen.CreateThread(function()
  while true do

  _menupool:ProcessMenus()

    if IsControlJustPressed(0, 38) then
       openMenu()
       end
    Citizen.Wait(1)
    end
end)

function openMenu()
    mainMenu = NativeUI.CreateMenu("Jobcenter", "...")
    for k,v in pairs(YP.table) do 
      local Item = NativeUI.CreateItem(v.name, v.dsc)

      mainMenu:AddItem(Item)

      Item.Activated = function(sender, index)
      TriggerServerEvent("yp:setJob", v)
      TriggerServerEvent("getName") 
    end
end

    
    _menupool:Add(mainMenu)
    _menupool:RefreshIndex()

   mainMenu:Visible(true)
end
