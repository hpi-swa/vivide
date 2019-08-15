squeak - kernel
doClassDescription: cls

	^ cls hasTraitComposition
		ifTrue: [(super doClassDescription: cls) asTextFromHtml]
		ifFalse: [super doClassDescription: cls]   