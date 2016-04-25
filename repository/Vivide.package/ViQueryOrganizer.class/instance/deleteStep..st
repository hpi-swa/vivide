maintenance
deleteStep: aQueryStep
	"Unregister and remove from all queries. DANGEROUS!"
	
	self
		assert: aQueryStep isRegistered;
		assert: aQueryStep organization == self.
	
	"1) Skip this step in all queries."
	(self referencesToStep: aQueryStep) do: [:step |
		step isMeta
			ifTrue: [step metaReference: aQueryStep next]
			ifFalse: [(step isReference and: [step reference == aQueryStep])
				ifTrue: [step reference: aQueryStep next]
				ifFalse: [
					self assert: step next == aQueryStep .
					step next: aQueryStep next]]].
	
	"2) Forget about it."
	aQueryStep unregister.