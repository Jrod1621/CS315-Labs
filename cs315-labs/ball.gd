extends CharacterBody2D

#called ONCE when the object first "comes to life"
#means its part of the display system now
func _ready() -> void:
	self.velocity = Vector2(-3,1)

func _process(delta: float) -> void:
	var collision = move_and_collide(self.velocity)
	
	#
	if collision:
		self.velocity = velocity.bounce(collision.get_normal())
