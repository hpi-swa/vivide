as yet unclassified
linesOfCodeForMethod: aCompiledMethod

	| lineCount |
	lineCount := 0.
	self linesOfCodeForMethod: aCompiledMethod do: [:string :start :stop |
		lineCount := lineCount + 1].
	^ lineCount