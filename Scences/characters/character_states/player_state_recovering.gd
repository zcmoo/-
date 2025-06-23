class_name PlayerStateRecovering
extends PlayerState
const  DURATION_RECOVERY := 500
var time_start_recovery := Time.get_ticks_msec()


func _enter_tree() -> void:
	time_start_recovery = Time.get_ticks_msec()
	player.velocity = Vector2.ZERO
	animation_player.play("recover")

func _process(delta: float) -> void:
	if Time.get_ticks_msec() - time_start_recovery > DURATION_RECOVERY:
		state_transition_requested.emit(Player.State.MOVING)
