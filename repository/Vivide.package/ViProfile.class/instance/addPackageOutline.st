initialization - scripts
addPackageOutline

	self addScript: {
	
		[:pkg | pkg classes] -> {
			#inputKind -> PackageInfo. #outputKind -> ClassDescription.
			#label -> 'Package Outline'.
			#view -> ViTreeView.
			#priority -> 100.}.
		[:classes | classes sorted: [:c1 :c2 | c1 name <= c2 name]].
		[:cls | {cls category. cls} asTuples].
		[#groups] -> {#isReference -> true}.
	
	} asScript.