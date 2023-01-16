extends Control


export var text = """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"""

func _ready():
	var split = splitText(text, 15)
	print(split)
	pass

func splitText(text, length):
	# todo: support BBcode
	var text_length = text.length()
	var parts = floor(length / text_length)
	var array = []
	for n in range(parts):
		var part = text.substr(n, length)
		array.append(part)
	return array
