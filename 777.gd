extends Control

const words = ["godot", "engine", "gamedev", "script", "keyboard"]
var currentWord : String
var currentCharIndex : int
var score : int

var wordLabel : Label
var scoreLabel : Label

var key_code_to_char : Dictionary = {
	KeyList.A: "a",
	KeyList.B: "b",
	KeyList.C: "c",
	# ... mapeie todas as teclas que você precisa
	KeyList.Z: "z"
}

func _ready():
	wordLabel = $WordLabel
	scoreLabel = $ScoreLabel
	new_game()

func new_game():
	currentWord = words[randi() % words.size()]
	currentCharIndex = 0
	score = 0
	update_labels()

func update_labels():
	wordLabel.text = currentWord
	scoreLabel.text = "Score: " + str(score)

func _input(event):
	if event is InputEventKey:
		var pressed_key = event.scancode
		var expected_char = currentWord[currentCharIndex]

		if key_code_to_char.has(pressed_key) and key_code_to_char[pressed_key] == expected_char:
			currentCharIndex += 1

			if currentCharIndex >= currentWord.length():
				score += 1
				new_game()

			update_labels()
		else:
			new_game()
