activation and focus
startDrag: evt
	self flag: #todo. "mt: The hand is global but the pane view might not be changed?"
	self decoration window hasDropShadow: false.
	evt hand grabMorph: self.