definitions
deffe8f5044ec69a14b9b3529325b9ddcc8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:change | 
	change value associations collect: [:item | 
		item value -> (MethodReference
			class: ((Smalltalk classNamed: change key) ifNil: [UndefinedObject])
			selector: item key)]]).
(#class -> ViQueryMapDefinition).
(#id -> #'fe8f5044-ec69-a14b-9b35-29325b9ddcc8').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:59:33 pm')})).
(#sourceCode -> '[:change | 
	change value associations collect: [:item | 
		item value -> (MethodReference
			class: ((Smalltalk classNamed: change key) ifNil: [UndefinedObject])
			selector: item key)]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})