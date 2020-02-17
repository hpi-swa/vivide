convert
exportStep: step
	"Hide step definition inside the dictionary of steps. See #importStep:."
	
	step asDictionary in: [:dict |
		dict at: #'_def' put: step definition asDictionary.
		self writeStep: dict].