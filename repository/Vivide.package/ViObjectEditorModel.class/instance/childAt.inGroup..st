item model - hierarchy
childAt: index inGroup: groupName

	| baseWrapper |
	self isRoot ifTrue: [
		^ ViObjectEditorModel new
			wrappedObject: self base;
			isRoot: false].

	baseWrapper := (contentsCache at: groupName) at: index.
	
	^ ViObjectEditorModel new
		wrappedObject: baseWrapper;
		isRoot: false