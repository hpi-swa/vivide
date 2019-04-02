definitions
def53a21095e2eac84286e3cf688125dbe6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | "See TestRunner >> updateClasses, sortClass:before:"
	classes sort: [:a :b |
		| first second |
		first := a withAllSuperclasses reversed.
		second := b withAllSuperclasses reversed.
		[
			1 to: (first size min: second size) do: [ :index | 
				(first at: index) == (second at: index)
					ifFalse: [ Notification signal: index ]].
				second includes: a]
		on: Notification
		do: [:n | 	(first at: n messageText) name <= (second at: n messageText) name].
	]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'53a21095-e2ea-c842-86e3-cf688125dbe6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:33:53 am')})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | "See TestRunner >> updateClasses, sortClass:before:"
	classes sort: [:a :b |
		| first second |
		first := a withAllSuperclasses reversed.
		second := b withAllSuperclasses reversed.
		[
			1 to: (first size min: second size) do: [ :index | 
				(first at: index) == (second at: index)
					ifFalse: [ Notification signal: index ]].
				second includes: a]
		on: Notification
		do: [:n | 	(first at: n messageText) name <= (second at: n messageText) name].
	]] value: in)]')})