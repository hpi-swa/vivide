actions
chooseObjectAt: pt thenNotify: receiver with: selector

	view disconnectSignal: #activated: from: self selector: #notify:with:about:.	
	self connect: view signal: #activated: toSelector: #notify:with:about: pattern: {#=.receiver. #=.selector. 1}.
	
	self popUpAt: pt.