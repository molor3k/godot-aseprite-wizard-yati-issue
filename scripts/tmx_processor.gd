@tool
class_name TMXProcessor
extends Node



func _post_process(base_node: Node2D) -> Node2D:
	var prefab = load("res://scenes/prefab_inherited.tscn") 
	var instance = prefab.instantiate()
	base_node.add_child(instance)
	instance.set_owner(base_node)
	
	return base_node
