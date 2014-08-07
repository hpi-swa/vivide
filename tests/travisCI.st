| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

TestSuite
	compile: 'run: aResult 
	self tests do: [:each | 
		FileStream stdout nextPutAll: each printString; cr; flush.
		self changed: each.
		each run: aResult].'.

Metacello new
  baseline: 'Vivide';
  repository: 'filetree://', gitPath, '/vivide/repository';
  get.

Metacello new
  baseline: 'Vivide';
  repository: 'filetree://', gitPath, '/vivide/repository';
  load: 'TravisCI'.


  
  
"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfVivide' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

