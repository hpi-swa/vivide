private
trigger: event

	self isBroadcasting ifTrue: [event trigger: eventSource]