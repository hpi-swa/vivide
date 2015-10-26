updating
updatePanesFor: specs

	| unknownPanes |
	(self valueOfProperty: #isUpdatingScript ifAbsent: [false])
		ifTrue: [^ self].  

	unknownPanes := self panes copy asOrderedCollection.

	self paneSpecs do: [:spec |
		(self panes
			detect: [:p | p id = (spec at: #id)]
			ifNone: [(ViPane new
				id: (spec at: #id);
				queries: [self organizer orderedSteps]
				yourself) in: [:m | self addMorph: m. m]]) in: [:pane |
					unknownPanes remove: pane ifAbsent: [].
					"1) Geometry"
					pane bounds: ((spec at: #bounds ifAbsent: [0@0 corner: 300@300]) translateBy: (self topLeft)).
					"2) Recent Scripts"
					pane recentQueries: ((spec at: #scripts ifAbsent: [#()]) collect: [:id |
						(self organizer stepById: id) ifNil: [Error signal: 'Script not found in organizer!']]) ]].
	
	self connections copy do: [:c | c detach]. "for unknown panes -- just in case..."
	self removeAllMorphsIn: unknownPanes. 
			
	"3) Dataflow"
	self panes do: [:p | p connections
		select: [:c | (self panes includes: c source) and: [self panes includes: c target]]
		thenDo: [:c | c detach]].
	"3.1) Ensure correct input order. We have to do this before establishing output connections."
	self paneSpecs do: [:spec | | pane |
		pane := self panes detect: [:p | p id = (spec at: #id)].
		(spec at: #in ifAbsent: [#()]) do: [:kindId | 
			({self}, self panes detect: [:p | p id = kindId second] ifNone: [])
				ifNotNil: [:providerForSelections | (ViPaneConnection kind: kindId first from: providerForSelections to: pane) attachSilently]]].
	"3.2) Update output connections."
	self paneSpecs do: [:spec | | pane |
		pane := self panes detect: [:p | p id = (spec at: #id)].
		(spec at: #out ifAbsent: [#()]) do: [:kindId |
			self flag: #performance. "mt: Only #outer connections are missing here..."
			({self}, self panes detect: [:p | p id = kindId second] ifNone: [])
				ifNotNil: [:consumerForSelections | (ViPaneConnection kind: kindId first from: pane to: consumerForSelections) attachSilently]].
			
		"3.2.1) Set current script"
		pane currentQuery: ((self organizer stepById: (spec at: #current))
			ifNil: [Error signal: 'Script not found in organizer!']).
		"3.2.2) Ensure current script being in history."
		pane recentQueriesAdd: pane currentQuery].

	"4) Ensure recalculation of own bounds after pane insertions."
	self fullBounds.