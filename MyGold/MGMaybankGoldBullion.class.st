"
Maybank gold bullion product
"
Class {
	#name : #MGMaybankGoldBullion,
	#superclass : #MGMaybankProductGroup,
	#instVars : [
		'size',
		'buyingRM',
		'sellingRM'
	],
	#category : #MyGold
}

{ #category : #assertions }
MGMaybankGoldBullion class >> checkHeader: aHeader [
	self assert: (aHeader at: 1) = 'Size (oz'.
	self assert: (aHeader at: 2) = 'Selling (RM'.
	self assert: (aHeader at: 3) = 'Buying (RM'
]

{ #category : #'data retrieval' }
MGMaybankGoldBullion class >> extractDateTimeNodeValue: aNode [
	| textSmallNodes dateTimeNode |
	textSmallNodes := aNode allSelect: [ :n | n hasClass: 'text-small' ].
	dateTimeNode := textSmallNodes at: 2.
	^ (dateTimeNode children at: 1) nodeValue
]

{ #category : #constants }
MGMaybankGoldBullion class >> priceTableKey: anObject [
	^ 'table2'
]

{ #category : #accessing }
MGMaybankGoldBullion >> buyingRM [
	^ buyingRM
]

{ #category : #accessing }
MGMaybankGoldBullion >> buyingRM: anObject [
	buyingRM := anObject
]

{ #category : #testing }
MGMaybankGoldBullion >> isSimilarTo: anObject [
	^ anObject timeStamp = self timeStamp & (anObject size = self size)
]

{ #category : #accessing }
MGMaybankGoldBullion >> sellingRM [
	^ sellingRM
]

{ #category : #accessing }
MGMaybankGoldBullion >> sellingRM: anObject [
	sellingRM := anObject
]

{ #category : #initialization }
MGMaybankGoldBullion >> setData: aData [
	self size: (aData at: 1).
	self sellingRM: (aData at: 2).
	self buyingRM: (aData at: 3)
]

{ #category : #accessing }
MGMaybankGoldBullion >> size [ 
^ size
]

{ #category : #accessing }
MGMaybankGoldBullion >> size: anObject [
	size := anObject
]
