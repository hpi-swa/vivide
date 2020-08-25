running
performTest
	"Simulate an active event for pane-cycle updates."
	
	| evt dummy |
	evt := ActiveEvent.
	dummy := MouseButtonEvent new
		setType: #mouseDown
		position: 0@0
		which: 2r000 "no change"
		buttons: 2r100 "red/left pressed"
		hand: nil
		stamp: Time millisecondClockValue.
	
	[
		ActiveEvent := dummy.
		super performTest.
	] ensure: [ActiveEvent := evt]