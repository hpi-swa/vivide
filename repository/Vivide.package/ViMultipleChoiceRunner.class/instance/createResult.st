as yet unclassified
createResult

	super createResult.
	self task result answer: (self ui submorphs collect: [:button | button checked]).