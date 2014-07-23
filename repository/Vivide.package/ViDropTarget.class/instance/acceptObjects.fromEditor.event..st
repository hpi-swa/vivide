dropping - specific
acceptObjects: someObjects fromEditor: anEditor event: evt

	| menu editorListList result |
	menu := MenuMorph new defaultTarget: self.
	editorListList := (someObjects collect: [:o | ViEditorLookupService new doObject: o]).
	result := editorListList first.
	editorListList allButFirst do: [:editorClasses | result := result intersection: editorClasses].
		
	result size == 1 ifTrue: [
		^ self acceptObjects: someObjects fromEditor: anEditor service: result first event: evt].
		
	result do: [:editorClass |
		menu 
			add: editorClass editorActionName 
			target: self 
			selector: #acceptObjects:fromEditor:service:event: 
			argumentList: {someObjects.anEditor.editorClass.evt}.
		menu lastItem icon: editorClass editorIcon].
		
	result ifEmpty: [menu add: 'No editors available.' target: self selector: #yourself].

	menu popUpEvent: evt in: ActiveWorld.