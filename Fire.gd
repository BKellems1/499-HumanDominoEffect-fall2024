extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var time = 0
onready var n = (get_material().get_shader_param("noise") as NoiseTexture)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta * 75
	var offset = n.noise.get_noise_1d(time)
	$Light2D.scale = Vector2(1.5 + offset/3, 1.5 + offset/3)