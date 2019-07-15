steps
stepe548783510a59d408ab06f95df9b5740
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'5cb3fb68-7cf3-d14f-95fa-7e7848b86e0a').
(#iconCode -> 'nil').
(#id -> #'e5487835-10a5-9d40-8ab0-6f95df9b5740').
(#isProperty -> false).
(#label -> 'DBLP Search').
(#next -> #'b1afac3a-0000-8544-9dce-ebfda96b30b6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 5:56:13 pm').
(#inputKind -> String).
(#priority -> 6110).
(#view -> ViTreeViewExtended)
}))
})