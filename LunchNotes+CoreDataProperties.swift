//
//  LunchNotes+CoreDataProperties.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 30/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//
//

import Foundation
import CoreData


extension LunchNotes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LunchNotes> {
        return NSFetchRequest<LunchNotes>(entityName: "LunchNotes")
    }

    @NSManaged public var lunchnote: String?
    @NSManaged public var lunchdate: NSDate?

}
