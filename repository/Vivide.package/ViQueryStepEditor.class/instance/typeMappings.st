accessing
typeMappings

	^ typeMappings ifNil: [typeMappings := {
		ViQueryTransformStep -> {#all. nil}.
		ViQueryTransformStep -> {#each. UiFugueIcons controlPauseSmallIcon asWireframeSunken: 0.6}.
		ViQueryPropertyStep -> {#each. nil}.
		nil.
		ViQuerySortStep -> {#twoArgs. nil}.
		ViQueryReferenceStep -> {nil. nil}.
		nil.
		ViQueryGroupStep -> {#each. nil}.
		ViQueryGroupSortStep -> {#twoArgs. UiFugueIcons sortSmallIcon asWireframeSunken: 0.4}}]