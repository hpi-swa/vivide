initialization
initializeSecondaryList
	"Prepare to be a context menu."
	
	super initializeSecondaryList.
	secondaryList
		selectionColor: (Color gray: 0.85);
		selectionMode: UiViewSingleSelection;
		dragDropSpec: nil;
		groupSpec: ViContextMenuGroupSpec new.
		
	secondaryList verticalScrollBar color: Color transparent.
			
	self connect: secondaryList signal: #clicked: toSelector: #onOperationClicked:.
	self connect: secondaryList signal: #returnPressed: toSelector: #onOperationClicked:.