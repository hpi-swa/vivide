layout
resize: morph in: bounds

	| scale targetBounds offset |
	targetBounds := morph submorphBounds.
	offset := targetBounds topLeft - bounds topLeft.
	scale := bounds extent / (targetBounds extent + offset).
	morph submorphs do: [:m |
		m
			topLeft: ((m topLeft - bounds topLeft) * scale) rounded + bounds topLeft;
			extent: (m extent * scale) rounded].
	
	self flag: #fixit. "mt: Watch for proportional spaces between morphs. Not wanted."
	"self removeEmptyLinesFor: morph submorphs in: bounds keepExtent: false."
	self ensureCellInsetFor: morph submorphs.