extends Control

func _ready():
	var words = ["Yann", "Minions", "greatest"]
	var story = "Once upon a time, %s watched %s and thought it was the %s movie of the past two decades"
	
	$DisplayText.text = story % words
