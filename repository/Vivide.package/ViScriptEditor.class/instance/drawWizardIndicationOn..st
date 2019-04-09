drawing
drawWizardIndicationOn: aCanvas

	self isWizardActive ifTrue: [
		aCanvas
			translucentImage: UiFugueIcons wandSmallIcon scaledToDisplay
			at: self textField topLeft + (0@2). 
		].