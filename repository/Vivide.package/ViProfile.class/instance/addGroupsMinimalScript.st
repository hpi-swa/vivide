initialization - scripts
addGroupsMinimalScript

	self addScript: {
	
		[:tuples | tuples asGroups] -> {
			#inputKind -> #(nil nil).
			#view -> ViTreeView.
			#id -> #groupsMinimal}.
		[:groups | groups sorted: [:g1 :g2 | g1 first asString <= g2 first asString]].
		[:group | { "Prepend separators to groups."
			{#separator. {{
				(ViLabelService doObject: group first) asText
					addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
					addAttribute: (TextColor color: (Color gray: 0.66));
					yourself}}}.
			group}].
		[:group | group expandGroup].
		[:label :object | object]. " ??? [:tuple | tuple size > 2 ifTrue: [{tuple allButFirst}] ifFalse: [tuple second]] ??? "
		
	} asScript.