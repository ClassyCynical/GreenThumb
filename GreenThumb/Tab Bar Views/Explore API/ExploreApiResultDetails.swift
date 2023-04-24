//
//  ExploreApiResultDetails.swift
//  GreenThumb
//
//  Created by Christian Alexander Diaz on 4/11/23.
//  Copyright © 2023 Taylor Adeline Flieg, Christian Alexander Diaz, Brian Andrew Wood. All rights reserved.
//

import SwiftUI

struct ExploreApiResultDetails: View {
    let plant: PlantAPIStruct

    @Environment(\.dismiss) private var dismiss
    @Environment(\.managedObjectContext) var managedObjectContext

    @FetchRequest(fetchRequest: Plant.allPlantsFetchRequest()) var allPlants: FetchedResults<Plant>
    @EnvironmentObject var databaseChange: DatabaseChange

    @State private var showAlertMessage = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""

    var body: some View {
        Form {
            Section(header: Text("ID")) {
                Text("\(plant.id)")
            }

            Section(header: Text("Common Name")) {
                Text(plant.common_name)
            }

            Section(header: Text("Cycle")) {
                Text(plant.cycle)
            }

            Section(header: Text("Watering")) {
                Text(plant.watering)
            }

            Section(header: Text("Thumbnail")) {
                Text(plant.thumbnail)
            }

            Section(header: Text("Scientific Names")) {
                ForEach(plant.scientific_name, id: \.self) { name in
                    Text(name)
                }
            }

            Section(header: Text("Other Names")) {
                ForEach(plant.other_name, id: \.self) { name in
                    Text(name)
                }
            }

            Section(header: Text("Sunlight Requirements")) {
                ForEach(plant.sunlight, id: \.self) { sunlight in
                    Text(sunlight)
                }
            }
        }
    }
}
