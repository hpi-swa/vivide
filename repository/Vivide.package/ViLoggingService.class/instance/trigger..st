as yet unclassified
trigger: anEvent
	"Supports forms."

	self class activateLoggingService
		ifFalse: [^ self "Discard event."].

	anEvent isDictionary ifFalse: [
		^ self trigger: (Dictionary newFrom: anEvent)].
	
	"Transcript cr; show: anEvent."
	
	anEvent
		at: #timestamp put: DateAndTime now printString;
		at: #user put: self class user;
		at: #author put: Utilities authorInitials;
		at: #call put: (self externalCall
			ifNil: [Processor activeProcess name]
			ifNotNil: [:ctxt | ctxt printString]).

	(self class logScreenshots and: [lastScreenshotLog isNil or: [
		(Time now asSeconds - lastScreenshotLog between: 0 and: 5) not]])
			ifTrue: [
				anEvent at: #screenshot put: Display copy.
				(anEvent at: #screenshot) getCanvas drawMorph: ActiveHand.
				lastScreenshotLog := Time now asSeconds]. 

	self pendingEvents nextPut: anEvent.