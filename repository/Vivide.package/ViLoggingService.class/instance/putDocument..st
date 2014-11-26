couch db
putDocument: dictionaryWithIdAndRev
	"Requires _id and _rev to be present in given dictionary."

	(WebClient httpDo: [:client | client
		httpPut: ('{1}{2}/{3}' format: {
			self class couchDB.
			self class database.
			dictionaryWithIdAndRev at: #'_id'})
		content: (dictionaryWithIdAndRev copy in: [:d | d removeKey: #'_id'. d]) asJsonString
		type: 'plain/text'
		do: [:req | req
			headerAt: 'Authorization'
			put: ('Basic ', ((client authParams at: #username), ':', (client authParams at: #password)) base64Encoded)]]) in: [:response |
				self rememberDocumentId: (dictionaryWithIdAndRev at: #'_id').
				^ Json readFrom: response content readStream].