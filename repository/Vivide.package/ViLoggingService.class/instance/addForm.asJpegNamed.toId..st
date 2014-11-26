couch db - convenience
addForm: aForm asJpegNamed: name toId: uuid

	^ self
		addAttachement: name
		contents: (ByteArray streamContents: [:strm |
			JPEGReadWriter2 putForm: aForm onStream: strm])
		type: 'image/jpg'
		id: uuid