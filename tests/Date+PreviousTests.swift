//
//  Tests.swift
//  DatePrevious Tests
//
//  Created by Hugh Bellamy on 16/02/2018.
//  Copyright © 2018 Hugh Bellamy. All rights reserved.
//

import XCTest

class Tests: XCTestCase {
    private func createDate(year: Int, month: Int, day: Int) -> Date {
        var components = DateComponents()
        components.year = year
        components.month = month
        components.day = day

        return Calendar.current.date(from: components)!
    }

    func testPrevious() {
        let date = createDate(year: 2018, month: 2, day: 13)

        XCTAssertEqual(createDate(year: 2018, month: 2, day: 12), date.previous(dayOfWeek: DayOfWeek.Monday))
        XCTAssertEqual(createDate(year: 2018, month: 2, day: 13), date.previous(dayOfWeek: DayOfWeek.Tuesday))
        XCTAssertEqual(createDate(year: 2018, month: 2, day: 7), date.previous(dayOfWeek: DayOfWeek.Wednesday))
        XCTAssertEqual(createDate(year: 2018, month: 2, day: 8), date.previous(dayOfWeek: DayOfWeek.Thursday))
        XCTAssertEqual(createDate(year: 2018, month: 2, day: 9), date.previous(dayOfWeek: DayOfWeek.Friday))
        XCTAssertEqual(createDate(year: 2018, month: 2, day: 10), date.previous(dayOfWeek: DayOfWeek.Saturday))
        XCTAssertEqual(createDate(year: 2018, month: 2, day: 11), date.previous(dayOfWeek: DayOfWeek.Sunday))
    }

    func testPreviousNotIncludeSelf() {
        let date = createDate(year: 2018, month: 2, day: 13)

        XCTAssertEqual(createDate(year: 2018, month: 2, day: 12), date.previous(dayOfWeek: DayOfWeek.Monday, includeSelf: false))
        XCTAssertEqual(createDate(year: 2018, month: 2, day: 6), date.previous(dayOfWeek: DayOfWeek.Tuesday, includeSelf: false))
        XCTAssertEqual(createDate(year: 2018, month: 2, day: 7), date.previous(dayOfWeek: DayOfWeek.Wednesday, includeSelf: false))
        XCTAssertEqual(createDate(year: 2018, month: 2, day: 8), date.previous(dayOfWeek: DayOfWeek.Thursday, includeSelf: false))
        XCTAssertEqual(createDate(year: 2018, month: 2, day: 9), date.previous(dayOfWeek: DayOfWeek.Friday, includeSelf: false))
        XCTAssertEqual(createDate(year: 2018, month: 2, day: 10), date.previous(dayOfWeek: DayOfWeek.Saturday, includeSelf: false))
        XCTAssertEqual(createDate(year: 2018, month: 2, day: 11), date.previous(dayOfWeek: DayOfWeek.Sunday, includeSelf: false))
    }
}
