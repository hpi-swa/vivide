actions add/remove
addIcon: aForm text: aLabel receiver: anObject selector: aSymbol

	^ (super
		addIcon: aForm
		text: aLabel
		receiver: anObject 
		selector: aSymbol)
			buttonStyle: #textUnderIcon  