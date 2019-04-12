initialization - scripts
addGroupsMinimalScript

	self addScript: {
	
		"1) Treat the first element in each tuple as group key."
		[:tuples | tuples asGroups] -> {
			#inputKind -> #(nil nil).
			#view -> ViTreeView.
			#id -> #groupsMinimal}.
		[:groups | groups sorted: [:g1 :g2 | g1 first asString <= g2 first asString]].
		"2) From the group key, create and inline group separators."
		[:head :tail | 
			"Prepend separators to groups."
			{ (ViLabelService doObject: head) asText
				addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
				addAttribute: (TextColor color: (Color gray: 0.66));
				yourself }, tail].
		"3) Flatten single-object tuples..."
		[:object | (object isList and: [object size = 1])
			ifTrue: [object at: 1] ifFalse: [{object}]].
		
	} asScript.