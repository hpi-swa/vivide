*vivide-morphic
shrinkWrap
	"Change bounds to match submorphBounds."

	self submorphBounds in: [:newBounds |
		| deltaPosition |
		deltaPosition := newBounds topLeft - self topLeft.
		self submorphsDo: [:morph |
			morph topLeft: morph topLeft - deltaPosition].
		self
			topLeft: self topLeft + deltaPosition;
			extent: newBounds extent].