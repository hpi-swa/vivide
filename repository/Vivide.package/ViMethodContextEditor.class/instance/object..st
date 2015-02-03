accessing - object
object: aMethodContext

	self artifact method: (aMethodContext ifNotNil: #method).
	self resetSource.
	
	self artifact model
		doItContext: aMethodContext;
		doItReceiver: (aMethodContext ifNotNil: #receiver).
	
	self clear.