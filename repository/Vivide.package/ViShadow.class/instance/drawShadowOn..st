drawing
drawShadowOn: aCanvas

	| c |
	self owner ifNotNil: [:o | o submorphs size = 1 ifTrue: [^ self]].
	
	c := Color black.
	
	self orientation == #vertical ifTrue: [	
		aCanvas
			line: self topLeft + (2@1) to: self bottomLeft + (2@ -1) color: (c alpha: 0.5);
			line: self topLeft + (3@2) to: self bottomLeft + (3@ -1) color: (c alpha: 0.2);
			line: self topLeft + (1@0) to: self bottomLeft + (1@ -1) color: (c alpha: 0.8)].
		
	self orientation == #horizontal ifTrue: [	
		aCanvas
			line: self topLeft + (1@1) to: self topRight + (-1 @ 1) color: (c alpha: 0.5);
			line: self topLeft + (2@2) to: self topRight + (-1 @ 2) color: (c alpha: 0.2);
			line: self topLeft         to: self topRight + (-1 @ 0) color: (c alpha: 0.8)].