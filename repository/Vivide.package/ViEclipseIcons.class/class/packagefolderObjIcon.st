accessing
packagefolderObjIcon

	^ Icons at: #packagefolderObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self packagefolderObjContents readStream)]