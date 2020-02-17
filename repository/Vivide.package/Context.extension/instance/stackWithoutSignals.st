*vivide-support
stackWithoutSignals
	"Removes internal calls of signal framework."
	
	| stack ctxt limit skip |
	limit := 9999.
	skip := false.
	stack := OrderedCollection new.
	stack addLast: (ctxt := self).
	[(ctxt := ctxt sender) ~~ nil and: [stack size < limit]] whileTrue: [
		ctxt selector == #emitSignal:arguments:sender: ifTrue: [skip := true].
		ctxt selector == #emitSignalInOwnerChain:arguments:sender: ifTrue: [skip := true].
		
		skip ifFalse: [stack addLast: ctxt].
		ctxt selector == #emit ifTrue: [skip := false].
		ctxt selector == #emitAlways ifTrue: [skip := false].
		ctxt selector == #emitInOwnerChain ifTrue: [skip := false].
		].
	^stack