definitions
def71a073f623bcc9478277cf251478913e
	<definition>

	^ ((Dictionary new) add: (#inputKind->String); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 May 2014 5:56:13 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'71a073f6-23bc-c947-8277-cf251478913e'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:searchQuery | (HTTPSocket
		httpGetDocument: (''http://dblp.org/search/api/?q={1}&h=1000&c=4&f=0&format=json'' format: {searchQuery encodeForHTTP})
		args: nil
		accept: ''text/json''
		request: '''')
		in: [:response | (response isKindOf: MIMEDocument)
				ifTrue: [Json readFrom: response content readStream]
				ifFalse: [#()]]]'); add: (#mapType->#each); add: (#block->[:searchQuery | (HTTPSocket
		httpGetDocument: ('http://dblp.org/search/api/?q={1}&h=1000&c=4&f=0&format=json' format: {searchQuery encodeForHTTP})
		args: nil
		accept: 'text/json'
		request: '')
		in: [:response | (response isKindOf: MIMEDocument)
				ifTrue: [Json readFrom: response content readStream]
				ifFalse: [#()]]]); yourself)