definitions
def71a073f623bcc9478277cf251478913e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:searchQuery | (HTTPSocket
		httpGetDocument: ('http://dblp.org/search/api/?q={1}&h=1000&c=4&f=0&format=json' format: {searchQuery encodeForHTTP})
		args: nil
		accept: 'text/json'
		request: '')
		in: [:response | (response isKindOf: MIMEDocument)
				ifTrue: [Json readFrom: response content readStream]
				ifFalse: [#()]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'71a073f6-23bc-c947-8277-cf251478913e').
(#inputKind -> String).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 5:56:13 pm')})).
(#sourceCode -> '[:searchQuery | (HTTPSocket
		httpGetDocument: (''http://dblp.org/search/api/?q={1}&h=1000&c=4&f=0&format=json'' format: {searchQuery encodeForHTTP})
		args: nil
		accept: ''text/json''
		request: '''')
		in: [:response | (response isKindOf: MIMEDocument)
				ifTrue: [Json readFrom: response content readStream]
				ifFalse: [#()]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})