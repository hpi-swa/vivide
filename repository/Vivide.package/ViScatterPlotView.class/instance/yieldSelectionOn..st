graph
yieldSelectionOn: morph

	self yield: (morph submorphs
		select: [:m | (m valueOfProperty: #isSelected) == true]
		thenCollect: [:m | m valueOfProperty: #node]).