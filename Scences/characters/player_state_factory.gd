class_name PlayerStateFactory
var states : Dictionary
func _init() -> void:
	states ={
		Player.State.MOVING : PlayerStateMoving,
		Player.State.TACKLING : PlayerStateTackling
	}
func get_fresh_state(state: Player.State) -> PlayerState:
	assert(states.has(state), "state don't exist!")
	return states.get(state).new()
