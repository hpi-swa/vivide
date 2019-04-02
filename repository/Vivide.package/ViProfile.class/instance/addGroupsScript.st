initialization - scripts
addGroupsScript

	self addScript: {
		[:tuples | tuples sorted: [:t1 :t2 | t1 second asString <= t2 second asString]]
			-> {
			#inputKind -> #(nil nil).
			#view -> ViTreeView.
			#id -> #groups}.
			
		#groupsMinimal.

		[:object | {
			#text -> (object isText ifFalse: [ViLabelService doObject: object]).
			#icon -> (object isText ifFalse: [ViIconService doObject: object]).
			#morph -> (object isText ifTrue: [object asMorph lock; margins: (0@5 corner: 0@2)]).
			#selectable -> object isText not.
			#tooltip -> [object isText ifFalse: [ViObjectPreviewHandler doObject: object]]}]
		
	} asScript.