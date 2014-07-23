accessing
buttons

	^ self submorphs select: [:m | m isKindOf: UiToolButton]