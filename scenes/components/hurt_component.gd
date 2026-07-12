class_name HurtComponent
extends Area2D

@export var tool : DataTypes.Tools = DataTypes.Tools.None

signal hurt


func _on_area_entered(area: Area2D) -> void:
	print("area entered:", area.name)
	var hit_component = area as HitComponent
	print("hit tool:", hit_component.current_tool, "hurt tool:", tool)
	if tool == hit_component.current_tool:
		print("hurt emitted!")
		hurt.emit(hit_component.hit_damage)
