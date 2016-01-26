errors
clearError

	errorBtn ifNil: [^ self].
	
	(self errorBtn valueOfProperty: #suspendedProcess ifAbsent: []) ifNotNil: #terminate. 
	
	self errorBtn
		removeProperty: #suspendedProcess;
		removeProperty: #errorWasInUIProcess;
		removeProperty: #description;
		hide.