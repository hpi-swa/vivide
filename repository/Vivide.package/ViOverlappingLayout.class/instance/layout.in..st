as yet unclassified
layout: morph in: bounds

	| box alignment |
	morph submorphsDo: [:m |
		m layoutInBounds: bounds.
		
		"Override #cellPositioning to use the submorph's value instead of the owner's."
		box := m bounds.
		alignment := m cellPositioning.
		box := box align: (box perform: alignment) with: (bounds perform: alignment).
		m bounds: box].