processing
process: someObjects
	"Callback from script interpreter. Do something with the given objects."
	
	| in out |
	(self valueOfProperty: #in ifAbsent: [OrderedCollection])
		in: [:ic |
			self flag: #implicitConversion. "mt: Maybe consider inheritance chain? Too slow? Can specialized streams be converted?!"
			self flag: #noStreamsSupport.
			ic = someObjects species
				ifTrue: [in := someObjects]
				ifFalse: [in := (ic isBlock
					ifTrue: [ic value]
					ifFalse: [ic new: someObjects size])
						addAll: someObjects; yourself]].

	(self valueOfProperty: #out ifAbsent: [OrderedCollection])
		in: [:oc | out := (oc isBlock
				ifTrue: [oc value]
				ifFalse: [oc new])].

	"Support #asScript for symbols in script code."
	self flag: #refactor. "mt: Should this be moved to the script interpreter? It is like the #thisStep binding."
	ViActiveOrganizer
		value: self organization
		during: [definition block value: in value: out].
		
	^ out