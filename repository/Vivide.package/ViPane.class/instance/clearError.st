errors
clearError

	| d |
	d := self decorationNamed: #error ifAbsent: [^ self].
	
	(d valueOfProperty: #suspendedProcess ifAbsent: []) ifNotNil: #terminate. 
	
	d
		removeProperty: #suspendedProcess;
		removeProperty: #errorWasInUIProcess;
		removeProperty: #description;
		hide.