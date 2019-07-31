initialization
disconnectModelAndView

	self model ifNotNil: [:m |
		m disconnectSignal: #modelReset from: self selector: #notifyChangedResults].
	self view ifNotNil: [:v |
		v disconnectSignal: #yield: from: self selector: #notifyChangedSelection:].
	
	(self model isNil or: [self view isNil]) ifTrue: [^ self].

	self model disconnectSignal: #modelReset from: self view selector: #process:.
	
	"self model disconnectSignal: #propertiesChanged from: self view selector: #process:.
	self model disconnectSignal: #propertiesChanged: from: self view selector: #process:."