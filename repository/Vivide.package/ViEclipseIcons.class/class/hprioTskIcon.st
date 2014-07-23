accessing
hprioTskIcon

	^ Icons at: #hprioTsk ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self hprioTskContents readStream)]