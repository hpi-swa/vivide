private
generateReportArchive

	| zip |
	zip := ZipArchive new.
	self generateReportFiles do: [:f | | member |
		member := zip
			addString: (f at: #contents) base64Decoded
			as: (f at: #path), (f at: #name).
		member desiredCompressionMethod: ZipArchive compressionDeflated].
	
	^ zip