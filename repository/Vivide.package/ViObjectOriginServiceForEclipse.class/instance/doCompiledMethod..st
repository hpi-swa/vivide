squeak - kernel
doCompiledMethod: aMethod

	| repo category |
	repo := (PackageOrganizer default packageOfMethod: aMethod methodReference ifNone: [])
		ifNil: ['local']
		ifNotNil: [:pkg |
			[ViLabelServiceForEclipse new doMCPackage: pkg mcPackage]
				on: Error do: ['unknown']].
	category := ViLabelServiceForEclipse new doSystemCategory: aMethod methodClass category.
	^ repo, '.', category