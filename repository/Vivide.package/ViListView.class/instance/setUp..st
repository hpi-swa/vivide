initialization
setUp: script
	
	super setUp: script.
	self updateForListForQuery: script.

	self currentViews do: [:view |
		(script valueOfProperty: #orientation) value
			ifNil: [view listOrientation: #default]
			ifNotNil: [:symbol | view listOrientation: symbol]].