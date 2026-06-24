# Arquivo: coin.gd

extends Area2D

# Novo sinal criado (é possível criar um sinal caso os padrões não 
# tenham o que é preciso
signal collected

# Cria as variáveis que referenciam o nó de Partículas, Sprite2D e CollisionShape
@onready var particles: GPUParticles2D = $Particles
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

	

func _on_body_entered(body: Node2D) -> void:
		# Se o nome do nó que entrou na área for Player, execute as ações
	if body.name == "boneco":
		print(body.name)
		body.activate_invencibility(5.0)
		
		collected.emit()

		sprite_2d.visible = false
		collision_shape_2d.set_deferred("disabled", true)
	
		particles.emitting = true

		await particles.finished
	  # Remova a moeda da cena
		queue_free()
