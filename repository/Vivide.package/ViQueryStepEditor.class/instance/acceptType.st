memento - data
acceptType

	| newInstance |
	self currentType = self currentTypeFromStep
		ifTrue: [^ self].
		
	self currentType in: [:spec |
		newInstance := self step class ~~ spec key
			ifTrue: [spec key new
				id: self step id;
				organization: self step organization;
				properties: self step properties;
				
				icon: self step icon;
				label: self step label;

				next: self step next;
				definition: self step definition;
				viewDefinition: self step viewDefinition;

				yourself]
			ifFalse: [self step].
		
		"Type means step class AND type of query step definition (aka. source code snippet)"
		newInstance isReferenceStep
			ifFalse: [self currentDefinition mapType: spec value first].
		].
	
	newInstance ~~ self step
		ifTrue: [self step become: newInstance].