steps
step6b45f38f77e7ee4aac7196c1987498fb
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | [Bag new
		in: [:histogram | 
			| obj o |
			Smalltalk garbageCollect.
			o := Object new.
			obj := nil someObject.
			[obj == o]
				whileFalse: [(obj class isBits not
					and: [obj basicSize > 0 or: [obj class instSize > 0]]
					and: [(1 to: obj basicSize) allSatisfy: [:i | (obj basicAt: i) isNil]]
					and: [(1 to: obj class instSize) allSatisfy: [:i | (obj instVarAt: i) isNil]])
						ifTrue: [histogram add: obj class].
					obj := obj nextObject].
			histogram]] value in: [:result |
	out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'a2fbc9b1-b3f2-9d4f-85eb-12128c1679ad').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 May 2014 2:58:16 pm')
})).
(#sourceCode -> '[:in :out | [Bag new
		in: [:histogram | 
			| obj o |
			Smalltalk garbageCollect.
			o := Object new.
			obj := nil someObject.
			[obj == o]
				whileFalse: [(obj class isBits not
					and: [obj basicSize > 0 or: [obj class instSize > 0]]
					and: [(1 to: obj basicSize) allSatisfy: [:i | (obj basicAt: i) isNil]]
					and: [(1 to: obj class instSize) allSatisfy: [:i | (obj instVarAt: i) isNil]])
						ifTrue: [histogram add: obj class].
					obj := obj nextObject].
			histogram]] value in: [:result |
	out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'a2fbc9b1-b3f2-9d4f-85eb-12128c1679ad').
(#iconCode -> 'nil').
(#id -> #'6b45f38f-77e7-ee4a-ac71-96c1987498fb').
(#isProperty -> false).
(#label -> 'Empty Objects').
(#next -> #'894088c2-9d24-5b40-9246-2e1a298fe761').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 May 2014 2:58:16 pm').
(#isGlobal -> true).
(#outputKind -> Bag).
(#priority -> 6130).
(#view -> ViTreeViewExtended)
}))
})