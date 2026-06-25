extends Control

# função que altera a cena para a cena do jogo quando o botão é pressionad


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")
