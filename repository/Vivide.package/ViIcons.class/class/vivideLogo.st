accessing
vivideLogo
	"self vivideLogo asMorph openInHand"
	^ Icons
		at: #vivideLogo
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self vivideLogoContents readStream)].