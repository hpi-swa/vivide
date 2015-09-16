panes add/remove
removedMorph: morph

	self panes
		ifEmpty: [^ self delete]
		ifNotEmpty: [:panes |
			"Unbox pane from me if last one."
			panes size = 1 ifTrue: [
				(self firstOwnerSuchThat: [:m | m isKindOf: ViMultiPaneWidget])
					ifNotNil: [:view | view unwrapPaneFromMultiPaneWidget ifTrue: [^ self] ].
				(self firstOwnerSuchThat: [:m | m isKindOf: ViSinglePaneEditor])
					in: [:editor | editor unwrapPaneFromMultiPaneWidget ifTrue: [^ self] ]].
			"See ViConstraintLayout."
			panes anyOne layoutChanged].
	
	"Update geometry, e.g. for redrawing surrounding system window."
	self flag: #sideEffects. "mt: Should not know about that here..."
	self fullBounds.