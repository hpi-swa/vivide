as yet unclassified
linesOfCodeForBlock: block do: anotherBlock

	^ self
		linesOfCodeForSourceCode: block decompile decompileString
		do: anotherBlock