extends CharacterBody2D

const GRAVITY : int = 4200
const JUMP_SPEED : int = -1800

func _physics_process(delta):
	velocity.y += GRAVITY * delta
	if is_on_floor():
		
			$correr.disabled = false
			if Input.is_action_pressed("ui_accept"):
				velocity.y = JUMP_SPEED
				$sonidosalto.play()
			elif Input.is_action_pressed("ui_down"):
				$AnimatedSprite2D.play("agacharse")
				$correr.disabled = true
			else:
				$AnimatedSprite2D.play("correr")
	else:
		$AnimatedSprite2D.play("saltar")
		
	move_and_slide()
