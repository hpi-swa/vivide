definitions
defaa89602fa4cc7841a21ceaf6f17bee2a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:o | o third withAllSuperclasses in: [:c |
	c size > 2
		ifTrue: [c atLast: 3]
		ifFalse: [
			o third subclasses
				ifNotEmpty: [o third]
				ifEmpty: [c atLast: 2 "Object"]]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'aa89602f-a4cc-7841-a21c-eaf6f17bee2a').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2014 4:40:37 pm')})).
(#sourceCode -> '[:o | o third withAllSuperclasses in: [:c |
	c size > 2
		ifTrue: [c atLast: 3]
		ifFalse: [
			o third subclasses
				ifNotEmpty: [o third]
				ifEmpty: [c atLast: 2 "Object"]]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})