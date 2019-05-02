copying
deepCopy
	"Ignore cycles."

	| lastStep newQuery idMap referencesToCopy copiedReferences |
	idMap := Dictionary new.
	referencesToCopy := IdentitySet new.
	copiedReferences := Dictionary new.
	
	newQuery := self notifier doSilently: [self copy].
	copiedReferences at: newQuery id put: newQuery.
	idMap at: self id put: newQuery id.
	 
	lastStep := nil.
	
	self stepsDo: [:step |
		lastStep
			ifNil: [lastStep := newQuery]
			ifNotNil: [lastStep notifier doSilently: [
				lastStep next: step copy].
				lastStep := lastStep next.
				copiedReferences at: lastStep id put: lastStep.
				idMap at: step id put: lastStep id].
		
		self flag: #todo. "mt: Consider #before and #after."
		"step isReference ifTrue: [step reference ifNotNil: [:referencedStep |
			""Copy only if not already there and not a default.""
			((self steps includes: referencedStep) not and: [referencedStep isDefault not])
				ifTrue: [referencedStep deepCopy in: [:r |
					copiedReferences at: r id put: r.
					idMap at: referencedStep id put: r id]]]]."
	
		step isMeta ifTrue: [
			self assert: (step metaScriptReferences includes: step metaReference).

			step metaScriptReferences do: [:referencedStep |
				"referencedStep isDefault not" true ifTrue: [
					referencedStep deepCopy in: [:r |
						copiedReferences at: r id put: r.
						idMap at: referencedStep id put: r id]]]].
			].

	"Resolve references."
	newQuery stepsDo: [:step |
		"step isReference ifTrue: [(step process: #(1)) in: [:someIds |
			self flag: #refactor. ""mt: Maybe it is better to rewrite the code in the reference step instead of changing the target step's id back to old? Conflicts later?""
			(idMap includesKey: someIds first)
				ifFalse: [
					""Check whether we can resolve the ID as default script because it was not copied.""
					someIds first asScript ifNil: [Error signal: 'Script copy failed! Could not resolve reference to default script.']]
				ifTrue: [(copiedReferences at: (idMap at: someIds first))
					in: [:target | target notifier doSilently: [target id: someIds first]]] 
			]]."
		step isMeta ifTrue: [
			((Dictionary newFrom: (step process: #(1)) first) at: #current) in: [:someId |
				(copiedReferences at: (idMap at: someId))
					in: [:target | target notifier doSilently: [target id: someId]]].
			((Dictionary newFrom: (step process: #(1)) first) at: #scripts ifAbsent: [#()]) do: [:someId |
				(copiedReferences at: (idMap at: someId))
					in: [:target | target notifier doSilently: [target id: someId]]]

			
			].
	].

	"Use first step's organization for all steps and external references."
	copiedReferences valuesDo: [:step | step adoptOrganization: newQuery organization].
	newQuery adoptOrganization: newQuery organization. 

	^ newQuery