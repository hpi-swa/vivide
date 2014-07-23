*vivide
someSubInstances: count

	| instances i |
	instances := Array new: count.
	i := 1.
	
	self allSubInstancesDo: [:instance |
		instances at: i put: instance.
		i := i + 1.
		i > count ifTrue: [^ instances]].

	 self allSubclassesDo: [:cls |
		[cls new ifNotNil: [:instance |
			instance at: i put: instance.
			i := i + 1.
			i > count ifTrue: [^ instances]]]
			on: Error
			do: ["nothing"]].

	^ instances reject: [:instance | instance isNil]