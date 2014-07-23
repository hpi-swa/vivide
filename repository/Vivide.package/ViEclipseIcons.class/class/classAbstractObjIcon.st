accessing
classAbstractObjIcon

	^ Icons at: #classAbstractObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self classAbstractObjContents readStream)]