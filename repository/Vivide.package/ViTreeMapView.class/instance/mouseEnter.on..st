event handling
mouseEnter: evt on: morph

	morph setProperty: #oldColor toValue: morph borderColor.
	morph borderColor: Color black.
	morph borderWidth: 2.