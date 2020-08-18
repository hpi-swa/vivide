as yet unclassified
~~> anotherObject
	"For convenience in tests and demos only.
	
	[:num | num * 10] ~~> [:num | num + 1]
	#(1 2 0) ~~> [:num | num * 10] ~~> [:num | num + 1] "

	self next: anotherObject asScript.