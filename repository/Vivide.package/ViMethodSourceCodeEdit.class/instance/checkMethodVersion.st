evaluation - support
checkMethodVersion
	"Verify that the given compiled method belongs to the latest version."

	self flag: #instVarUpdate. "mt: If you add an instance variable to a class, all methods will be recompiled thus rendering this method invalid...."
	(self method isNil or: [self method == (self theClass >> self selector)])
		ifFalse: [
			self warningSent: 'This compiled method was not up to date.'].
	^ true