adding pages
addOutputPage: query

	self addOutputPageSilently in: [:newPage |
		newPage
			queries: ViQueryOrganizer default orderedSteps;
			currentQuery: (ViQueryStep convert: query);
			objects: self objects].
	
	(self ui pageButtonGroup button: self pages size)
		checked: true.