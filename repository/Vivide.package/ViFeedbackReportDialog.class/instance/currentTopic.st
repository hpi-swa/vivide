private
currentTopic

	self ui questionBtn checked ifTrue: [^ #question].
	self ui ideaBtn checked ifTrue: [^ #idea].
	self ui problemBtn checked ifTrue: [^ #problem].
	self ui praiseBtn checked ifTrue: [^ #praise].
	
	^ #unknown