*vivide
allFlagComments

	^ (self allCallsOn: #flag:) gather: [:ref | ViFlagComment newListFromReference: ref]