initialization - pop-up
chooseObjectAt: pt thenNotify: receiver with: selector

	self view disconnectSignal: #doubleClicked:. " from: self."
	"self view disconnectSignal: #doubleClicked: from: self selector: #notify:with:about:.	"
	self flag: #informationHiding. "mt: You cannot know that the view supports this signal!"
	self connect: self view signal: #doubleClicked: toSelector: #notify:with:about: pattern: {#=.receiver. #=.selector. 1}.
	
	self popUpAt: pt.