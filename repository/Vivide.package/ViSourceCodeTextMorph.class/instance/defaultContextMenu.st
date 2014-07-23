accessing
defaultContextMenu

	| menu |
	menu := ViContextMenu new.
	
	"Connect back to editor to make source code more readable."
	menu
		addIcon: UiFugueIcons folderOpenDocumentTextIcon text: 'Open it (CMD+O)' receiver: self editor selector: #openIt;
		addSeparator;
		addIcon: UiSilkIcons cogIcon text: 'Do it (CMD+D)' receiver: self editor selector: #doIt;
		addIcon: UiSilkIcons bugIcon  text: 'Debug it' receiver: self editor selector: #debugIt;
		addIcon: UiFugueIcons clockSelectIcon text: 'Tally it' receiver: self editor selector: #tallyIt;
		addSeparator;
		addIcon: UiSilkIcons printerIcon text: 'Print it (CMD+P)' receiver: self editor selector: #printIt;
		addIcon: UiFugueIcons magnifierIcon text: 'Explore it (CMD+I)' receiver: self editor selector: #exploreIt;
		addIcon: UiFugueIcons documentTreeIcon text: 'Browse it (CMD+B)' receiver: self editor selector: #browseIt;
		addSeparator;
		addIcon: UiFugueIcons arrowStepIcon text: 'Senders of it (CMD+N)' receiver: self editor selector: #sendersOfIt;
		addIcon: UiFugueIcons scriptsTextIcon text: 'Implementors of it (CMD+M)' receiver: self editor selector: #implementorsOfIt.

	^ menu