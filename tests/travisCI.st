| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

[
  (Delay forSeconds: 10) wait.

  WorldState addDeferredUIMessage: 
   [Transcript
	  cr;
	  show: (PackageInfo named: #Vivide) classes size asString;
	  cr].
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
