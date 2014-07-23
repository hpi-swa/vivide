accessing
logicalPackageObjIcon

	^ Icons at: #logicalPackageObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self logicalPackageObjContents readStream)]