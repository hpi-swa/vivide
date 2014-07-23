as yet unclassified
initializeQueries

	self flag: #fixme. "mt: use new query model"
"	self queries addAll: (ViQueryOrganizer default queries collect: [:query |
		Dictionary newFrom: {
			#label -> query label.
			#baseClassName -> query baseClassName.
			#code -> (ViQueryOrganizer generateCodeForQuery: query)}])."