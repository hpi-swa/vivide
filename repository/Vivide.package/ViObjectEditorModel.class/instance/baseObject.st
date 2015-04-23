accessing - private
baseObject
	"This object will be used to determine the instance variables."

	^ self base ifNotNil: [:wrapper |
		wrapper withoutListWrapper value]