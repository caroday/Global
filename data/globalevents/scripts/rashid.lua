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
	  --Thais
	  doCreateNpc("Addon", {x = 32358, y = 32234, z = 7})
	  doCreateNpc("Alesar", {x = 32362, y = 32227, z = 7})
	  doCreateNpc("Nah'bob", {x = 32362, y = 32219, z = 7})
	  doCreateNpc("Yaman", {x = 32362, y = 32221, z = 6})
	  doCreateNpc("Haroun", {x = 32362, y = 32227, z = 6})
	  doCreateNpc("Rashid", {x = 32357, y = 32231, z = 6})
	  doCreateNpc("Edvard", {x = 32359, y = 32236, z = 6})
	  doCreateNpc("Grizzly Adams", {x = 32354, y = 32209, z = 7})
	  --endThais
	  --Carlin
	  doCreateNpc("Addon", {x = 32306, y = 31761, z = 7})
	  doCreateNpc("Alesar", {x = 32310, y = 31759, z = 7})
	  doCreateNpc("Nah'bob", {x = 32315, y = 31760, z = 7})
	  doCreateNpc("Yaman", {x = 32318, y = 31762, z = 7})
	  doCreateNpc("Haroun", {x = 32317, y = 31766, z = 7})
	  doCreateNpc("Rashid", {x = 32313, y = 31765, z = 7})
	  doCreateNpc("Edvard", {x = 32309, y = 31778, z = 7})
	  doCreateNpc("Grizzly Adams", {x = 32296, y = 31778, z = 7})	  
	  --endCarlin
	  --Venore
	  doCreateNpc("Addon", {x = 32911, y = 32072, z = 5})
	  doCreateNpc("Alesar", {x = 32916, y = 32072, z = 5})
	  doCreateNpc("Nah'bob", {x = 32924, y = 32072, z = 5})
	  doCreateNpc("Yaman", {x = 32930, y = 32073, z = 5})
	  doCreateNpc("Haroun", {x = 32927, y = 32079, z = 5})
	  doCreateNpc("Rashid", {x = 32919, y = 32079, z = 5})
	  doCreateNpc("Edvard", {x = 32917, y = 32084, z = 5})
	  doCreateNpc("Grizzly Adams", {x = 32928, y = 32084, z = 5})
	  --endVenore
	  --Edron
	  doCreateNpc("Addon", {x = 33177, y = 31801, z = 7})
	  doCreateNpc("Alesar", {x = 33182, y = 31805, z = 7})
	  doCreateNpc("Nah'bob", {x = 33177, y = 31810, z = 7})
	  doCreateNpc("Yaman", {x = 33181, y = 31813, z = 7})
	  doCreateNpc("Haroun", {x = 33186, y = 31804, z = 7})
	  doCreateNpc("Rashid", {x = 33184, y = 31811, z = 7})
	  doCreateNpc("Edvard", {x = 33193, y = 31813, z = 7})
	  doCreateNpc("Grizzly Adams", {x = 33193, y = 31804, z = 7})
	  --endEdron
	  --Darashia
	  doCreateNpc("Addon", {x = 33232, y = 32409, z = 6})
	  doCreateNpc("Alesar", {x = 33236, y = 32411, z = 6})
	  doCreateNpc("Nah'bob", {x = 33241, y = 32409, z = 6})
	  doCreateNpc("Yaman", {x = 33237, y = 32404, z = 6})
	  doCreateNpc("Haroun", {x = 33237, y = 32399, z = 6})
	  doCreateNpc("Rashid", {x = 33237, y = 32397, z = 6})
	  doCreateNpc("Edvard", {x = 33222, y = 32404, z = 6})
	  doCreateNpc("Grizzly Adams", {x = 33221, y = 32392, z = 6})
	  --endDarashia	  
	  --endUltima Alianza Tibia
   else
      print("[!] -> Cannot create Rashid. Day: " .. day .. ".")
   end
   return true
end