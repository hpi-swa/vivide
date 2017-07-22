initialization
setUp: script
	
	super setUp: script.

	self currentViews do: [:view |
		(script valueOfProperty: #orientation) value "support blocks"
			ifNil: [view listOrientation: #default]
			ifNotNil: [:symbol | view listOrientation: symbol]].

	self updateForListForQuery: script.