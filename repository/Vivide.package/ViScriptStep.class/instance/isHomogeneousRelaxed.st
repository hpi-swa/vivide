testing
isHomogeneousRelaxed
	"Only similar chains of property extractions?"
	
	| count one two |
	two := 0.
	
	self
		allExtractionStepsDo: [:step | count := count + 1 ]
		ifNewSequence: [
			(one isNil and: [count notNil])
				ifTrue: [
					"After 1st sequence"
					one := two := count]
				ifFalse: [
					count notNil ifTrue: [
						"After 2nd sequence"
						one = two ifFalse: [^ false "early exit"].
						one := two. two := count]].
			"From the beginning."
			count := 0].

	count > 0 ifTrue: [
		one := two.
		two := count].
	
	^ one = 0 or: [one = two]