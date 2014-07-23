initialization
initializeArtifact

	self ui initializePanel.
	
	ViQueryChangeNotifier uniqueInstance
		notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind
		change: ModifiedEvent changeKind using: #updateFromEvent:.
	
"	self ui detailsBtn setIcon: UiFugueIcons pencilSmallIcon."
	self ui detailsBox hideFull.
	self connect: self ui detailsBtn signal: #toggled: toSelector: #setDetailsVisible:.
	
"	self updateViewList."
	
	self ui definitionEdit autoCreateArtifacts: true.
	self ui definitionEdit eventHandler grabKeyboardOnMouseEnter: true.
	self connect: self ui definitionEdit signal: #editingFinished: toSelector: #tryAcceptSourceCode.
	self connect: self ui definitionEdit signal: #definitionChanged toSelector: #updateTypeFromEditor.

	self ui referenceEdit acceptOnFocusLost: false.
	self connect: self ui referenceEdit signal: #editingFinished: toSelector: #acceptReference.
	self connect: self ui openReferenceBtn signal: #clicked: toSelector: #chooseReference.

	self ui labelEdit acceptOnFocusLost: false.
	self connect: self ui labelEdit signal: #editingFinished: toSelector: #acceptLabel.

	self connect: self ui iconBtn signal: #clicked: toSelector: #chooseIcon.

	self initializeTypeMenu.
	self connect: self ui typeBtn signal: #clicked: to: typeMenu selector: #popUpForMorph: pattern: {#=. self ui typeBtn}.

	self artifact: self ui panel.