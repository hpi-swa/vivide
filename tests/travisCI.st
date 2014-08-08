| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

FileStream stdout reopen; nextPutAll: 'Hello, World!'; cr; flush.

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
