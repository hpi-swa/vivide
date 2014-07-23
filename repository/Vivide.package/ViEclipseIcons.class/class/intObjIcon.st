accessing
intObjIcon

	^ Icons at: #intObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self intObjContents readStream)]