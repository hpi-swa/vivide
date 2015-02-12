initialization - scripts
addFormattedScripts

	self addScript: {
	
		[:scripts | scripts sorted: [:s1 :s2 | s1 priority <= s2 priority]] -> {
			#inputKind -> ViQueryStep. #outputKind -> ViQueryStep.
			#label -> 'Scripts'.
			#id -> #formattedQueries}.
		[:script | {
			#icon -> (script nextIcon ifNil: [ViIcons blankIcon]).
			#text -> (script nextLabel
				ifNil: [ViTextStyler new styledTextFor: script sourceCodeShort asText])}].
		[:script | #text -> script baseClassName]
	
	} asScript.