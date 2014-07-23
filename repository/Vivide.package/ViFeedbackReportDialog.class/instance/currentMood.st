private
currentMood

	self ui emoHappyBtn checked ifTrue: [^ #happy].
	self ui emoSillyBtn checked ifTrue: [^ #silly].
	self ui emoNeutralBtn checked ifTrue: [^ #neutral].
	self ui emoSadBtn checked ifTrue: [^ #sad].
	
	^ #unknown