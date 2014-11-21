layout
resize: morph in: bounds

	| scale targetBounds offset |
	"Transcript cr; show: 'Resize to ', bounds asString."
	targetBounds := self boundsForSubmorphs: morph.
	offset := targetBounds topLeft - bounds topLeft.
	scale := bounds extent / (targetBounds extent + offset).
	morph submorphs do: [:m |
		m
			topLeft: ((m topLeft - bounds topLeft) * scale) rounded + bounds topLeft;
			extent: (m extent * scale) rounded].

	self
		fixLayoutFor: morph submorphs allButFirst
		pivot: morph submorphs first.