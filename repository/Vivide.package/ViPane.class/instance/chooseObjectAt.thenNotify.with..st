initialization - pop-up
chooseObjectAt: pt thenNotify: receiver with: selector

	self view disconnectSignal: #yield:.
	self connect: self view signal: #yield: toSelector: #notify:with:about: pattern: {#=.receiver. #=.selector. 1}.
	self popUpAt: pt.