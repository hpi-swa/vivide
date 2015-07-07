tests
test07GroupBy

	self
		assert: #((odd ((1) (3) (5))) (even ((2) (4) (6))))
		equals: ([:tuples | tuples asGroups] asScript
			process: #((odd 1)(even 2)(odd 3)(even 4)(odd 5)(even 6))) asArray.