extends ColorRect

var clock = 0

# Relogio em si -------------
func relogio():
	clock += 1
	# Horas
	var horas = 10 + clock/60
	if horas < 10:
		$Label.text = "0"
	else:
		$Label.text = ""
	$Label.text += str(horas)
	
	# Minutos
	var minutos = clock%60
	if minutos < 10:
		$Label.text += ":0"
	else:
		$Label.text += ":"
	$Label.text += str(minutos)