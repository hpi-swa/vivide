actions
sendReportToDisk

	"self generateReportFiles do: [:f |
		(FileStream forceNewFileNamed: 'report\\', (f at: #path), (f at: #name)) binary
			nextPutAll: (f at: #contents) base64Decoded;
			close]."

	(FileStream forceNewFileNamed: 'report.zip') binary ifNotNil: [:strm |
		self generateReportArchive writeTo: strm.
		strm close].
		
	"UserDialogBoxMorph inform: 'Feedback report was sent to disk:', String cr,
		FileDirectory default pathName asString, '\report'."