extends RichTextLabel

func _ready():
	print( "content_height = ", get_content_height(), "px" )
	print( get_line_count(), " lines" )
	print( get_visible_line_count(), " visible_lines" )
	print( get_total_character_count(), " total_characters" )
	print( self.visible_characters, " visible_characters" )
	print( self.percent_visible*100, " percent_visible")

var current_line = 0

func _on_Button_pressed():
	current_line += 1
	scroll_to_line(current_line)
