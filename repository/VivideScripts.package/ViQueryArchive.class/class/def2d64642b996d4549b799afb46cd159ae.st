definitions
def2d64642b996d4549b799afb46cd159ae
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:hit | #text -> ((((hit at: #info) at: #title) at: #text) convertFromEncoding: 'utf-8') unescapeEntities asHtmlText]).
(#class -> ViQueryMapDefinition).
(#id -> #'2d64642b-996d-4549-b799-afb46cd159ae').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 2:37:53 pm')})).
(#sourceCode -> '[:hit | #text -> ((((hit at: #info) at: #title) at: #text) convertFromEncoding: ''utf-8'') unescapeEntities asHtmlText]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})