event handling
mouseLeave: evt on: morph

	(morph hasProperty: #oldColor) ifFalse: [^ self].
	morph borderColor: (morph valueOfProperty: #oldColor).
	morph removeProperty: #oldColor.
	morph borderWidth: 1.