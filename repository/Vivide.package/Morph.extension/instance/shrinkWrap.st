*vivide-morphic
shrinkWrap
	"Change bounds to match submorphBounds."

	self flag: #remove. "mt: Use something from Morphic instead."
	self fullBounds. "Do full layout first."
	self submorphBoundsForShrinkWrap in: [:newBounds |
		| deltaPosition |
		deltaPosition := newBounds topLeft - self topLeft.
		self submorphsDo: [:morph |
			morph topLeft: morph topLeft - deltaPosition].
		self
			topLeft: self topLeft + deltaPosition;
			extent: newBounds extent].