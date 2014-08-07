| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

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

