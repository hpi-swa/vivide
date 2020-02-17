updating
updatePropertyBar

	self propertyBar
		removeAllMorphs;
		height: 1.
	
	(self propertiesToIgnore keys select: [:key | (self propertiesToIgnore at: key) isNil]), #(before after) in: [:ignore | 
		(self scriptScriptProperties keys copyWithoutAll: ignore) do: [:property |
			| propertyValue raw text icon |
			propertyValue := (self thisStep valueOfProperty: property) "no blocks" value.
			
			"The WHAT is more important than the TRUTH."
			raw := propertyValue.
			propertyValue = true ifTrue: [propertyValue := property].
			
			icon := ViIconService doObject: propertyValue.
			(icon notNil and: [icon isTransparent]) ifTrue: [icon := nil].
			text := (ViLabelService doObject: propertyValue) ifNotNil: #asString.
			
			(text notNil or: [icon notNil]) ifTrue: [
				self propertyBar addMorphBack: (ViDraggableButton new
					autoRaise: true;
					color: Color white;
					layoutInset: (-1@ -2 corner: -2@ -1);
					balloonText: '#', property, ' -> ', raw printString;
					text: (icon ifNotNil: [nil] ifNil: [text ifNotNil: [
						((text padded: #left to: 3 with: Character space) truncateWithElipsisTo: 10) asText addAttribute: (TextColor color: (Color gray: 0.3))]]);
					icon: icon;
					buttonStyle: (icon notNil ifTrue: [#iconOnly] ifFalse: [#textOnly]);
					
					"The object behind the button..."
					in: [:btn | self connect: btn signal: #clicked: to: propertyValue selector: #open];
					dragTransferType: #object;
					passenger: propertyValue;
					
					yourself).
					].
				].
			].