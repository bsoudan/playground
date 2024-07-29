extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# OS is a static object?
	print("OS is %s: " % OS)
	print("ready on: %s" % OS.get_name())
	print("self is: %s" % self)
	print("scenetree: %s" % self.get_tree())
	print("scenetree root: %s" % self.get_tree().root)
	print("ack")
	print("what child label position is: %s" % typeof($Label.position))
	print("what child label position is: %s" % typeof($Label))
	print(type_string(typeof($Label.position)))
	print("wtf")
	

var time = 0.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time = time + delta
	if time >= 1.0:
		$Label.uppercase = !$Label.uppercase
		$Label.position = $Label.position + Vector2(1, 0)
		print($Label.position)
		time = 0
	pass
