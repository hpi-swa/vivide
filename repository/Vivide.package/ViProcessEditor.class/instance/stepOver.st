actions
stepOver

	| currentContext newContext |
	currentContext := self object suspendedContext.

	newContext := self object completeStep: currentContext.	
	newContext == currentContext ifTrue: [
		newContext := self object stepToSendOrReturn].

	self objectChanged.