instance creation - old queries
oldTreePaths: codeForPaths
	"'[:all :obj | obj withAllSuperclasses reversed select: [:cls | all includes: cls]]'"
	
	^ (self transform: '[:objs | objs]')
		setProperty: #oldTreePaths toValue: codeForPaths;
		yourself