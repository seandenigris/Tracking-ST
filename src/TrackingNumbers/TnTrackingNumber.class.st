Class {
	#name : #TnTrackingNumber,
	#superclass : #Object,
	#instVars : [
		'number'
	],
	#classVars : [
		'DB'
	],
	#category : #TrackingNumbers
}

{ #category : #convenience }
TnTrackingNumber class >> add: trackingNumber [
	^ self db add: trackingNumber
]

{ #category : #accessing }
TnTrackingNumber class >> db [

	^ DB ifNil: [ DB := OrderedCollection new ].
]

{ #category : #accessing }
TnTrackingNumber class >> db: aCollection [

	DB := aCollection.
]

{ #category : #accessing }
TnTrackingNumber class >> number: aString [
	^ self new
			number: aString;
			yourself
]

{ #category : #persistence }
TnTrackingNumber class >> restoreFrom: anObject [

	self db: anObject.
]

{ #category : #persistence }
TnTrackingNumber class >> spData [

	^ DB
]

{ #category : #accessing }
TnTrackingNumber >> htmlLink [
	| template |
	template := '<a href="{url}"  
 target="_blank">
        {number}
</a>'.
	^ template format: { 
			#url -> self url.
			#number -> self number } asDictionary
]

{ #category : #accessing }
TnTrackingNumber >> number [
	^ number
]

{ #category : #accessing }
TnTrackingNumber >> number: anObject [
	number := anObject
]

{ #category : #accessing }
TnTrackingNumber >> url [
	^ self subclassResponsibility
]
