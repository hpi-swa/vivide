squeak - kernel
doClassDescription: cls

	^ cls hasTraitComposition
		ifTrue: [(super doClassDescription: cls) asHtmlText]
		ifFalse: [super doClassDescription: cls]   