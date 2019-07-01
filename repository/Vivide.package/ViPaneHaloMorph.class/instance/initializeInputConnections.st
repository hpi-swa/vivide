as yet unclassified
initializeInputConnections

	| walls |
	self assert: self target notNil.

	walls := Set new.
	self target connections do: [:c | walls add: c source; add: c target].

	inputConnections := OrderedDictionary new.

	self target connections
		select: [:connection | connection isValid and: [connection target == self target]]
		thenDo: [:connection |
			inputConnections add: (connection -> {
				"1) Connection morph"
				ViPaneConnectionMorph new
					deferUpdates: true;
					setFrom: connection source rightCenter
						to: connection target leftCenter
						walls: walls asArray;
					borderColor: self fanInColor;
					yourself.
				"2) Connection button"
				UiToolButton new
					color: self fanInColor;
					autoRaise: false;
					buttonStyle: #iconOnly;
					icon: connection class icon scaledToDisplay;
					layoutInset: 2;
					balloonText: (connection target currentQuery
						ifNil: ['(no query)']
						ifNotNil: [:q | q nextLabel]);
					setProperty: #paneIn toValue: connection source;
					addDropShadow;
					in: [:button |
						self connect: button signal: #clicked: toSelector: #logDataflowChanged.
						self connect: button signal: #clicked: to: connection selector: #detach.
						self connect: button signal: #clicked: toSelector: #initializeInputConnections.
						self connect: button signal: #clicked: toSelector: #endInteraction];
					yourself.
			})].