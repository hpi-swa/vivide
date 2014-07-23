*vivide
someSubInstance

	self someInstance ifNotNil: [:instance |
		^ instance].

	 self allSubclassesDo: [:cls |
		cls someInstance ifNotNil: [:instance |
			^ instance]].
	
	 self allSubclassesDo: [:cls |
		[cls new ifNotNil: [:instance |
			^ instance]]
			on: Error
			do: ["nothing"]].

	^ nil