as yet unclassified
deepCopy
	"Ignore cycles."

	| lastStep newQuery idMap copiedReferences |
	idMap := Dictionary new.
	copiedReferences := OrderedCollection new.
	
	newQuery := self copy.
	idMap at: self id put: newQuery id.
	 
	lastStep := nil.
	
	self stepsDo: [:step |
		lastStep
			ifNil: [lastStep := newQuery]
			ifNotNil: [lastStep notifier doSilently: [
				lastStep next: step copy].
				lastStep := lastStep next.
				idMap at: step id put: lastStep id].
		step isReferenceStep ifTrue: [step reference ifNotNil: [:referencedStep |
			"Copy only if not already there."
			(self steps includes: referencedStep)
				ifFalse: [ 
					copiedReferences add: referencedStep deepCopy.
					idMap at: referencedStep id put: copiedReferences last id]]]
			].
			
	"Use first step's organization for all steps and external references."
	newQuery adoptOrganization: newQuery organization.  
	copiedReferences do: [:step | step adoptOrganization: newQuery organization].

	"Resolve references."
	newQuery allStepsDo: [:step |
		step isReferenceStep ifTrue: [(step process: #(1)) in: [:someIds |
			self flag: #refactor. "mt: Maybe it is better to rewrite the code in the reference step instead of changing the target step's id back to old? Conflicts later?"
			(newQuery organization stepById: (idMap at: someIds first))
				in: [:target | target notifier doSilently: [target id: someIds first]] 
			]]].

	^ newQuery