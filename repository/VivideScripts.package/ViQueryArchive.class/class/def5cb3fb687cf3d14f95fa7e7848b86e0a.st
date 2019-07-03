definitions
def5cb3fb687cf3d14f95fa7e7848b86e0a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:searchQuery | (HTTPSocket
		httpGetDocument: ('http://dblp.org/search/api/?q={1}&h=1000&c=4&f=0&format=json' format: {searchQuery encodeForHTTP})
		args: nil
		accept: 'text/json'
		request: '')
		in: [:response | (response isKindOf: MIMEDocument)
				ifTrue: [Json readFrom: response content readStream]
				ifFalse: [#()]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'5cb3fb68-7cf3-d14f-95fa-7e7848b86e0a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 5:56:13 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:searchQuery | (HTTPSocket
		httpGetDocument: (''http://dblp.org/search/api/?q={1}&h=1000&c=4&f=0&format=json'' format: {searchQuery encodeForHTTP})
		args: nil
		accept: ''text/json''
		request: '''')
		in: [:response | (response isKindOf: MIMEDocument)
				ifTrue: [Json readFrom: response content readStream]
				ifFalse: [#()]]]]
		value: in) do: [:result | out addAll: result asList]]')
})