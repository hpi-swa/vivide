definitions
def9d4a27b48a76bc4d97380a575bc69f07
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:hit | #text -> ((((hit at: #info) at: #authors)
	ifNil: [#()]
	ifNotNil: [:authors | authors at: #author]) inject: '' into: [:result :author |
		result, (author convertFromEncoding: 'utf-8'), ', '])]).
(#class -> ViQueryMapDefinition).
(#id -> #'9d4a27b4-8a76-bc4d-9738-0a575bc69f07').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 6:12:20 pm')})).
(#sourceCode -> '[:hit | #text -> ((((hit at: #info) at: #authors)
	ifNil: [#()]
	ifNotNil: [:authors | authors at: #author]) inject: '''' into: [:result :author |
		result, (author convertFromEncoding: ''utf-8''), '', ''])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})