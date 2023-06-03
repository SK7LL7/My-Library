extends Node2D

#Variables
var maxHealth: int = 100
var currentHealth: int = 100

#Functions
func _ready():
    pass

#The player/enemy takes damage
func takeDamage(damage: int):
    currentHealth -= damage
    if currentHealth <= 0:
        currentHealth = 0
        onHealthDepleted()
    else:
        onHealthChanged()

func heal(healingAmount: int):
    currentHealth += healingAmount
    if currentHealth > maxHealth:
        currentHealth = maxHealth
    onHealthChanged()

func onHealthChanged():
    # Implement logic to update UI or perform actions when health changes
    print("Current Health: ", currentHealth)

func onHealthDepleted():
    # Implement logic when health reaches 0
    print("Health Depleted!")


# Usage:
# Create an instance of this script in your scene and call `takeDamage` and `heal` functions as needed.
# Example usage:
# `takeDamage(20)` to reduce health by 20.
# `heal(30)` to increase health by 30.
