extends Control

var intro ="Welcome to Loony Lips, a fun word game\n\n"
var story = "Once upon a time, %s ate a %s sandwich, which made them feel all %s inside. It was a %s day"
var prompts = ["a name", "a noun", "an adverb", "an adjective"]
var player_words = []

onready var DisplayText = $VBoxContainer/DisplayText
onready var PlayerText =$VBoxContainer/HBoxContainer/PlayerText

func _ready():
	PlayerText.grab_focus()
	display_intro_text()
	check_player_words_length()


func display_intro_text():
	DisplayText.text = intro


func _on_PlayerText_text_entered(new_text):
	add_to_player_words()


func _on_OKButton_pressed():
	add_to_player_words()


func add_to_player_words():
	player_words.append(PlayerText.text)
	DisplayText.text = ""
	PlayerText.clear()
	check_player_words_length()


func is_story_done():
	return player_words.size() == prompts.size()


func check_player_words_length():
	if is_story_done():
		tell_story()
	else:
		prompt_player()


func tell_story():
	DisplayText.text = story % player_words


func prompt_player():
	DisplayText.text += "May I have " + prompts[player_words.size()] + " please?"








