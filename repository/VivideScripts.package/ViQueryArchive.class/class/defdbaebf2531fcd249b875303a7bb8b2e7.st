definitions
defdbaebf2531fcd249b875303a7bb8b2e7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:class | "See TestRunner >> findCategories"
	| visible |
	visible := Set new.
	class withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	Array streamContents: [ :stream |
		Smalltalk organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ] ]).
(#class -> ViQueryMapDefinition).
(#id -> #'dbaebf25-31fc-d249-b875-303a7bb8b2e7').
(#inputKind -> Behavior).
(#mapType -> #each).
(#outputKind -> String).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:22:16 am')})).
(#sourceCode -> '[:class | "See TestRunner >> findCategories"
	| visible |
	visible := Set new.
	class withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	Array streamContents: [ :stream |
		Smalltalk organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ] ]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})