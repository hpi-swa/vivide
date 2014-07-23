visibility
hideResults

	resultListDecorator owner ifNil: [^ self].
	resultListDecorator delete.
	previewHandler discardPreview.
	self stopSearch.

	self redrawLater.