remote - evaluation
evaluateCodeRemote: code

	| result |
	ObjectCache at: code ifPresent: [:cachedAnswer | 
		^ cachedAnswer].

	result := ObjectGate sendObject: code; waitForNextObject.

	result first == #error
		ifTrue: [^ Error signal: result second].
	result first == #prim
		ifTrue: [ObjectCache at: code put: result second. ^ result second].
	result first == #ok
		ifTrue: [(ViProxyObject from: code type: result second) in: [:a |
			ObjectCache at: code put: a.
			^ a]].
		
	Error signal: 'Unknown answer from remote image.'.