as yet unclassified
getPlain: suffix

	| response |
	response := HTTPSocket
		httpGetDocument: 'http://smalltalkhub.com', suffix
		args: nil
		accept: 'text/plain'
		request: ''.
	^ response "(response isKindOf: MIMEDocument)
		ifTrue: [response content]
		ifFalse: []"