Class {
	#name : #TnUspsTrackingNumber,
	#superclass : #TnTrackingNumber,
	#category : #'TrackingNumbers-Core'
}

{ #category : #testing }
TnUspsTrackingNumber class >> isClassFor: aString [
	"https://en.wikipedia.org/wiki/Tracking_number"
	
	^ aString size = 30 and: [ aString allSatisfy: #isDigit ]
]

{ #category : #accessing }
TnUspsTrackingNumber >> printOn: aStream [
	
	self number doWithIndex: [ :e :i |
		aStream nextPut: e.
		i % 4 = 0 ifTrue: [ aStream space ] ]
]

{ #category : #accessing }
TnUspsTrackingNumber >> url [
	^ 'https://tools.usps.com/go/TrackConfirmAction_input' asUrl
		queryAt: 'qtc_tLabels1' put: number;
		yourself
]
