initialization
initializeObjectsBar

	objectsBar := ViObjectsBar new.
	
	objectsBar contentContainer addAllMorphs: (#(
		('Snippet' createSnippet)
		('Class' createClass)
"		('Tag' createTag)"
		('Memo' createMemo)
	) collect: [:buttonSpec | | btn |
		btn := ViDraggableButton new
			color: (Color gray: 0.85);
			hResizing: #spaceFill;  
	"		buttonStyle: #textUnderIcon;"
			icon: UiFugueIcons plusSmallIcon asWireframeSunken;
			text: '<font color="#555555"><b>', buttonSpec first, '</b></font>' asHtmlText;
			balloonText: 'Drag me :)';
			layoutInset: (2@3 corner: 2@0);
				dragTransferType: #operation;
				passenger: buttonSpec second.
		self connect: btn signal: #clicked: to: btn selector: #startDrag.
		btn]).