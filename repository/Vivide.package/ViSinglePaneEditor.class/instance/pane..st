as yet unclassified
pane: aPane

	self pane ifNotNil: [:p | p delete].
	self addMorphBack: aPane.
	self updateHeaderText.