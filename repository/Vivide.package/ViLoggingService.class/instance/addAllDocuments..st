couch db
addAllDocuments: someDictionaries

	someDictionaries ifEmpty: [^ self].

	"Give ids to all new documents."
	someDictionaries do: [:dict |
		dict at: #'_id' ifAbsentPut: (UUID new asString copyWithoutAll: '-')].

	(Dictionary newFrom: {#docs -> someDictionaries}) in: [:content |
		(WebClient
			httpPost:  ('{1}{2}/_bulk_docs' format: {
				self class couchDB.
				self class database})
			content: content asJsonString
			type: 'application/json') in: [:response |
				someDictionaries do: [:d | self rememberDocumentId: (d at: #'_id')].
				^ Json readFrom: response content readStream]].