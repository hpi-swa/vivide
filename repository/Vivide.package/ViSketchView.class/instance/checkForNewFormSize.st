as yet unclassified
checkForNewFormSize

	form extent < self extent ifTrue: [
		| newForm |
		newForm := Form extent: self extent + (100@100) depth: form depth.
		newForm copyBits: form boundingBox from: form at: 0@0 clippingBox: newForm boundingBox rule: Form over fillColor: nil.
		
		form := newForm.
		canvas := form getCanvas].