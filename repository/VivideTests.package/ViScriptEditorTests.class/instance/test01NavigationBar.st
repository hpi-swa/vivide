tests - single - ui
test01NavigationBar

	script := '[:in :out | out addAll: ([:all | all collect: [:num | num * num]] value: in)]' asScript.
	editor object: script.

	editor goToDeepestBlock.
	self assert: #(':in' ':out' 'value:' ':all' 'collect:') equals: self navigationTrace.
	
	editor goUp.
	self assert: #(':in' ':out' 'value:') equals: self navigationTrace.

	editor goUp.
	self assert: self navigationTrace isEmpty.