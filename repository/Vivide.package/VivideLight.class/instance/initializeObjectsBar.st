initialization
initializeObjectsBar

	objectsBar := ViObjectsBar new
		drawBackground: false;
		hResizing: #spaceFill.

	objectsBar resizeHandle
		target: self;
		minSize: 200.
	
	objectsBar contentContainer addAllMorphs: (#(
		('Snippet' createSnippet)
		('Class' createClass)
"		('Tag' createTag)"
		('Memo' createMemo)
	) collect: [:buttonSpec | | btn |
		btn := ViDraggableButton new
			color: (Color fromString: '#C6CBD6');
			hResizing: #spaceFill;  
	"		buttonStyle: #textUnderIcon;"
			icon: UiFugueIcons plusSmallIcon asWireframeSunken;
			text: '<font color="#555555"><b>', buttonSpec first, '</b></font>' asHtmlText;
			balloonText: 'Drag me :)';
			layoutInset: (2@3 corner: 2@0);
				dragTransferType: #operation;
				passenger: buttonSpec second.
		self connect: btn signal: #clicked: toSelector: buttonSpec second.
		btn]).