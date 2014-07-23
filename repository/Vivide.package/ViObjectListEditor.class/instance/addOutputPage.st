adding pages
addOutputPage

	| chooser baseClasses |
	baseClasses := ViQueryChooser collectBaseClassesForContext: self objects.
	chooser := ViQueryChooser new
		queries: ViQueryOrganizer default orderedSteps;
		flag: #duplicateCode; "mt: See ViQueryPage >> #updateQueryListFor:"
		selectBlock: [:query | query nextLabel notNil
		and: [((query isGlobal not and: [self objects notEmpty]) and: [baseClasses includes: query baseClass])
			or: [query isGlobal and: [self objects isEmpty]]]].
	
	chooser
		chooseObjectAt: self ui addPageBtn boundsInWorld bottomLeft
		thenNotify: self
		with: #addOutputPage:.