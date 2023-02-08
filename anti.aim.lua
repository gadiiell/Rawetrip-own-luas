-- Credits プレイヤー-2#2792

local combo = ui.add_combobox("Anti-Aim Builder", { "Rage-Bot","Anti-Aim", "Misc","CFG" })
local cbDesync = ui.add_checkbox("Fast Desync")
local sliderDesyncMin = ui.add_sliderint("MinDesyncValue",1,60)
local sliderDesyncMax = ui.add_sliderint("MaxDesyncValue",1,60)
local cbYaw = ui.add_checkbox("Fast Yaw")
local sliderYawMin = ui.add_sliderint("MinYawValue",-180,180)
local sliderYawMax = ui.add_sliderint("MaxYawValue",-180,180)
local cblag = ui.add_checkbox("Fast Lag")
local sliderLagMin = ui.add_sliderint("MinLagValue", 0,17)
local sliderLagMax = ui.add_sliderint("MaxLagValue", 0,17)
local cblean = ui.add_checkbox("Fast Lean")
local sliderLeanMin = ui.add_sliderint("MinLeanValue", 0,100)
local sliderLeanMax = ui.add_sliderint("MaxLeanValue", 0,100)
local cbjitter = ui.add_checkbox("Fast Jitter")
local sliderJitterMin = ui.add_sliderint("MinJitterValue", 1,180)
local sliderJitterMax = ui.add_sliderint("MaxJitterValue", 1,180)
local oYaw = ui.find_menu_int("Antiaim.yaw_offset")
local oDesync = ui.find_menu_int("0Antiaim.desync_range")
local SpamOnDT = ui.add_checkbox("Spamer on DT")
local oDesync = ui.find_menu_int("0Antiaim.desync_range"):get()
local oYaw = ui.find_menu_int("Antiaim.yaw_offset"):get()
local LoadUserAntiAims = ui.add_checkbox("Load your  anti-aim settings")
local SaveUserAntiAims = ui.add_checkbox("Save your  anti-aim settings")
local cbLFucker = ui.add_checkbox("Legs Fucker")
local cbAuto = ui.add_checkbox("Alternative Damage Auto-Sniper")
local sliderAutoMin = ui.add_sliderint("MinDamageAutoValue",1,120)
local sliderAutoMax = ui.add_sliderint("MaxDamageAutoValue",1,120)
local cbScout = ui.add_checkbox("Alternative Damage Scout")
local sliderScoutMin = ui.add_sliderint("MinDamageScoutValue",1,120)
local sliderScoutMax = ui.add_sliderint("MaxDamageScoutValue",1,120)


SaveUserAntiAims:set_visible(false)
LoadUserAntiAims:set_visible(false)
sliderDesyncMin:set_visible(false)
sliderDesyncMax:set_visible(false)
sliderYawMin:set_visible(false)
sliderYawMax:set_visible(false)
sliderLagMin:set_visible(false)
sliderLagMax:set_visible(false)
sliderLeanMin:set_visible(false)
sliderLeanMax:set_visible(false)
sliderJitterMin:set_visible(false)
sliderJitterMax:set_visible(false)
cbDesync:set_visible(false)
cbYaw:set_visible(false)
cblag:set_visible(false)
cblean:set_visible(false)
cbjitter:set_visible(false)
SpamOnDT:set_visible(false)

cheat.push_callback("on_paint", function()
--ComboBox Visible Settings
     --Off
     if combo:get() ==  0 then

      SaveUserAntiAims:set_visible(false)
		LoadUserAntiAims:set_visible(false)
		sliderDesyncMin:set_visible(false)
		sliderDesyncMax:set_visible(false)
		sliderYawMin:set_visible(false)
		sliderYawMax:set_visible(false)
      sliderLagMin:set_visible(false)
		sliderLagMax:set_visible(false)
      sliderLeanMin:set_visible(false)
		sliderLeanMax:set_visible(false)
      sliderJitterMin:set_visible(false)
		sliderJitterMax:set_visible(false)
		cbDesync:set_visible(false)
		cbYaw:set_visible(false)
      cblag:set_visible(false)
      cblean:set_visible(false)
      cbjitter:set_visible(false)
		SpamOnDT:set_visible(false)
      cbLFucker:set_visible(false)
      cbAuto:set_visible(true)
      sliderAutoMin:set_visible(true)
      sliderAutoMax:set_visible(true)
      cbScout:set_visible(true)
      sliderScoutMin:set_visible(true)
      sliderScoutMax:set_visible(true)
   end
     --Spamer
     if combo:get() ==  1 then
        SaveUserAntiAims:set_visible(false)
		LoadUserAntiAims:set_visible(false)
        sliderDesyncMin:set_visible(true)
   		sliderDesyncMax:set_visible(true)
  		sliderYawMin:set_visible(true)
   		sliderYawMax:set_visible(true)
         sliderLagMin:set_visible(true)
   		sliderLagMax:set_visible(true)
         sliderLeanMin:set_visible(true)
   		sliderLeanMax:set_visible(true)
         sliderJitterMin:set_visible(true)
   		sliderJitterMax:set_visible(true)
     	cbDesync:set_visible(true)
   		cbYaw:set_visible(true)
         cblag:set_visible(true)
         cblean:set_visible(true)
         cbjitter:set_visible(true)
		SpamOnDT:set_visible(false)
      cbLFucker:set_visible(false)
      cbAuto:set_visible(false)
      sliderAutoMin:set_visible(false)
      sliderAutoMax:set_visible(false)
      cbScout:set_visible(false)
      sliderScoutMin:set_visible(false)
      sliderScoutMax:set_visible(false)
   end
     --Misc
     if combo:get() ==  2 then
		SaveUserAntiAims:set_visible(false)
		LoadUserAntiAims:set_visible(false)
		sliderDesyncMin:set_visible(false)
		sliderDesyncMax:set_visible(false)
		sliderYawMin:set_visible(false)
		sliderYawMax:set_visible(false)
      sliderLagMin:set_visible(false)
		sliderLagMax:set_visible(false)
      sliderLeanMin:set_visible(false)
		sliderLeanMax:set_visible(false)
      sliderJitterMin:set_visible(false)
		sliderJitterMax:set_visible(false)
		cbDesync:set_visible(false)
		cbYaw:set_visible(false)
      cblag:set_visible(false)
      cblean:set_visible(false)
      cbjitter:set_visible(false)
		SpamOnDT:set_visible(true)
      cbLFucker:set_visible(true)
      cbAuto:set_visible(false)
      sliderAutoMin:set_visible(false)
      sliderAutoMax:set_visible(false)
      cbScout:set_visible(false)
      sliderScoutMin:set_visible(false)
      sliderScoutMax:set_visible(false)
   end
     --CFG
     if combo:get() ==  3 then
        SaveUserAntiAims:set_visible(true)
		LoadUserAntiAims:set_visible(true)
		sliderDesyncMin:set_visible(false)
		sliderDesyncMax:set_visible(false)
		sliderYawMin:set_visible(false)
		sliderYawMax:set_visible(false)
      sliderLagMin:set_visible(false)
		sliderLagMax:set_visible(false)
      sliderLeanMin:set_visible(false)
		sliderLeanMax:set_visible(false)
      sliderJitterMin:set_visible(false)
		sliderJitterMax:set_visible(false)
		cbDesync:set_visible(false)
		cbYaw:set_visible(false)
      cblag:set_visible(false)
      cblean:set_visible(false)
      cbjitter:set_visible(false)
		SpamOnDT:set_visible(false)
      cbLFucker:set_visible(false)
      cbAuto:set_visible(false)
      sliderAutoMin:set_visible(false)
      sliderAutoMax:set_visible(false)
      cbScout:set_visible(false)
      sliderScoutMin:set_visible(false)
      sliderScoutMax:set_visible(false)

   end
--ComboBox Checkbox actions
--Misc
    --Spam On DT
    if (ui.get_keybind_state(keybinds.double_tap) and SpamOnDT:get()) == true then
      cbYaw:set(true)
      cblag:set(true)
      cblean:set(true)
      cbjitter:set(true)
      cbDesync:set(true)
     
   end
    if (ui.get_keybind_state(keybinds.double_tap) == false) and (SpamOnDT:get() == true)  then
      cbYaw:set(false)
      cblag:set(false)
      cblean:set(false)
      cbjitter:set(false)
      cbDesync:set(false)
      ui.find_menu_int("0Antiaim.desync_range"):set(oDesync)
      ui.find_menu_int("Antiaim.yaw_offset"):set(oYaw)
   end
--CFG
    --Save User Anti-Aims
    if SaveUserAntiAims:get() == true then
       oDesync = ui.find_menu_int("0Antiaim.desync_range"):get()
       oYaw = ui.find_menu_int("Antiaim.yaw_offset"):get()
       cheat.notify("Anti-Aims has been saved")
       SaveUserAntiAims:set(false)
   end
    --Load User Anti-Aims
    if LoadUserAntiAims:get() == true then
      ui.find_menu_int("0Antiaim.desync_range"):set(oDesync)
      ui.find_menu_int("Antiaim.yaw_offset"):set(oYaw)
      cheat.notify("Anti-Aims has been loaded")
      LoadUserAntiAims:set(false)
  end
--Spamer
    --FastDesync
    if (cbDesync:get() == true) and (sliderDesyncMin:get() < sliderDesyncMax:get()) then
       ui.find_menu_int("0Antiaim.desync_range"):set(math.random(sliderDesyncMin:get(),sliderDesyncMax:get()))
       ui.find_menu_int("0Antiaim.inverted_desync_range"):set(math.random(sliderDesyncMin:get(),sliderDesyncMax:get()))
   end
    --FastDesync Error Notifer
    if (cbDesync:get() == true) and (sliderDesyncMin:get() > sliderDesyncMax:get()) then
      cheat.notify("Min Value Can't Bigger Then Max Value")
      cbDesync:set(false)
   end
  
    --FastYaw
    if (cbYaw:get() == true) and (sliderYawMin:get() < sliderYawMax:get()) then
       ui.find_menu_int("Antiaim.yaw_offset"):set(math.random(sliderYawMin:get(),sliderYawMax:get()))
     end
    --FastYaw Error Notifer
    if (cbYaw:get() == true) and (sliderYawMin:get() > sliderYawMax:get()) then
      cheat.notify("Min Value Can't Bigger Then Max Value")
      cbYaw:set(false)
     end

    --FastLag
    if (cblag:get() == true) and (sliderLagMin:get() < sliderLagMax:get()) then
      ui.find_menu_int("Antiaim.fake_lag_limit"):set(math.random(sliderLagMin:get(),sliderLagMax:get()))
    end
   --FastLag Error Notifer
   if (cblag:get() == true) and (sliderLagMin:get() > sliderLagMax:get()) then
     cheat.notify("Min Value Can't Bigger Then Max Value")
     cblag:set(false)
    end
      --FastLean
        if (cblean:get() == true) and (sliderLeanMin:get() < sliderLeanMax:get()) then
         ui.find_menu_int("0Antiaim.body_lean"):set(math.random(sliderLeanMin:get(),sliderLeanMax:get()))
         ui.find_menu_int("0Antiaim.inverted_body_lean"):set(math.random(sliderLeanMin:get(),sliderLeanMax:get()))
       end
      --FastLean Error Notifer
      if (cblag:get() == true) and (sliderLeanMin:get() > sliderLeanMax:get()) then
        cheat.notify("Min Value Can't Bigger Then Max Value")
        cblag:set(false)
       end
      --FastJitter
        if (cbjitter:get() == true) and (sliderJitterMin:get() < sliderJitterMax:get()) then
         ui.find_menu_int("0Antiaim.range"):set(math.random(sliderJitterMin:get(),sliderJitterMax:get()))
       end
      --FastLean Error Notifer
      if (cblag:get() == true) and (sliderJitterMin:get() > sliderJitterMax:get()) then
        cheat.notify("Min Value Can't Bigger Then Max Value")
        cblag:set(false)
       end
       --LegFucker
      if cbLFucker:get() == true then
         ui.find_menu_int("Misc.leg_movement"):set(math.random(0,2))
      end
      --AlternativeDamageAuto
    if (cbAuto:get() == true) and (sliderAutoMin:get() < sliderAutoMax:get()) then
      ui.find_menu_int("4Ragebot.minimum_override_damage"):set(math.random(sliderAutoMin:get(),sliderAutoMax:get()))
  end
      --AlternativeDamageAuto Error Notifer
   if (cbAuto:get() == true) and (sliderAutoMin:get() > sliderAutoMax:get()) then
     cheat.notify("Min Value Can't Bigger Then Max Value")
     cbAuto:set(false)
  end
   --AlternativeDamageScout
        if (cbScout:get() == true) and (sliderScoutMin:get() < sliderScoutMax:get()) then
         ui.find_menu_int("5Ragebot.minimum_override_damage"):set(math.random(sliderScoutMin:get(),sliderScoutMax:get()))
     end
   --AlternativeDamageScout Error Notifer
      if (cbScout:get() == true) and (sliderScoutMin:get() > sliderScoutMax:get()) then
        cheat.notify("Min Value Can't Bigger Then Max Value")
        cbScout:set(false)
     end
end)





