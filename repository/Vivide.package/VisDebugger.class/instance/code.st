as yet unclassified
code

	^ {
	{#code. self squeakTextViewCreator} -> {
		[:context | context method] -> {ContextPart.CompiledMethod}.
		[:method | {
			#text -> (SHTextStylerST80 new
				classOrMetaClass: method methodClass;
				styledTextFor: method getSource asText).
			#selection -> (1 to: 5)}] -> {CompiledMethod.Object}
	}.
	}
