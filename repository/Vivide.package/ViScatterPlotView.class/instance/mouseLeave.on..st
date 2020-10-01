as yet unclassified
mouseLeave: evt on: morph

	(morph valueOfProperty: #isSelected) == true
		ifFalse: [self unhighlightItem: morph].