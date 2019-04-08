drawing
drawWizardIndicationOn: aCanvas

	shouldPropose == true ifTrue: [
		aCanvas
			translucentImage: UiFugueIcons wandSmallIcon scaledToDisplay
			at: self textField topLeft + (0@2). 
		].