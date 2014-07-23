as yet unclassified
executeCommand: aQueryCommand

	(self objects
		ifNil: [aQueryCommand execute]
		ifNotNil: [:obj | aQueryCommand executeWith: obj]).