extends RichTextLabel

func _ready():
	print( "content_height = ", get_content_height(), "px" )
	print( get_line_count(), " lines" )
	print( get_visible_line_count(), " visible_lines" )
	print( get_total_character_count(), " total_characters" )
	print( self.visible_characters, " visible_characters" )
	print( self.percent_visible*100, " percent_visible")

var current_line = 0
var p_max = 3

func _on_Button_next_pressed():
	current_line += 1
	clamp_line()
	scroll_to_line(current_line)

func _on_Button_previous_pressed():
	current_line -= 1
	clamp_line()
	scroll_to_line(current_line)

func _on_Button_hide_pressed():
	hide()

func _on_Button_show_pressed():
	show()

func clamp_line():
	current_line = clamp(current_line, 0, p_max-1)

