layout
resize: morph in: bounds

	| scale targetBounds offset oldSnap |
	"Transcript cr; show: 'Resize to ', bounds asString."
	targetBounds := self boundsForSubmorphs: morph.
	"offset := targetBounds topLeft - bounds topLeft."
	scale := bounds extent / (targetBounds extent "+ offset").
	morph submorphs do: [:m |
		m
			topLeft: ((m topLeft - bounds topLeft) * scale) rounded + bounds topLeft;
			extent: (m extent * scale) rounded].

	self flag: #refactor. "mt: No snapping but just fix the positions/extent..."
	oldSnap := self snapValue.
	self snapValue: 500.	
	[self
		fixLayoutFor: morph submorphs allButFirst
		pivot: morph submorphs first]
			ensure: [self snapValue: oldSnap].

	"In case of snapping, we need to shrink..."
	self shrinkToSubmorphsOf: morph in: bounds.