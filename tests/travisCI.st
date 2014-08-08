| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

[
  (Delay forSeconds: 10) wait.

 FileStream stdout in: [:out |
	out closed ifTrue: [out reopen].
	out
		nextPutAll: (PackageInfo named: #Vivide) classes size asString;
		cr;
		flush].
] forkAt: 50.

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
