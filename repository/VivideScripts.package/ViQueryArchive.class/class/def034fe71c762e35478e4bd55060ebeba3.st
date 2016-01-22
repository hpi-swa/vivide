definitions
def034fe71c762e35478e4bd55060ebeba3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [Bag new
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
			histogram]]).
(#class -> ViQueryMapDefinition).
(#id -> #'034fe71c-762e-3547-8e4b-d55060ebeba3').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Bag).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 May 2014 2:58:16 pm')})).
(#sourceCode -> '[Bag new
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
			histogram]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})