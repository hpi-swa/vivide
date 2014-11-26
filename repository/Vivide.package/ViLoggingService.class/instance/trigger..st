as yet unclassified
trigger: anEvent
	"Supports forms."

	self class activateLoggingService
		ifFalse: [^ self "Discard event."].

	anEvent isDictionary ifFalse: [
		^ self trigger: (Dictionary newFrom: anEvent)].
	
	anEvent
		at: #timestamp put: DateAndTime now printString;
		at: #user put: self class user;
		at: #author put: Utilities authorInitials;
		at: #call put: self externalCall printString.

	self class logScreenshots ifTrue: [
		anEvent at: #screenshot put: Display copy]. 

	self pendingEvents nextPut: anEvent.