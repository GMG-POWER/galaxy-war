extends Node2D

var novoasteroid: PackedScene
var projetil: PackedScene
var aumento: int
var vel = 200
var palavralabel: Label
var escritalabel: TextEdit
var palavra: String
var pontuacao: Label
@onready var clock_timer = $Clock_timer as Timer
var minutes: int = 0
var seconds: int = 0
@export_range(0,5) var default_minutes := 0
@export_range(0,59) var default_seconds := 0
@onready var timer_counter = $timer_counter

func _ready():
	escritalabel = $TextEdit
	palavralabel = $palavra 
	pontuacao = $pontuação
	palavralabel.text = "texto"
	palavra = palavralabel.text
	projetil = load("res://CENAS/laser.tscn")
	novoasteroid = load("res://CENAS/jogo/asteroid.tscn")
	timer_counter.text = str("%02d" % default_minutes) + ":" + str("%02d" % default_seconds)
	reset_clock_timer()
	pass 

func cria():
	var asteoid = novoasteroid.instantiate(PackedScene.GEN_EDIT_STATE_INSTANCE)
	get_parent().add_child(asteoid) 
	asteoid.position = Vector2(392,67)
	pass

func _on_button_pressed():
		var conteudoDaString: String = escritalabel.text
		if palavra.to_lower() == conteudoDaString.to_lower():
			var laser = projetil.instantiate(PackedScene.GEN_EDIT_STATE_INSTANCE)
			get_parent().add_child(laser)
			laser.position = Vector2(386,431)
		else:
			print("As strings são diferentes.")
		escritalabel.text=""
		escritalabel = $TextEdit
		pass 

func _process(delta):
	pontuacao.text = str("%04d" % Global.pontuacao)
	pass



func _on_clock_timer_timeout():
	if seconds == 10:
		cria()
	if seconds == 60:
		if minutes >= 0: 
			minutes += 1
			seconds = 0
	seconds += 1
	timer_counter.text = str("%02d" % minutes) + ":" + str("%02d" % seconds)


func reset_clock_timer() :
	minutes = default_minutes
	seconds = default_seconds
	



