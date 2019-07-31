updating - kernel
hasLocalCycle
	"Ignores cycles in my inner and outer pane views. This compares with ViScriptStep >> #hasLocaLCycle."

	| found next current |
	found := OrderedCollection new.
	next := OrderedCollection with: self.
	[next notEmpty] whileTrue: [
		current := next removeFirst.
		(found identityIncludes: current) ifTrue: [^ true].
		found addLast: current.
		next addAll: (current validOutputConnections collect: [:ea | ea target])].
	
	^ false