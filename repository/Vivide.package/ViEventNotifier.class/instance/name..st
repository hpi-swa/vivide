as yet unclassified
name: aString
	name ifNotNil: [Error signal:'You cannot change the name of this notifier!'].
	name := aString.