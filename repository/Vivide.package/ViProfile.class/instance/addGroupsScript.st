initialization - scripts
addGroupsScript

	self addScript: {
		
		"1) Sort all tuples by the second object in each tuple."
		[:tuples | tuples sorted: [:t1 :t2 | t1 second asString <= t2 second asString]]
			-> {
			#inputKind -> #(nil nil).
			#view -> ViTreeView.
			#id -> #groups}.
		
		"2) Group all tuples by the first object in each tuple."
		#groupsMinimal.
		
		"3) Extract some nice properties."
		#defaultPropertiesExtended.
		
	} asScript.