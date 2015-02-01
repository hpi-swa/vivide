initialization - scripts
addGroupsScript

	self addScript: {
	
		[:tuples | tuples asGroups] -> {
			#inputKind -> {Object.Object}.
			#label -> 'Groups'.
			#view -> ViTreeViewExtended.
			#id -> #groups}.
		[:groups | groups sorted: [:g1 :g2 | g1 first asString <= g2 first asString]].
		[:group | { "Prepend separators to groups."
			{#separator. {{('<font size="8" color="#AAAAAA"><br>', group first asString, '</font>') asHtmlText}}}.
			group}].
		[:group | group expandGroup].
		[:label :object | object].
		[:object | {
			#text -> (object isText ifTrue: [object] ifFalse: [ViLabelService doObject: object]).
			#icon -> (object isText ifTrue: [] ifFalse: [ViIconService doObject: object]).
			#selectable -> object isText not}]
	
	} asScript.