//
//  PlantStruct.swift
//  GreenThumb
//
//  Created by Christian Alexander Diaz on 4/4/23.
//  Copyright © 2023 Taylor Adeline Flieg, Christian Alexander Diaz, Brian Andrew Wood. All rights reserved.
//

import SwiftUI

struct PlantStruct: Decodable {
    var id: Int32
    var common_name: String
    var scientific_name: [String]
    var other_name: [String]
    var cycle: String
    var watering: String
    var sunlight: [String]
    var thumbnail: String
    var lastWateringDate: String
    var nextWateringDate: String
}
