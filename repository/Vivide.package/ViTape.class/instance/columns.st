accessing
columns

	^ self submorphs select: [:m | m isKindOf: ViColumn]