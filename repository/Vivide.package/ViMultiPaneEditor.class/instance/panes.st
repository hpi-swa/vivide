accessing
panes

	^ self submorphs select: [:m | m isKindOf: ViPane]