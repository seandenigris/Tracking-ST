Class {
	#name : #TnUpsTrackingNumber,
	#superclass : #TnTrackingNumber,
	#category : #TrackingNumbers
}

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
