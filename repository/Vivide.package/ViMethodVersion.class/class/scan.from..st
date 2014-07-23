scanning
scan: sources from: pointer 
	| versions current |
	
	versions := OrderedCollection new.
	current := self fromSources: sources andPointer: pointer.
	[current notNil]
		whileTrue: [versions add: current.
					current := current previous].
	^ versions