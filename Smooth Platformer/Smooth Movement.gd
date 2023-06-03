extends KinematicBody2D

const GRAVITY = 1000
const MAX_SPEED = 200
const ACCELERATION = 2000
const FRICTION = 1500
const JUMP_FORCE = -500

var velocity = Vector2()

func _physics_process(delta):
    var input_vector = Vector2.ZERO
    input_vector.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")

    if is_on_floor():
        velocity.y = 0

        if Input.is_action_just_pressed("jump"):
            velocity.y = JUMP_FORCE

    velocity.y += GRAVITY * delta

    if input_vector.x == 0:
        velocity.x = lerp(velocity.x, 0, FRICTION * delta)
    else:
        velocity.x += input_vector.x * ACCELERATION * delta
        velocity.x = clamp(velocity.x, -MAX_SPEED, MAX_SPEED)

    velocity = move_and_slide(velocity, Vector2.UP)

