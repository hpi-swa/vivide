couch db
putDocument: dictionaryWithIdAndRev
	"Requires _id and _rev to be present in given dictionary."

	(WebClient
		httpPut: ('{1}{2}/{3}' format: {
			self class couchDB.
			self class database.
			dictionaryWithIdAndRev at: #'_id'})
		content: (dictionaryWithIdAndRev copy in: [:d | d removeKey: #'_id'. d]) asJsonString
		type: 'plain/text') in: [:response |
			self rememberDocumentId: (dictionaryWithIdAndRev at: #'_id').
			^ Json readFrom: response content readStream].