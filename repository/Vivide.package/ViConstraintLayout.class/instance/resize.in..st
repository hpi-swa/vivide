layout
resize: morph in: bounds

	| scale targetBounds offset oldSnap |
	"Transcript cr; show: 'Resize to ', bounds asString."
	targetBounds := self boundsForSubmorphs: morph.
	"offset := targetBounds topLeft - bounds topLeft."
	scale := bounds extent / (targetBounds extent "+ offset").
	(morph submorphs sorted: [:m1 :m2 |
		(m1 topLeft x // self snapValue) <= (m2 topLeft x // self snapValue)
			and: [(m1 topLeft y // self snapValue) <= (m2 topLeft y // self snapValue)]]) in: [:sortedMorphs |
		sortedMorphs do: [:m |
			m
				topLeft: ((m topLeft - bounds topLeft) * scale) rounded + bounds topLeft;
				extent: (m extent * scale) rounded].

		self flag: #refactor. "mt: No snapping but just fix the positions/extent..."
		oldSnap := self snapValue.
"	self snapValue: 500."
		self
			fixLayoutFor: sortedMorphs allButFirst
			pivot: sortedMorphs first.
		].
	"In case of snapping, we need to shrink..."
	self shrinkToSubmorphsOf: morph in: bounds.