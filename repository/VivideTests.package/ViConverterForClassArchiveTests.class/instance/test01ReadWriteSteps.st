tests
test01ReadWriteSteps

	| steps dicts |
	steps := converter extractSteps any: 5.
	dicts := steps collect: [:step | step asDictionary] as: Array.
	
	"1) Write the sample into the archive."
	dicts withIndexDo: [:dict :index |
		converter writeStep: dict.
		self assert: index equals: converter theClass theMetaClass selectors size].
	
	"2) Read the sample from the archive."
	(dicts sorted: [:a :b | (a at: #id) <= (b at: #id)])
		with: (converter readSteps sorted: [:a :b | (a at: #id) <= (b at: #id)])
		do: [:original :copy | self assert: original equals: copy].