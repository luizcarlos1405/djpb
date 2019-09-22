extends Node2D

func _ready():
	pass


func _process(delta):
	$Interface/ProgressBar.value = $Nave.combustivel
	pass


func _on_Nave_body_entered(body):
	print(body.name)
	if body.name == "Chegada":
		$Timer.start()

	elif body.name == "Obstaculo":
		$Nave.explodir()
		$Timer.start()


func _on_Nave_body_exited(body):
	print(body.name)
	if body.name == "Chegada":
		$Timer.stop()

func _on_Timer_timeout():
	get_tree().reload_current_scene()
