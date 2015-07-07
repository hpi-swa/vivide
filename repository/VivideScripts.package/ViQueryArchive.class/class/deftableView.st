definitions
deftableView
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 September 2013 7:57:24 pm'); yourself)); add: (#id->#tableView); add: (#block->[:query :view :environment |
	ViTableView createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment |
	ViTableView createFor: query orUpdate: view in: environment]'); yourself)