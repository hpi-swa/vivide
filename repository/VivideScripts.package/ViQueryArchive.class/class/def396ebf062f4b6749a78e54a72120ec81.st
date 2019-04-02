definitions
def396ebf062f4b6749a78e54a72120ec81
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | "See  CodeHolder >> annotationForSelector:ofClass:."
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
				ifTrue: [stamp := method timeStamp. "Utilities timeStampForMethod: method."
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
	{ #text -> aStream contents }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'396ebf06-2f4b-6749-a78e-54a72120ec81').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 11:28:19 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | "See  CodeHolder >> annotationForSelector:ofClass:."
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
				ifTrue: [stamp := method timeStamp. "Utilities timeStampForMethod: method."
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
	{ #text -> aStream contents }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})