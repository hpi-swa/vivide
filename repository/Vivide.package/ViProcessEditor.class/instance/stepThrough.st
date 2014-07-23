actions
stepThrough

	self object stepToHome: self object suspendedContext.
	self object stepToSendOrReturn.
	self objectChanged.