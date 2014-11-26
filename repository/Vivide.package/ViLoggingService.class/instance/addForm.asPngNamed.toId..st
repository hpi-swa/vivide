couch db - convenience
addForm: aForm asPngNamed: name toId: uuid

	^ self
		addAttachement: name
		contents: (ByteArray streamContents: [:strm |
			PNGReadWriter putForm: aForm onStream: strm])
		type: 'image/png'
		id: uuid