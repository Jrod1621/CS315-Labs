extends Node2D

var ground_scene = preload("res://infinite/ground.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_timer_timeout() -> void:
	var new_ground = ground_scene.instantiate()
	new_ground.position = self.position
	get_node("/root/InfiniteRunner").add_child(new_ground)
	#$Timer.timeout = randf_range(.2,.12)
