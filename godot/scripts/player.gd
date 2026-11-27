extends CharacterBody2D

@export var speed: float = 130.0
@export var jump_velocity: float = -280.0
@export var gravity: float = 850.0

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var facing: int = 1

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta

	var direction := Input.get_axis("move_left", "move_right")
	velocity.x = direction * speed

	if direction != 0.0:
		facing = sign(direction)
		sprite.flip_h = facing < 0

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity

	if Input.is_action_just_pressed("attack") and sprite.animation != "attack":
		sprite.play("attack")

	move_and_slide()
	_update_animation(direction)

func _update_animation(direction: float) -> void:
	# O golpe tem prioridade até terminar; depois voltamos ao movimento.
	if sprite.animation == "attack" and sprite.is_playing():
		return

	if not is_on_floor():
		sprite.play("jump")
	elif abs(direction) > 0.01:
		sprite.play("walk")
	else:
		sprite.play("idle")
