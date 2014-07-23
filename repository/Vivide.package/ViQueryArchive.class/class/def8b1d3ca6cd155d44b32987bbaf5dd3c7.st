definitions
def8b1d3ca6cd155d44b32987bbaf5dd3c7
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryUpdateDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'12 November 2013 5:04:17 pm'); yourself)); add: (#id->#'8b1d3ca6-cd15-5d44-b329-87bbaf5dd3c7'); add: (#block->[:model | (ViTimer named: model identityHash) every: 500 send: #refresh to: model]); add: (#sourceCode->'[:model | (ViTimer named: model identityHash) every: 500 send: #refresh to: model]'); yourself)