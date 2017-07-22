as yet unclassified
reset

	| defaultScript |
	
	self content removeAllMorphs.
	self model ifNil: [^ self].

	defaultScript := (self organization stepById: #defaultInPaneList)
		ifNil: [ [:object | object] asScript
				id: #defaultInPaneList;
				setProperty: #isNew toValue: true;
				adoptOrganization: self organization;
				yourself].

	self model nodes do: [:node |
		self flag: #fixRecursion. "mt: Avoid using scripts of owner panes. Risk of endless recursion."
		self content addMorphBack: (
			ViPane new
				currentQuery: (ViActiveOrganizer value: self organization during: [(node at: #script ifAbsent: [defaultScript]) asScript]);
				queries: [self organization orderedSteps];
				objects: (node at: #objects "tuples" ifAbsent: [node at: #object ifAbsent: [nil]]) asList;
				height: (node at: #height ifAbsent: [200]); "changeable via halo"
				balloonText: (node at: #balloonText ifAbsent: [node at: #text ifAbsent: [nil]]);
				yourself)].