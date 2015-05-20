accessing
runnerClass

	^ runnerClass ifNil: [runnerClass := ViFreeTextRunner]