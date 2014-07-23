as yet unclassified
clearError

	errorBtn ifNil: [^ self].
	
	self errorBtn
		removeProperty: #error;
		hide.