organization - accessing
organization: anObject
	"For testing purposes only! Production queries should use default organization! See #organization."
	
	anObject == self organization ifTrue: [^ self].
	organization := anObject.