as yet unclassified
linesOfCodeForMethod: method do: block

	^ self
		linesOfCodeForSourceCode:
			"Pretty print."
			(method methodClass newCompiler
				format: method getSource asString
				in: method methodClass
				notifying: nil)
		do: block