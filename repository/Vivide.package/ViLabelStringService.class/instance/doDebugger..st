operations
doDebugger: aDebugger

	^ aDebugger labelString
		ifNotNil: [:s | s withoutLineEndingsTruncatedTo: 30]