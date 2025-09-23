class_name riverText extends TextEdit


@onready var river_button: Button = $"../RiverButton"

func _ready():
	self.visible = false
	pass

func _process(delta):
	if river_button.pressed:
		self.visible = true
	else:
		self.visible = false
	pass
	
