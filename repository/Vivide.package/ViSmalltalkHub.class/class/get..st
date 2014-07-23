as yet unclassified
get: suffix

	| response |
	response := HTTPSocket
		httpGetDocument: self url, suffix
		args: nil
		accept: 'text/json'
		request: ''.
	^ (response isKindOf: MIMEDocument)
		ifTrue: [Json readFrom: response content readStream]
		ifFalse: []