actions
chooseSnippet

	| pg |
	pg := ViPane new.
	pg currentQuery: (ViQueryOrganizer default stepById: #snippets).
	pg objects: (lastObjects asOrderedCollection reject: [:o | o isNil]).
	pg extent: 300@200.
	
	pg
		chooseObjectAt: addBtn boundsInWorld bottomLeft
		thenNotify: self
		with: #addCommandForSnippet:.