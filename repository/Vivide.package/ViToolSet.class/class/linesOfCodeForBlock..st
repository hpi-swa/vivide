as yet unclassified
linesOfCodeForBlock: block

	| lineCount |
	lineCount := 0.
	self
		linesOfCodeForBlock: block
		do: [:string :start :stop | lineCount := lineCount + 1].
	^ lineCount