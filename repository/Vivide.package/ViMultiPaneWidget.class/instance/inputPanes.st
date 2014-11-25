listening
inputPanes

	^ self connections
		select: [:c | c source == self]
		thenCollect: [:c | c target]