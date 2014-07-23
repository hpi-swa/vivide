accessing - objects
objectsDeferred: someObjects
	"Set new objects but wait some milliseconds. Could be usefull if called several times in a row."
	
	self removeAlarm: #objects:.  
	
	self
		addAlarm: #objects:
		with: someObjects
		after: 300.