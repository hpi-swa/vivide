preferences
couchDB
	<preference: 'CouchDB Http(s) URL'
		category: 'Vivide'
		description: 'URL that should be used for logging requests.'
		type: #String>
	^ CouchDB ifNil: [ 'http://127.0.0.1:8080/' ]