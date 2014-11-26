couch db
addAllDocuments: someDictionaries

	someDictionaries ifEmpty: [^ #()].

	"Give ids to all new documents."
	someDictionaries do: [:dict |
		dict at: #'_id' ifAbsentPut: [UUID new asString copyWithoutAll: '-']].

	(Dictionary newFrom: {#docs -> someDictionaries}) in: [:content |
		(WebClient httpDo: [:client | client
			httpPost:  ('{1}{2}/_bulk_docs' format: {
				self class couchDB.
				self class database})
			content: content asJsonString
			type: 'application/json'
			do: [:req | req
				headerAt: 'Authorization'
				put: ('Basic ', ((client authParams at: #username), ':', (client authParams at: #password)) base64Encoded)]]) in: [:response |
					someDictionaries do: [:d | self rememberDocumentId: (d at: #'_id')].
					^ Json readFrom: response content readStream]].