as yet unclassified
checkForEndlessRecursion

	| target windowSize stack offset check |
	windowSize := 10.
	target := watchedProcess ifNil: [Project current uiProcess].
	target ifNil: [^ self]. "when switching projects..."
	target suspendedContext ifNil: [^ self].
	
	stack := target suspendedContext stackOfSize: 30.
	stack size < (3*windowSize) ifTrue: [^ self].
	
	check := [:a :b | a method == b method and: [a receiver == b receiver]].
	
	"Find starting point in stack."
	(windowSize + 1 to: stack size)
		detect: [:tmp | check value: (stack at: 1) value: (stack at: tmp)]
		ifFound: [:start | offset := start - 1]
		ifNone: [^ self].
			
	offset + windowSize - 1 > stack size
		ifTrue: [^ self "stack too small"].

	1 to: windowSize do: [:i |
		(check value: (stack at: i) value: (stack at: offset + i))
			ifFalse: [^ self "Everything looks fine"]].
				
	"Recursion detected!"
	watchOnly == true
		ifTrue: [target suspend. self endlessRecursionDetected]
		ifFalse: [self debugProcess: target].