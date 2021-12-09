Class {
	#name : #TnUpsTrackingNumber,
	#superclass : #TnTrackingNumber,
	#category : #'TrackingNumbers-Core'
}

{ #category : #testing }
TnUpsTrackingNumber class >> isClassFor: aString [
	"https://en.wikipedia.org/wiki/Tracking_number"
	
	^ aString size = 18 and: [ aString beginsWith: aString ]
]

{ #category : #accessing }
TnUpsTrackingNumber >> browseStatus [
	^ self url open
]

{ #category : #accessing }
TnUpsTrackingNumber >> browseStatusDescription [
	<magritteActionDescription>
	^ MAActionDescription new
		priority: 150;
		gtIcon: BrGlamorousVectorIcons link;
		action: #browseStatus;
		yourself
]

{ #category : #accessing }
TnUpsTrackingNumber >> printOn: aStream [
	
	self number doWithIndex: [ :e :i |
		aStream nextPut: e.
		i % 4 = 0 ifTrue: [ aStream space ] ]
]

{ #category : #accessing }
TnUpsTrackingNumber >> url [
	^ 'http://wwwapps.ups.com/WebTracking/track?track=yes' asUrl
		queryAt: 'trackNums' put: number;
		yourself
]
