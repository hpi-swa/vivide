private
tryUpdateChildren

	updateCount == true ifTrue: [
		updateCount := false.
		self updateChildren].