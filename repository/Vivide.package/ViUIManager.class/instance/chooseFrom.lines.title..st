as yet unclassified
chooseFrom: someObjects lines: lines title: title

	| object |
	object :=  ViPane new
		currentQuery: {#defaultProperties -> {
			#view -> ViPluggableListMorph.
			#searchBar -> false.
			#selectNone -> true}} asScript;
		objects: someObjects;
		chooseObject.
	^ someObjects indexOf: object