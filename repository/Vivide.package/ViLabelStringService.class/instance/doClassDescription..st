operations
doClassDescription: cls

	^ cls hasTraitComposition
		ifTrue: ['<font color="#3c7113">{1}</font>' format: {cls name}]
		ifFalse: [cls name]  