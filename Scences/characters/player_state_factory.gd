class_name PlayerStateFactory
var states : Dictionary


func _init() -> void:
	states ={
		Player.State.MOVING : PlayerStateMoving,
		Player.State.RECOVERING : PlayerStateRecovering,
		Player.State.TACKLING : PlayerStateTackling,
		Player.State.PREPPRING_SHOOT : PlayerStatePreshot,
		Player.State.SHOOTING : PlayerStateShot,
		Player.State.PASSING : PlayStatePassing,
		Player.State.BICYCLE_KICK : PlayerStateBicycleKick,
		Player.State.HEADER : PlayerStateHeader,
		Player.State.VOLLEY_KICK : PlayerStateVolleyKick
	}

func get_fresh_state(state: Player.State) -> PlayerState:
	assert(states.has(state), "state don't exist!")
	return states.get(state).new()
