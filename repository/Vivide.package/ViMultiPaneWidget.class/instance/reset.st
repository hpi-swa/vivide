initialization
reset
	
	self model ifNil: [^ self].

	"Clear."
	inputPanes := nil.
	self panes do: [:p |
		p providersForSelections removeAll.
		p listenersForSelections removeAll].

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
			id = #outer ifTrue: [self addInputPane: pane] ifFalse: [
			(self panes detect: [:morph | (morph valueOfProperty: #id) = id] ifNone: [])
				ifNotNil: [:providerForSelections | pane listenForSelectionsFrom: providerForSelections]]].
		(spec at: #out ifAbsent: [#()]) do: [:id |
			id = #outer ifTrue: [self listenForSelectionsFrom: pane] ifFalse: [
			(self panes detect: [:morph | (morph valueOfProperty: #id) = id] ifNone: [])
				ifNotNil: [:consumerForSelections | consumerForSelections listenForSelectionsFrom: pane]]]].

	"Distribute incoming objects."
	self inputPanes do: [:pane | pane objects: self incomingObjects]