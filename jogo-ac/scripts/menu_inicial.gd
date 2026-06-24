# Arquivo menu_inicial.gd

extends Control

# função que executa ao receber o sinal de botão clicado, 


func _on_jogar_pressed() -> void:
	print("CLICOU")
	var err = get_tree().change_scene_to_file("res://scenes/level_1.tscn")
	print("ERRO:", err)
