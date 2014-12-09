as yet unclassified
process: someObjects within: aContext

	| in out thisScriptBinding |
	(self valueOfProperty: #in ifAbsent: [OrderedCollection])
		in: [:ic |
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

	"Find binding for current script."
	thisScriptBinding := #thisScript -> nil. "Fall-back"
	definition block method literalsDo: [:lit | (lit isVariableBinding
		and: [lit key = 'thisScript']) ifTrue: [thisScriptBinding := lit]].

	[
		thisScriptBinding value: self.
		definition block value: in value: out.
	] ensure: [
		thisScriptBinding value: nil].
	
	^ out