accessing - object
object: aMethodContext

	self artifact method: aMethodContext method.
	self resetSource.
	
	self artifact model
		doItContext: aMethodContext;
		doItReceiver: aMethodContext receiver.
	
	self clear.