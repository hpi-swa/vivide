commands bar
executeCommand: aQueryCommand

	(self objects
		ifNil: [aQueryCommand execute]
		ifNotNil: [:obj | aQueryCommand executeWith: obj]).