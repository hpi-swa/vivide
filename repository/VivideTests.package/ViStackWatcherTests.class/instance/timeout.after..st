running
timeout: aBlock after: milliseconds
	"Evaluate the argument block. Time out if the evaluation is not
	complete after the given number of seconds. Handle the situation
	that a timeout may occur after a failure (during debug)"

	| theProcess delay watchdog |

	"the block will be executed in the current process"
	theProcess := Processor activeProcess.
	delay := Delay forMilliseconds: milliseconds.

	"make a watchdog process"
	watchdog := [
		delay wait. 	"wait for timeout or completion"
		process ifNotNil: #terminate.
		theProcess ifNotNil:[ theProcess signalException: 
			(TestFailure new messageText: 'Test timed out') ] 
	] newProcess.

	"Watchdog needs to run at high priority to do its job (but not at timing priority)"
	watchdog priority: Processor timingPriority-1.

	"catch the timeout signal"
	watchdog resume.				"start up the watchdog"
	^[aBlock on: TestFailure, Error, Halt do:[:ex|
		theProcess := nil.
		ex pass.
	]] ensure:[							"evaluate the receiver"
		theProcess := nil.				"it has completed, so ..."
		delay delaySemaphore signal.	"arrange for the watchdog to exit"
	]