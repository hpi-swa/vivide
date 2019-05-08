updating
updateReferenceBars
	
	{
		{ self referenceBeforeBar. self thisStep beforeScripts. #icons8Right264pxIcon  }.
		{ self referenceAfterBar. self thisStep afterScripts ifEmpty: [self thisStep next ifNotNil: [#()] ifNil: [self thisStep nextStepAfterThisStep asList]]. #icons8CurvedArrow64pxIcon  }.
	} do: [:spec |
		| bar scripts icon |
		bar := spec first.
		scripts := spec second.
		
		"Reset GUI."
		bar removeAllMorphs; height: 1.
		bar disableTableLayout: scripts isEmpty.
		bar visible: scripts notEmpty.
		
		bar visible ifTrue: [
			icon := ViIcons perform: spec third.
			bar addMorph: icon scaledToDisplay asMorph].
		
		"Build GUI."
		scripts do: [:step |
			bar addMorphBack: (ViDraggableButton new
					autoRaise: true;
					color: bar color;
					layoutInset: (-1@ -2 corner: -2@ -1);
					balloonText: step id printString;
					text: ((step nextLabel ifNil: [step id printString]) truncateWithElipsisTo: 20) asText;
					icon: step nextIcon;
					
					"The object behind the button..."
					in: [:btn | self connect: btn signal: #clicked: to: step selector: #editScript];
					dragTransferType: #object;
					passenger: step;
					
					yourself).
					].
	].
			