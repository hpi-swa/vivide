drawing
drawWizardIndicationOn: aCanvas

	shouldPropose == true ifTrue: [
		aCanvas
			translucentImage: UiFugueIcons wandSmallIcon scaledToDisplay
			at: edit topLeft + (0@2). 
		].