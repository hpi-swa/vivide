adding pages
addButtonForPage: queryPage

	| newPageBtn |
	newPageBtn := ViNotificationToolButton new
		layoutInset: 0;
		color: (Color gray: 0.85).
	
	self connect: queryPage signal: #currentQueryChanged: toSelector: #updateButtonForPage: pattern: #(0).
	self connect: newPageBtn signal: #pressed toSelector: #chooserQueryForPageButton: pattern: #(0).
		
	self ui pageButtonGroup addMorphBack: newPageBtn.
	self updateButtonForPage: queryPage.