initialization
addHelpResults

	resultList helpText: nil.
	
	resultList model addAllChildren: (#(
		('.' 'Objects in view')
		(',' 'Recent changes (2 hours)')
		(p 'Packages')
		(c 'Classes (refine with ''p'')')
		(m 'Methods (refine with ''c'' or ''p'')')
		(t 'Traits')
		"(i 'Implementors')"
		(s 'Senders')
		(f 'Source code (full-text)')
		(l 'Literal strings')
		(x 'Flags')
		(q 'Queries')) collect: [:map |
			UiPropertyItemNode new
				at: #object put: (ViLocatorOperation new
					shortcut: map first;
					description: map second);
				yourself]).
	
	currentSource := #locals.
	(self localObjects sorted: [:o1 :o2 | (ViLabelService doObject: o1) asString <= (ViLabelService doObject: o2) asString])
		do: [:obj | self addResult: obj].