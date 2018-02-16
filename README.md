# Date+Previous

A library that lets you get the previous day of week from a given date.

[![CI Status](http://img.shields.io/travis/hughbe/Date-Previous?style=flat)](https://travis-ci.org/hughbe/Date-Previous)
[![Version](https://img.shields.io/cocoapods/v/Date+Previous?style=flat)](http://cocoapods.org/pods/Date+Previous)
[![License](https://img.shields.io/cocoapods/l/Date+Previous?style=flat)](http://cocoapods.org/pods/Date+Previous)
[![Platform](https://img.shields.io/cocoapods/p/Date+Previous?style=flat)](http://cocoapods.org/pods/Date+Previous)

## Usage

```swift
import Date_Previous

let date = Date() // E.g 2018-02-13
let previousMonday = date.previous(dayOfWeek: DayOfWeek.Monday) // E.g. 2018-02-12
```

## Installation

Date+Previous is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Date+Previous'
```
