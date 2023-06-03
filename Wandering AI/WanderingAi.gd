extends KinematicBody2D

var moveSpeed = 100
var rotationSpeed = 2
var currentDirection = Vector2(0, 0)

func _ready():
    randomize()
    currentDirection = Vector2(randf() * 2 - 1, randf() * 2 - 1).normalized()

func _physics_process(delta):
    var velocity = currentDirection * moveSpeed * delta
    move_and_slide(velocity)
    
    # Update direction randomly every few seconds
    if randf() < 0.01:
        currentDirection = Vector2(randf() * 2 - 1, randf() * 2 - 1).normalized()
    
    # Rotate towards the movement direction
    if currentDirection.length_squared() > 0:
        var targetRotation = currentDirection.angle()
        rotation = rotation.linear_interpolate(targetRotation, rotationSpeed * delta)


#Note this is works on Top-Down perspective.


#1st add a KinematicBody2D to your scene

#2nd add your Sprite

#3rd add a CollisionShape2D

#4th create script to your KinematicBody2D, save it in any file directories.

#5th attach this script that I gave.

-SK7LL :>
