support
updateStep: step

	^ self class
		updateStep: step
		category: (self class categoryPrefixFor: step)
		archive: archive