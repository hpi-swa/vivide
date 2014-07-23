as yet unclassified
doMethodReference: ref

	| repo category |
	repo := (PackageOrganizer default packageOfMethod: ref ifNone: [])
		ifNil: ['local']
		ifNotNil: [:pkg |
			[ViLabelServiceForEclipse new doMCPackage: pkg mcPackage]
				on: Error do: ['unknown']].
	category := ViLabelServiceForEclipse new doSystemCategory: ref actualClass category.
	^ repo, '.', category