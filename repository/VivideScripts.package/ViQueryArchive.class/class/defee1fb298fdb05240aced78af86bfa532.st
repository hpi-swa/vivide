definitions
defee1fb298fdb05240aced78af86bfa532
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:behaviors | SystemNavigation allCallsOn: #flag: fromBehaviors: behaviors sorted: true] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'ee1fb298-fdb0-5240-aced-78af86bfa532').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:45:44 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:behaviors | SystemNavigation allCallsOn: #flag: fromBehaviors: behaviors sorted: true] value: in)]')})