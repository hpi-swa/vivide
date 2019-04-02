definitions
deffb0952f56689a64e8c533eb6e274a0b4
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [Smalltalk classNames
	select: [:nm | nm beginsWith: #ConfigurationOf]
	thenCollect: [:nm | (Smalltalk at: nm) project]] value in: [:result |
	out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'fb0952f5-6689-a64e-8c53-3eb6e274a0b4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | [Smalltalk classNames
	select: [:nm | nm beginsWith: #ConfigurationOf]
	thenCollect: [:nm | (Smalltalk at: nm) project]] value in: [:result |
	out addAll: result asList]]')})