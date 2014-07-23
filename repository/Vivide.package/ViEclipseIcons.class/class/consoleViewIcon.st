accessing
consoleViewIcon

	^ Icons at: #consoleView ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self consoleViewContents readStream)]