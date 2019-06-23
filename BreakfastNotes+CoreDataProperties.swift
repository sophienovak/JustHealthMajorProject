//
//  BreakfastNotes+CoreDataProperties.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 30/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//
//

import Foundation
import CoreData


extension BreakfastNotes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BreakfastNotes> {
        return NSFetchRequest<BreakfastNotes>(entityName: "BreakfastNotes")
    }

    @NSManaged public var foodnote: String?
    @NSManaged public var fooddate: NSDate?

}
