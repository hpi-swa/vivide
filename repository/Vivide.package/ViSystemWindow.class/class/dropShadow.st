drop shadows
dropShadow
	"Stencil for the shadow. Should be the top-right corner. 
	
	self dropShadow asMorph openInHand."

	^ self shadowCache
		at: #dropShadow
		ifAbsentPut: [
			Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes:
				self dropShadowContents readStream)]