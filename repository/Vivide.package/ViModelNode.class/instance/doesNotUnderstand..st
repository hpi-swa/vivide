accessing - data
doesNotUnderstand: aMessage
	"Special handling for block values. See #at:ifAbsent: too. Allows to store blocks that proxy accessors to real objects.
	
	#checked -> [:value :set | set ifTrue: [obj property: value] ifFalse: [obj property]].
	
	See UiItemViewColumnSpec >> #itemFor: --- Will be called, for example, as signal callback in checkbox."

	aMessage arguments size ~= 1 ifTrue: [
		^ super doesNotUnderstand: aMessage].
	
	"For example #'1_checked:' sent to an object."
	^ aMessage selector allButLast in: [:key | 
		(super at: key ifAbsent: []) in: [:result |
			result isBlock
				ifTrue: [result
					cull: aMessage arguments first
					cull: true "Yes, we want to set something.".
					self propertyChanged: key]
				ifFalse: [self
					at: aMessage selector allButLast
					put: aMessage arguments first]]]