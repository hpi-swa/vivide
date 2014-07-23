private
reportId

	^ String streamContents: [:strm |
		timestamp date printOn: strm format: #(3 2 1 '-' 1 1 2).
		strm nextPut: $_; nextPutAll:
			((String streamContents: [:s | timestamp time print24: true showSeconds: true on: s])
				copyReplaceAll: ':' with: '')]