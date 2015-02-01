*vivide
openScript: symbolBlockOrScript with: someObjects

	self flag: #moveMethod. "mt: Move to ViAbstractQueryPart. Should be sufficient. Maybe just remove this method completely.... I think it was good for testing..."
	 ^ symbolBlockOrScript openScriptWith: someObjects