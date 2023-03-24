"
UOB gold bullion product
"
Class {
	#name : #MGUOBGoldBullion,
	#superclass : #MGUOBProductGroup,
	#instVars : [
		'weight',
		'goldType',
		'wmBankSellingRM',
		'bankBuying',
		'emBankSellingRM'
	],
	#category : #MyGold
}

{ #category : #accessing }
MGUOBGoldBullion >> bankBuying [
	^ bankBuying
]

{ #category : #accessing }
MGUOBGoldBullion >> bankBuying: anObject [
	bankBuying := anObject
]

{ #category : #accessing }
MGUOBGoldBullion >> emBankSellingRM [
	^ emBankSellingRM
]

{ #category : #accessing }
MGUOBGoldBullion >> emBankSellingRM: anObject [
	emBankSellingRM := anObject
]

{ #category : #accessing }
MGUOBGoldBullion >> goldType [
	^ goldType
]

{ #category : #accessing }
MGUOBGoldBullion >> goldType: anObject [
	goldType := anObject
]

{ #category : #testing }
MGUOBGoldBullion >> isSimilarTo: anObject [
	^ anObject  timeStamp = self timeStamp & (anObject  weight = self weight)
				& (anObject  goldType = self goldType)
]

{ #category : #initialization }
MGUOBGoldBullion >> setData: aData [
self weight: (aData at: 1).
self goldType: (aData at: 2).
self wmBankSellingRM: (aData at: 3).
self bankBuying: (aData at: 4).
self emBankSellingRM: (aData at: 5)
]

{ #category : #accessing }
MGUOBGoldBullion >> weight [
	^ weight
]

{ #category : #accessing }
MGUOBGoldBullion >> weight: anObject [
	weight := anObject
]

{ #category : #accessing }
MGUOBGoldBullion >> wmBankSellingRM [
	^ wmBankSellingRM
]

{ #category : #accessing }
MGUOBGoldBullion >> wmBankSellingRM: anObject [
	wmBankSellingRM := anObject
]
