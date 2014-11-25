listening
outputPanes

	^ self connections
		select: [:c | c target == self]
		thenCollect: [:c | c source]