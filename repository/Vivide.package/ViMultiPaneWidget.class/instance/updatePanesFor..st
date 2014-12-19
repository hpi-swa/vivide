as yet unclassified
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
					"2) Scripts"
					pane currentQuery: (self organizer stepById: (spec at: #current))]].
	
	self connections copy do: [:c | c detach]. "for unknown panes -- just in case..."
	self removeAllMorphsIn: unknownPanes. 
			
	"3) Dataflow"
	self panes do: [:p | p connections copy do: [:c | c detach]].
	self paneSpecs do: [:spec | | pane |
		pane := self panes detect: [:p | p id = (spec at: #id)].
		(spec at: #in ifAbsent: [#()]) do: [:kindId | 
			({self}, self panes detect: [:p | p id = kindId second] ifNone: [])
				ifNotNil: [:providerForSelections | (ViPaneConnection kind: kindId first from: providerForSelections to: pane) attach]].
		(spec at: #out ifAbsent: [#()]) do: [:kindId |
			({self}, self panes detect: [:p | p = kindId second] ifNone: [])
				ifNotNil: [:consumerForSelections | (ViPaneConnection kind: kindId first from: pane to: consumerForSelections) attach]]].

	"4) Ensure recalculation of own bounds after pane insertions."
	self fullBounds.