extends Node2D



#func _on_rendirse_pressed() -> void:
	#get_tree().change_scene_to_file("res://escenas/escenas.tscn")


const posicion_inicial := Vector2i(150,485)
const camara := Vector2i(576, 324)
var puntos : int
const puntos_capao : int = 100
var bluebull : float
const velocida_i : float = 1
const velocida_m : int = 2
var tam_pant : Vector2i
var alt_suelo : int
#var ult_obs

func _ready():
	tam_pant = get_window().size
	alt_suelo = $suelo.get_node("SUELO 1").texture.get_height()
	new_game()

func new_game(): 
	puntos = 0
	
	$Cabra.position = posicion_inicial
	$Cabra.velocity = Vector2i(0,0)
	$Camera2D.position = camara
	$suelo.position = Vector2i(0,0)

func _process(delta):
	bluebull = velocida_i
	
	
	$Cabra.position.x += bluebull
	$Camera2D.position.x += bluebull
	
	puntos += bluebull 
	show_score()
	
	if $Camera2D.position.x - $suelo.position.x > tam_pant.x * 1.5:
		$suelo.position.x += tam_pant.x


func show_score():
	$HUD.get_node("Puntos L").text = "Puntos:" + str(puntos / puntos_capao)
	
func on_rendirse_pressed():
	get_tree().paused = true
	get_tree().change_scene_to_file("res://escenas/perder.tscn")
	
