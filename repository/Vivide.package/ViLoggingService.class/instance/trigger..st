as yet unclassified
trigger: anEvent

	anEvent
		at: #timestamp put: DateAndTime now printString;
		at: #user put: self class user;
		at: #author put: Utilities authorInitials.

	self pendingEvents nextPut: anEvent.