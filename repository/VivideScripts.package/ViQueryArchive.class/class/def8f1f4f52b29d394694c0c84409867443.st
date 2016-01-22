definitions
def8f1f4f52b29d394694c0c84409867443
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:author | Array streamContents: [:strm | SystemNavigation default allSelectorsAndMethodsDo: [:b :s :m |
	(m timeStamp beginsWith: author) ifTrue: [strm nextPut: m methodReference]]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'8f1f4f52-b29d-3946-94c0-c84409867443').
(#inputKind -> String).
(#mapType -> #each).
(#outputKind -> MethodReference).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:50:08 pm')})).
(#sourceCode -> '[:author | Array streamContents: [:strm | SystemNavigation default allSelectorsAndMethodsDo: [:b :s :m |
	(m timeStamp beginsWith: author) ifTrue: [strm nextPut: m methodReference]]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})