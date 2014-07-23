actions
stepInto

	self object step: self object suspendedContext.
	self object stepToSendOrReturn.
	self objectChanged.