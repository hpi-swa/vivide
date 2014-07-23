actions
sendReportToWeb

	| strm |
	strm := RWBinaryOrTextStream on: String new.
	self generateReportArchive writeTo: strm.
	
	^ (HTTPSocket
		httpPut: strm contents base64Encoded
		to: (Preferences
			valueOfPreference: #feedbackServer
			ifAbsent: ['127.0.0.1:8080'])
		user: 'vivide'
		passwd: 'feedback') explore.