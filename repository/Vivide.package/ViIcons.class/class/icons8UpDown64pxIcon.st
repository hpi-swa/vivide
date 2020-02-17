methods - accessing
icons8UpDown64pxIcon
	"Auto-generated.
	Icon8
	© 2018 Icon8
	Website: https://icons8.com
	License: https://creativecommons.org/licenses/by-nd/3.0/"
	^ Icons at: #viIcons8UpDown64px
	ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self icons8UpDown64pxIconContents readStream) ].