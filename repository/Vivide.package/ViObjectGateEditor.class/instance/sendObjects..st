actions
sendObjects: someObjects

	someObjects do: [:obj |
		objectGate sendObject: obj].
	
	ViAnimatedImageMorph
		flyOutOn: self ui dropTarget
		with: UiFugueIcons inboxUploadIcon.