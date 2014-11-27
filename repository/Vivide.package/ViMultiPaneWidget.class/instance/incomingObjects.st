accessing
incomingObjects

	^ (self model nodes
		detect: [:node | node includesKey: #objects]
		ifNone: []) ifNil: [#()] ifNotNil: [:node | node at: #objects]