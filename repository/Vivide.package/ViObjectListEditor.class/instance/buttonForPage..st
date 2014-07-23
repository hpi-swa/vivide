accessing - convenience
buttonForPage: queryPage

	^ self ui pageButtonGroup button: (self pages indexOf: queryPage)