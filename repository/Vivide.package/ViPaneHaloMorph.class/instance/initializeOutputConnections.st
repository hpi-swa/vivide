as yet unclassified
initializeOutputConnections

	| walls |
	self assert: self target notNil.

	walls := Set new.
	self target connections do: [:c | walls add: c source; add: c target].

	outputConnections := OrderedDictionary new.

	self target connections
		select: [:connection | connection isValid and: [connection source == self target]]
		thenDo: [:connection |
			outputConnections add: (connection -> {
				"1) Connection morph"
				ViPaneConnectionMorph new
					deferUpdates: true;
					setFrom: connection source rightCenter
						to: connection target leftCenter
						walls: walls asArray;
					borderColor: self fanOutColor;
					yourself.
				"2) Connection button"
				UiToolButton new
					color: self fanOutColor;
					autoRaise: false;
					buttonStyle: #iconOnly;
					icon: connection class icon scaledToDisplay;
					layoutInset: 2;
					balloonText: (connection target currentQuery
						ifNil: ['(no query)']
						ifNotNil: [:q | q nextLabel]);
					setProperty: #paneOut toValue: connection target;
					addDropShadow;
					in: [:button |
						self connect: button signal: #clicked: toSelector: #logDataflowChanged.
						self connect: button signal: #clicked: to: connection selector: #detach.
						self connect: button signal: #clicked: toSelector: #initializeOutputConnections.
						self connect: button signal: #clicked: toSelector: #endInteraction];
					yourself.
			})].