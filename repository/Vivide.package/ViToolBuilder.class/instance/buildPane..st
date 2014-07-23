as yet unclassified
buildPane: aPaneSpec

	| widget queries |
	widget := self paneClass new.
	queries := aPaneSpec querySpecs collect: [:spec |
		(ViQueryStep convertList: spec value) in: [:query |
			query
				id: spec key first;
				setViewSpec: spec key second]].

	queries do: [:query |
		self register: widget id: query id].

	widget queries: queries.
	self setFrame: aPaneSpec frame in: widget.
	parent ifNotNil: [:p | self add: widget to: p].
	
	^ widget