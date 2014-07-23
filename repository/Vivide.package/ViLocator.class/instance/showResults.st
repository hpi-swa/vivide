visibility
showResults

	resultListDecorator comeToFront; overlappingWidth: self width.
	resultListDecorator bottomLeft: self topLeft + (0@1).
	previewHandler discardPreview.
	
	resultListDecorator owner ifNil: [
		resultListDecorator openInWorld].
	
	self redrawLater.