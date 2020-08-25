maintenance
deleteStep: aStep
	"Unregister and remove from all scripts. DANGEROUS!"
	
	| removal replacement |
	self
		assert: aStep isRegistered;
		assert: aStep organization == self.
	
	"1) Skip this step in all scripts."
	removal := aStep.
	replacement := aStep next.
	(self referencesToStep: removal) do: [:step |
		"A) #before and #after" 
		replacement
			ifNil: [
				step before: (step before copyWithout: removal id).
				step after: (step after copyWithout: removal id)]
			ifNotNil: [
				step before: (step before copyReplaceAll: {removal id} with: {replacement id}).
				step after: (step after copyReplaceAll: {removal id} with: {replacement id})].
		"B) #next"
		step next == removal
			ifTrue: [step next: replacement]].
	
	"2) Do not point to anything anymore."
	aStep next: nil.
	
	"3) Forget about it."
	aStep unregister.