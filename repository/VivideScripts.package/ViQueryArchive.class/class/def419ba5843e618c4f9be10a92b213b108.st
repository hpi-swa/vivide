definitions
def419ba5843e618c4f9be10a92b213b108
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:method | "See  CodeHolder >> annotationForSelector:ofClass:."
	| separator aStream requestList aClass aSelector |
	aClass := method methodClass.
	aSelector := method selector.
	aStream := ReadWriteStream on: ''.
	requestList := Preferences defaultAnnotationRequests.
	separator := requestList size > 1
				ifTrue: [' · ']
				ifFalse: [''].
	requestList
		do: [:aRequest | | aString sendersCount aComment aCategory implementorsCount aList stamp | 
			aRequest == #firstComment
				ifTrue: [aComment := aClass firstCommentAt: aSelector.
					aComment isEmptyOrNil
						ifFalse: [aStream nextPutAll: aComment , separator]].
			aRequest == #masterComment
				ifTrue: [aComment := aClass supermostPrecodeCommentFor: aSelector.
					aComment isEmptyOrNil
						ifFalse: [aStream nextPutAll: aComment , separator]].
			aRequest == #documentation
				ifTrue: [aComment := aClass precodeCommentOrInheritedCommentFor: aSelector.
					aComment isEmptyOrNil
						ifFalse: [aStream nextPutAll: aComment , separator]].
			aRequest == #timeStamp
				ifTrue: [stamp := Utilities timeStampForMethod: method.
					aStream
						nextPutAll: (stamp size > 0
								ifTrue: [stamp , separator]
								ifFalse: ['no timeStamp' , separator])].
			aRequest == #messageCategory
				ifTrue: [aCategory := aClass organization categoryOfElement: aSelector.
					aCategory
						ifNotNil: ["woud be nil for a method no longer present,  
							e.g. in a recent-submissions browser"
							aStream nextPutAll: aCategory , separator]].
			aRequest == #sendersCount
				ifTrue: [sendersCount := (SystemNavigation default allCallsOn: aSelector) size.
					sendersCount := sendersCount = 1
								ifTrue: ['1 sender']
								ifFalse: [sendersCount printString , ' senders'].
					aStream nextPutAll: sendersCount , separator].
			aRequest == #implementorsCount
				ifTrue: [implementorsCount := SystemNavigation default numberOfImplementorsOf: aSelector.
					implementorsCount := implementorsCount = 1
								ifTrue: ['1 implementor']
								ifFalse: [implementorsCount printString , ' implementors'].
					aStream nextPutAll: implementorsCount , separator].
			aRequest == #priorVersionsCount
				ifTrue: [ | versionsCount |
					versionsCount := VersionsBrowser
						versionCountForSelector: aSelector class: aClass.
					aStream nextPutAll: 
						((versionsCount > 1
							ifTrue: [versionsCount = 2
								ifTrue: ['1 prior version']
								ifFalse: [versionsCount printString, ' prior versions']]
							ifFalse: ['no prior versions']), separator)].
			aRequest == #priorTimeStamp
				ifTrue: [stamp := VersionsBrowser
								timeStampFor: aSelector
								class: aClass
								reverseOrdinal: 2.
					stamp
						ifNotNil: [aStream nextPutAll: 'prior time stamp: ' , stamp , separator]].
			aRequest == #recentChangeSet
				ifTrue: [aString := ChangesOrganizer mostRecentChangeSetWithChangeForClass: aClass selector: aSelector.
					aString size > 0
						ifTrue: [aStream nextPutAll: aString , separator]].
			aRequest == #allChangeSets
				ifTrue: [aList := ChangesOrganizer allChangeSetsWithClass: aClass selector: aSelector.
					aList size > 0
						ifTrue: [aList size = 1
								ifTrue: [aStream nextPutAll: 'only in change set ']
								ifFalse: [aStream nextPutAll: 'in change sets: '].
							aList
								do: [:aChangeSet | aStream nextPutAll: aChangeSet name , ' ']]
						ifFalse: [aStream nextPutAll: 'in no change set'].
					aStream nextPutAll: separator]].
	{ #text -> aStream contents }]).
(#class -> ViQueryMapDefinition).
(#id -> #'419ba584-3e61-8c4f-9be1-0a92b213b108').
(#inputKind -> CompiledMethod).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 11:28:19 am')})).
(#sourceCode -> '[:method | "See  CodeHolder >> annotationForSelector:ofClass:."
	| separator aStream requestList aClass aSelector |
	aClass := method methodClass.
	aSelector := method selector.
	aStream := ReadWriteStream on: ''''.
	requestList := Preferences defaultAnnotationRequests.
	separator := requestList size > 1
				ifTrue: ['' · '']
				ifFalse: [''''].
	requestList
		do: [:aRequest | | aString sendersCount aComment aCategory implementorsCount aList stamp | 
			aRequest == #firstComment
				ifTrue: [aComment := aClass firstCommentAt: aSelector.
					aComment isEmptyOrNil
						ifFalse: [aStream nextPutAll: aComment , separator]].
			aRequest == #masterComment
				ifTrue: [aComment := aClass supermostPrecodeCommentFor: aSelector.
					aComment isEmptyOrNil
						ifFalse: [aStream nextPutAll: aComment , separator]].
			aRequest == #documentation
				ifTrue: [aComment := aClass precodeCommentOrInheritedCommentFor: aSelector.
					aComment isEmptyOrNil
						ifFalse: [aStream nextPutAll: aComment , separator]].
			aRequest == #timeStamp
				ifTrue: [stamp := Utilities timeStampForMethod: method.
					aStream
						nextPutAll: (stamp size > 0
								ifTrue: [stamp , separator]
								ifFalse: [''no timeStamp'' , separator])].
			aRequest == #messageCategory
				ifTrue: [aCategory := aClass organization categoryOfElement: aSelector.
					aCategory
						ifNotNil: ["woud be nil for a method no longer present,  
							e.g. in a recent-submissions browser"
							aStream nextPutAll: aCategory , separator]].
			aRequest == #sendersCount
				ifTrue: [sendersCount := (SystemNavigation default allCallsOn: aSelector) size.
					sendersCount := sendersCount = 1
								ifTrue: [''1 sender'']
								ifFalse: [sendersCount printString , '' senders''].
					aStream nextPutAll: sendersCount , separator].
			aRequest == #implementorsCount
				ifTrue: [implementorsCount := SystemNavigation default numberOfImplementorsOf: aSelector.
					implementorsCount := implementorsCount = 1
								ifTrue: [''1 implementor'']
								ifFalse: [implementorsCount printString , '' implementors''].
					aStream nextPutAll: implementorsCount , separator].
			aRequest == #priorVersionsCount
				ifTrue: [ | versionsCount |
					versionsCount := VersionsBrowser
						versionCountForSelector: aSelector class: aClass.
					aStream nextPutAll: 
						((versionsCount > 1
							ifTrue: [versionsCount = 2
								ifTrue: [''1 prior version'']
								ifFalse: [versionsCount printString, '' prior versions'']]
							ifFalse: [''no prior versions'']), separator)].
			aRequest == #priorTimeStamp
				ifTrue: [stamp := VersionsBrowser
								timeStampFor: aSelector
								class: aClass
								reverseOrdinal: 2.
					stamp
						ifNotNil: [aStream nextPutAll: ''prior time stamp: '' , stamp , separator]].
			aRequest == #recentChangeSet
				ifTrue: [aString := ChangesOrganizer mostRecentChangeSetWithChangeForClass: aClass selector: aSelector.
					aString size > 0
						ifTrue: [aStream nextPutAll: aString , separator]].
			aRequest == #allChangeSets
				ifTrue: [aList := ChangesOrganizer allChangeSetsWithClass: aClass selector: aSelector.
					aList size > 0
						ifTrue: [aList size = 1
								ifTrue: [aStream nextPutAll: ''only in change set '']
								ifFalse: [aStream nextPutAll: ''in change sets: ''].
							aList
								do: [:aChangeSet | aStream nextPutAll: aChangeSet name , '' '']]
						ifFalse: [aStream nextPutAll: ''in no change set''].
					aStream nextPutAll: separator]].
	{ #text -> aStream contents }]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})