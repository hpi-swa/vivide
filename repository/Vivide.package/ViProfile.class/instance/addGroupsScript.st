initialization - scripts
addGroupsScript

	self addScript: {
	
		[:tuples | tuples asGroups] -> {
			#inputKind -> #(nil nil).
			#view -> ViTreeView.
			#id -> #groups}.
		[:groups | groups sorted: [:g1 :g2 | g1 first asString <= g2 first asString]].
		[:group | { "Prepend separators to groups."
			{#separator. {{('<font size="8" color="#AAAAAA">', group first asString, '</font>') asHtmlText}}}.
			group}].
		[:group | group expandGroup].
		[:label :object | object].
		[:object | {
			#text -> (object isText ifFalse: [ViLabelService doObject: object]).
			#icon -> (object isText ifFalse: [ViIconService doObject: object]).
			#morph -> (object isText ifTrue: [object asMorph lock; margins: (0@5 corner: 0@2)]).
			#selectable -> object isText not.
			#tooltip -> [object isText ifFalse: [ViObjectPreviewHandler doObject: object]]}]
		
	} asScript.