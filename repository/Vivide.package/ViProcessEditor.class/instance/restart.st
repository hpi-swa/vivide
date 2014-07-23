actions
restart

	self object popTo: self object suspendedContext. "should be selectedContext"
	self object restartTop; stepToSendOrReturn.
	self objectChanged.