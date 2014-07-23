accessing
breakpointViewIcon

	^ Icons at: #breakpointView ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self breakpointViewContents readStream)]