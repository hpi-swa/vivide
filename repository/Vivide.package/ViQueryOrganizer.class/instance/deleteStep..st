maintenance
deleteStep: aQueryStep
	"Unregister and remove from all queries. DANGEROUS!"
	
	self
		assert: aQueryStep isRegistered;
		assert: aQueryStep organization == self.
	
	"1) Skip this step in all queries."
	(self referencesToStep: aQueryStep) do: [:step |
		self assert: step next == aQueryStep .
		step next: aQueryStep next].
	
	"2) Forget about it."
	aQueryStep unregister.