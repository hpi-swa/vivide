processing
process: someObjects

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

	(Smalltalk at: #thisScript) in: [:old |
		[
			Smalltalk at: #thisScript put: self.
			ViActiveOrganizer
				value: self organization
				during: [definition block value: in value: out].
		] ensure: [
			Smalltalk at: #thisScript put: old]].
	
	^ out