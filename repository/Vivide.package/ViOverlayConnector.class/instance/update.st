updating
update
	
	| newBounds |
	self updateReferences.
	(self sourceMorphs isEmpty or: [self targetMorphs isEmpty])
		ifTrue: [^ self delete].
	
	newBounds := self sourceMorphs first boundsIn: self owner.
	
	self sourceMorphs, self targetMorphs do: [:morph |
		newBounds := newBounds quickMerge: (morph boundsIn: self owner)].
	
	self
		bounds: (newBounds outsetBy: 5);
		comeToFront;
		redrawLater.