callbacks
onMethodModified: aModifiedEvent
	"Adapted from Debugger>>contents:notifying:."

	| h ctxt oldMethod newMethod |
	oldMethod := aModifiedEvent oldItem.
	newMethod := aModifiedEvent item.
	
	self contextStackIndex = 0 ifTrue: [^ self].
	
	self debugger selectedContext isExecutingBlock ifTrue: [
		h := self debugger selectedContext activeHome.
		h ifNil: [
			self showWarning: 'Method for block not found on stack,\can''t edit and continue. Please close debugger.' withCRs.
			^ self].
		
		h method == oldMethod ifTrue: [
			self showInformation: 'Context reverted to the method from\which this block originated.' withCRs.
			self debugger resetContext: h.
			self debugger contentsChanged]].

	self debugger selectedContext method == oldMethod
		ifFalse: [^ self "not interested"].

	newMethod isQuick ifTrue:
		[self debugger down.
		 self debugger selectedContext jump: (self debugger selectedContext previousPc - self debugger selectedContext pc)].
	ctxt := self debugger interruptedProcess popTo: self debugger selectedContext.
	ctxt == self debugger selectedContext
		ifFalse:
			[self showWarning: 'Method saved, but current context unchanged\because of unwind error.' withCRs]
		ifTrue:
			[newMethod isQuick ifFalse:
				[self debugger interruptedProcess
					restartTopWith: newMethod;
				 	stepToSendOrReturn].
			self debugger contextVariablesInspector object: nil].
	self debugger resetContext: ctxt.
	
	World
		addAlarm: #changed:
		withArguments: #(contentsSelection)
		for: self debugger
		at: (Time millisecondClockValue + 200).