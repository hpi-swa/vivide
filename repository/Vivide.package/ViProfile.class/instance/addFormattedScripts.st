initialization - scripts
addFormattedScripts

	self addScript: {
	
		[:scripts | scripts sorted: [:s1 :s2 | s1 priority <= s2 priority]] -> {
			#inputKind -> ViScriptPart. #outputKind -> ViScriptPart.
			#label -> 'Scripts'.
			#id -> #formattedQueries.
			#view -> ViTreeView.
			#yieldOn -> #(activated)}.
		[:scripts | scripts reject: [:script | script valueOfProperty: #isNew ifAbsent: false]].
		[:script | {
			#icon -> (script nextIcon ifNil: [ViIcons blankIcon]).
			#text -> (script nextLabel
				ifNil: [ViTextStyler new styledTextFor: script sourceCodeShort asText])}].
		[:script | #text -> script baseClass name]
	
	} asScript.