as yet unclassified
selectedItemsOn: morph

	^ morph submorphs
		select: [:m | (m valueOfProperty: #isSelected) == true]