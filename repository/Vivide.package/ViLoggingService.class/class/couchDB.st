preferences
couchDB
	<preference: 'CouchDB Http(s) URL'
		category: 'Vivide - Logging'
		description: 'URL that should be used for logging requests. Credentials required for basic auth.'
		type: #String>
	^ CouchDB ifNil: [ 'http://foo:bar@127.0.0.1:8080/' ]