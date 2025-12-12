extends Node3D

var shift: float = 0.1
var variation: float = 0.001
var dir: Vector3
var sgn := 1.0
var start: Vector3

func _ready() -> void:
	start = self.transform.basis.z
	dir = self.transform.basis.x
	pass
	
func _process(delta: float) -> void:
	self.rotate(dir, (shift + randf() * variation) * delta * sgn)
	if start.dot(self.transform.basis.z) < 0.99:
		sgn = sgn * -1
