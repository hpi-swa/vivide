updating
updateReferenceBars
	
	{
		{ self referenceBeforeBar. self thisStep before. self thisStep beforeScripts. #icons8Right264pxIcon. self class beforeBarTextColor   }.
		{ self referenceAfterBar. self thisStep after. self thisStep afterScripts ifEmpty: [self thisStep next ifNotNil: [#()] ifNil: [self thisStep nextStepAfterThisStep asList]]. #icons8CurvedArrow64pxIcon . self class afterBarTextColor }.
	} do: [:spec |
		| bar scripts icon |
		bar := spec first.
		scripts := spec second collect: [:id | spec third detect: [:step | step id = id] ifNone: [id]].
		scripts := scripts, (spec third copyWithoutAll: scripts).
		
		"Reset GUI."
		bar removeAllMorphs; height: 1.
		bar disableTableLayout: scripts isEmpty.
		bar visible: scripts notEmpty.
		
		bar visible ifTrue: [
			icon := ViIcons perform: spec fourth.
			bar addMorph: icon scaledToDisplay asMorph].
		
		"Build GUI."
		scripts do: [:stepOrId |
			stepOrId isScript ifFalse: [
				bar addMorphBack: ((stepOrId printString asText
					addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
					addAttribute: (TextColor color: spec fifth);
					yourself) asMorph lock).
				
				] ifTrue: [
			bar addMorphBack: (ViDraggableButton new
					autoRaise: true;
					color: bar color;
					layoutInset: (-1@ -2 corner: -2@ -1);
					balloonText: stepOrId id printString;
					text: ((stepOrId nextLabel ifNil: [stepOrId id printString]) truncateWithElipsisTo: 20) asText;
					icon: stepOrId nextIcon;
					
					"The object behind the button..."
					in: [:btn | self connect: btn signal: #clicked: to: stepOrId selector: #editScript];
					dragTransferType: #object;
					passenger: stepOrId;
					
					yourself).
					]].
	].
			