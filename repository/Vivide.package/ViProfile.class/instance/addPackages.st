initialization - bookmarks
addPackages

	self addScript: {
		[PackageOrganizer default packages] -> {
			#label -> 'All Packages'.
			#isGlobal -> true.
			#priority -> 500.
			#view -> ViTreeView}.
		[:packages | packages sorted: [:p1 :p2 | p1 packageName <= p2 packageName]].
		#defaultPropertiesExtended.
	} asScript.