drag/drop
startConnect: event with: connectHandle

	| walls |
	
	event hand obtainHalo: self.
	self removeAllMorphs.
	positionOffset := event cursorPoint - target topLeft.

	outputConnections valuesDo: [:spec |
		spec first borderColor: (Color gray: 0.85).
		self addMorph: spec first]. 

	walls := Set with: self target.
	self target connections do: [:c | walls add: c source; add: c target].

	newOutputConnection := ViPaneConnectionMorph new
		setFrom: connectHandle center
			to: event cursorPoint
			walls: walls asArray;
		borderColor: self fanOutColor;
		yourself.

	self
		addMorph: newOutputConnection;
		addMorph: connectHandle.