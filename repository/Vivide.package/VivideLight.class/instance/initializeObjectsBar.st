initialization
initializeObjectsBar

	objectsBar := ViObjectsBar new
		drawBackground: false;
		hResizing: #spaceFill.

	objectsBar resizeHandle
		target: self;
		minSize: 200.
	
	objectsBar contentContainer addAllMorphs: ({
		{'Snippet'. [ViSourceCodeSnippet new]}.
		{'Class'. [ViSourceCodeSnippet withCode: ViClassDefinitionEditor defaultClassDefinition]}.
		{'Memo'. [Text new]}
	} collect: [:buttonSpec | | btn |
		btn := ViDraggableButton new
			color: (Color fromString: '#C6CBD6');
			hResizing: #spaceFill;  
	"		buttonStyle: #textUnderIcon;"
			icon: UiFugueIcons plusSmallIcon asWireframeSunken;
			text: '<font color="#555555"><b>', buttonSpec first, '</b></font>' asHtmlText;
			balloonText: 'Drag me :)';
			layoutInset: (2@3 corner: 2@0);
			
			dragTransferType: #objects;
			passenger: {buttonSpec second};
			dragFlags: #(evaluate).
		"self connect: btn signal: #clicked: toSelector: buttonSpec second."
		btn]).