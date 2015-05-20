accessing
runner

	^ runner ifNil: [runner := self runnerClass new task: self; yourself]