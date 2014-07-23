updating
replaceOldView: oldView withNewView: newView

	newView hResizing: #spaceFill; vResizing: #spaceFill.	
		
	"Exchange with old query view if visible."
	oldView owner ifNotNil: [:o |
		o addMorph: newView inFrontOf: oldView.
		oldView delete].
	
	newView model: oldView model.
	oldView model: nil.