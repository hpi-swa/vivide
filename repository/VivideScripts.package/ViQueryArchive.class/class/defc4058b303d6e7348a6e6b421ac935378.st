definitions
defc4058b303d6e7348a6e6b421ac935378
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:author | (Array streamContents: [:strm | SystemNavigation default allBehaviorsDo: [:b | (b methodDict values anySatisfy: [:m |
	m timeStamp beginsWith: author]) ifTrue: [strm nextPut: b theNonMetaClass]]]) asSet asOrderedCollection sorted: [:c1 :c2 | c1 name <= c2 name]]).
(#class -> ViQueryMapDefinition).
(#id -> #'c4058b30-3d6e-7348-a6e6-b421ac935378').
(#inputKind -> String).
(#mapType -> #each).
(#outputKind -> Behavior).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 4:16:23 pm')})).
(#sourceCode -> '[:author | (Array streamContents: [:strm | SystemNavigation default allBehaviorsDo: [:b | (b methodDict values anySatisfy: [:m |
	m timeStamp beginsWith: author]) ifTrue: [strm nextPut: b theNonMetaClass]]]) asSet asOrderedCollection sorted: [:c1 :c2 | c1 name <= c2 name]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})