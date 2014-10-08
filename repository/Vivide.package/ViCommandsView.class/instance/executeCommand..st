actions
executeCommand: aQueryCommand

	self model ifNil: [^ self].
	(self model allObjects
		ifNil: [aQueryCommand execute]
		ifNotNil: [:obj | aQueryCommand executeWith: obj]).
	
	self flash.