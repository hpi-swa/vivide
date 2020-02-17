vivide - other
doEditorState: anEditorState
	"If it is an extensional list, enumerate all objects. Show input objects for intensional lists. Show default preview for single objects."

	(anEditorState properties includesKey: #object)
		ifTrue: [^ self doObject: (anEditorState properties at: #object)].

	(anEditorState properties includesKey: #objects)
		ifTrue: [
			(anEditorState properties at: #objects) ifEmpty: [panel := nil. ^ self].
			panel := self textboxFor: ((anEditorState properties at: #objects)
				inject: '<font size="8">Object List</font>'
				into: [:label :obj |	label,
					'<br>  ',
					(ViLabelStringService doObject: obj),
					' <font color="#AAAAAA">',
					(ViObjectOriginService doObject: obj),
					'</font>']).
			^ panel].
	
	^ panel := ViMorphDecorator new
		addMorph: (anEditorState properties at: #thumbnail ifAbsent: [^ nil]) asMorph;
		yourself.