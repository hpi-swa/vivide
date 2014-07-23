pop-up chooser
chooseObjectAt: pt thenNotify: receiver with: selector

	self currentQueryView disconnectSignal: #doubleClicked: from: self selector: #notify:with:about:.	
	self connect: self currentQueryView signal: #doubleClicked: toSelector: #notify:with:about: pattern: {#=.receiver. #=.selector. 1}.
	
	self currentSearchView disconnectSignal: #doubleClicked: from: self selector: #notify:with:about:.	
	self connect: self currentSearchView signal: #doubleClicked: toSelector: #notify:with:about: pattern: {#=.receiver. #=.selector. 1}.
	
	self popUpAt: pt.