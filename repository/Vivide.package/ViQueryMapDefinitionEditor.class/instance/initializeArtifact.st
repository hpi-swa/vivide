initialization
initializeArtifact

	| container |
	container := Morph new
		color: Color transparent;
		layoutPolicy: ViVerticalLayout new;
		hResizing: #spaceFill.
		
	edit := ViQueryDefinitionEdit new
		outerBorderWidth: 0;
		disableChooseDefinition;
		scrollingMode: #limit;
		autoCreateArtifacts: true.
	edit eventHandler grabKeyboardOnMouseEnter: true.

	codeBox := Morph new
		color: Color transparent;
		layoutPolicy: (ViVerticalLayout new
			layoutInset: (15@3 corner: 0@3);
			cellInset: 3).

	subscribeEdit := ViQueryDefinitionEdit new
		outerBorderWidth: 0;
		color: (Color gray: 0.93).
	subscribeEdit eventHandler grabKeyboardOnMouseEnter: true.
	unsubscribeEdit := ViQueryDefinitionEdit new
		outerBorderWidth: 0;
		color: (Color gray: 0.93).
	unsubscribeEdit eventHandler grabKeyboardOnMouseEnter: true.

	codeBox addAllMorphs: {subscribeEdit.unsubscribeEdit}.

	self connect: edit signal: #editingFinished: toSelector: #tryAcceptSourceCode.
	self connect: subscribeEdit signal: #editingFinished: toSelector: #acceptSubscribeCode.
	self connect: unsubscribeEdit signal: #editingFinished: toSelector: #acceptUnsubscribeCode.
	
	container addMorph: edit.
	self artifact: container.
	
	self flag: #hacky.
	resizeHandle submorphs first target: edit.