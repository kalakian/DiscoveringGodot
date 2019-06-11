extends Control

func _ready():
	var words = ["Yann", "Minions", "greatest"]
	var story = "Once upon a time, %s watched %s and thought it was the %s movie of the past two decades"
	
	$VBoxContainer/DisplayText.text = story % words
	$VBoxContainer/HBoxContainer/PlayerText.grab_focus()


func _on_PlayerText_text_entered(new_text):
	update_DisplayText(new_text)


func _on_OKButton_pressed():
	update_DisplayText($VBoxContainer/HBoxContainer/PlayerText.text)


func update_DisplayText(new_text):
	$VBoxContainer/DisplayText.text = new_text
	$VBoxContainer/HBoxContainer/PlayerText.clear()


