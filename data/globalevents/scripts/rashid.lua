function onStartup()

   --RASHID
   local days =
   {
      [1] = {x = 32328, y = 31782, z = 6}, --Sunday // Domingo
      [2] = {x = 32207, y = 31155, z = 7}, --Monday // Lunes
      [3] = {x = 32300, y = 32837, z = 7}, --Tuesday // Martes
      [4] = {x = 32577, y = 32753, z = 7}, --Wednesday // Miercoles
      [5] = {x = 33066, y = 32879, z = 6}, --Thursday // Jueves
      [6] = {x = 33235, y = 32483, z = 7}, --Friday // Viernes
      [7] = {x = 33166, y = 31810, z = 6} --Saturday // Sabado
   }
 
   local day = os.date("*t").wday
   if days[day] then
      doCreateNpc("Rashid", days[day])
	  --Ultima Alianza Tibia
	  doCreateNpc("Addon", {x = 32358, y = 32234, z = 7})
	  doCreateNpc("Alesar", {x = 32362, y = 32227, z = 7})
	  doCreateNpc("Nah'bob", {x = 32362, y = 32219, z = 7})
	  doCreateNpc("Yaman", {x = 32362, y = 32221, z = 6})
	  doCreateNpc("Haroun", {x = 32362, y = 32227, z = 6})
	  doCreateNpc("Rashid", {x = 32357, y = 32231, z = 6})
	  doCreateNpc("Edvard", {x = 32359, y = 32236, z = 6})
	  doCreateNpc("Grizzly Adams", {x = 32354, y = 32209, z = 7})
	  --endUltima Alianza Tibia
   else
      print("[!] -> Cannot create Rashid. Day: " .. day .. ".")
   end
   return true
end