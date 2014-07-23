instance creation
open

	(ActiveWorld submorphs
		detect: [:m |	m isKindOf: self]
		ifNone: [self new]) open