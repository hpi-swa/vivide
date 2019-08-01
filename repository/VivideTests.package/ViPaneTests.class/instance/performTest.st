running
performTest
	"Simulate an active event for pane-cycle updates."
	
	| evt |
	evt := ActiveEvent.
	
	[
		ActiveEvent := UUID new.
		super performTest.
	] ensure: [ActiveEvent := evt]