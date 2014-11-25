initialization
reset
	
	self model ifNil: [^ self].

	"Clear."
	self panes do: [:p |
		p connections copy do: [:c | c detach]].

	self paneSpecs do: [:spec |
		(self panes
			detect: [:morph | (morph valueOfProperty: #id) = (spec at: #id)]
			ifNone: [(ViPane new
				setProperty: #id toValue: (spec at: #id);
				queries: [self organizer orderedSteps]
				yourself) in: [:m | self addMorph: m. m]]) in: [:pane |
					"1) Geometry"
					pane bounds: ((spec at: #bounds ifAbsent: [0@0 corner: 300@300]) translateBy: (self topLeft)).
					"2) Scripts"
					pane currentQuery: (self organizer stepById: (spec at: #script)).					
			]].
	"3) Dataflow"
	self paneSpecs do: [:spec | | pane |
		pane := self panes detect: [:morph | (morph valueOfProperty: #id) = (spec at: #id)].
		(spec at: #in ifAbsent: [#()]) do: [:id | 
			id = #outer ifTrue: [(ViSelectionConnection from: self to: pane) attach] ifFalse: [
			(self panes detect: [:morph | (morph valueOfProperty: #id) = id] ifNone: [])
				ifNotNil: [:providerForSelections | (ViSelectionConnection from: providerForSelections to: pane) attach]]].
		(spec at: #out ifAbsent: [#()]) do: [:id |
			id = #outer ifTrue: [(ViSelectionConnection from: pane to: self) attach] ifFalse: [
			(self panes detect: [:morph | (morph valueOfProperty: #id) = id] ifNone: [])
				ifNotNil: [:consumerForSelections | (ViSelectionConnection from: pane to: consumerForSelections) attach]]]].

	"Distribute incoming objects."
	self connections
		select: [:connection | (connection isValid
			and: [connection isSelection])
			and: [connection source == self]]
		thenDo: [:connection | connection notify].