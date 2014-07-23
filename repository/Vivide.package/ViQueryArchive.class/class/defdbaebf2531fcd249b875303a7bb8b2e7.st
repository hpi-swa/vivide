definitions
defdbaebf2531fcd249b875303a7bb8b2e7
	<definition>

	^ ((Dictionary new) add: (#inputKind->Behavior); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 February 2014 11:22:16 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->String); add: (#id->#'dbaebf25-31fc-d249-b875-303a7bb8b2e7'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:class | "See TestRunner >> findCategories"
	| visible |
	visible := Set new.
	class withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	Array streamContents: [ :stream |
		Smalltalk organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ] ]'); add: (#mapType->#each); add: (#block->[:class | "See TestRunner >> findCategories"
	| visible |
	visible := Set new.
	class withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	Array streamContents: [ :stream |
		Smalltalk organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ] ]); yourself)