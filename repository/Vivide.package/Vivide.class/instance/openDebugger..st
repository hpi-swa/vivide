actions
openDebugger: aDebugger

	(self focusedTape ifNil: [self addTape. self tapes last])
		openDebugger: aDebugger.