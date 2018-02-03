//
//  DataProvider.swift
//  ChemicalNames
//
//  Created by admin on 1/28/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation

class DataProvider {
    static var shared = DataProvider()
    var chemicalNames =  [Chemical]()
    var summary_list = [Summary]()
    var hazardList = [Hazard]()
    var riskLevelList = [RiskLevel]()
    var ppeList = [PPE]()
    var whmisList = [WHMIS]()
    
    init() {
        chemicalNames.append(Chemical(with: 1, name: "Sulphur", mainComponets: "99.95%S", cas: "7704-34-9", WHMIS_IDS: "8", image:"chemical_image_placeholder", synonym: "Sulphur,Brimstone,Sulfur Flour"))
        chemicalNames.append(Chemical(with: 2, name: "Hydrogen Peroxide", mainComponets: "H2O2", cas: "7722-84-1", WHMIS_IDS: "3,5,6,7", image:"chemical_image_placeholder", synonym: ""))
        chemicalNames.append(Chemical(with: 3, name: "Zinc Oxide", mainComponets: "ZnO", cas: "1314-13-2", WHMIS_IDS: "8,9", image:"chemical_image_placeholder", synonym: "Calamine,Zinc white"))
        chemicalNames.append(Chemical(with: 4, name: "Magnesium Oxide", mainComponets: "MgO", cas: "1309-48-4", WHMIS_IDS: "", image:"chemical_image_placeholder", synonym: "Magnesia,Oxomagnesium,Periclase,Seawater magnesia"))
        chemicalNames.append(Chemical(with: 5, name: "Lead Oxide, Red", mainComponets: "Pb3O4", cas: "1314-41-6", WHMIS_IDS: "3", image:"chemical_image_placeholder", synonym: "Lead tetroxide"))
        chemicalNames.append(Chemical(with: 6, name: "Benzoic Acid", mainComponets: "C7H6O2", cas: "65-85-0", WHMIS_IDS: "5,7", image:"chemical_image_placeholder", synonym: "Benzenecarboxylic acid,Dracylic acid,Carboxybenzene,Benzeneformic acid"))
        chemicalNames.append(Chemical(with: 7, name: "Salicylic Acid", mainComponets: "C7H6O3", cas: "69-72-7", WHMIS_IDS: "5,6,7,8", image:"chemical_image_placeholder", synonym: "2-hydroxybenzoic acid"))
        chemicalNames.append(Chemical(with: 8, name: "WD-40", mainComponets: "N/A", cas: "N/A", WHMIS_IDS: "2,4,7,8", image:"chemical_image_placeholder", synonym: "WD-40 Aerosol"))
        chemicalNames.append(Chemical(with: 9, name: "Windex", mainComponets: "N/A", cas: "N/A", WHMIS_IDS: "", image:"chemical_image_placeholder", synonym: "Windex Outdoor Cleaner"))
        chemicalNames.append(Chemical(with: 10, name: "Grout", mainComponets: "Silica, Portland cement", cas: "N/A", WHMIS_IDS: "5,7,8", image:"chemical_image_placeholder", synonym: "Non-shrink grout,Portland expanding grout"))
        chemicalNames.append(Chemical(with: 11, name: "Bleach", mainComponets: "Sodium hypochlorite, Sodium hydroxide", cas: "N/A", WHMIS_IDS: "8", image:"chemical_image_placeholder", synonym: "Clorox,Javex"))
        chemicalNames.append(Chemical(with: 12, name: "Cement", mainComponets: "Limestone, Gypsum, CaO, MgO, Quartz", cas: "N/A", WHMIS_IDS: "5,7,8", image:"chemical_image_placeholder", synonym: "Portland cement,Hydraulic cement"))
        chemicalNames.append(Chemical(with: 13, name: "Chromium(VI) Oxide", mainComponets: "CrO3", cas: "1333-82-0", WHMIS_IDS: "3,5,6,7", image:"chemical_image_placeholder", synonym: "Chromium trioxide,Chromic acid,Chromic anhydride"))
        chemicalNames.append(Chemical(with: 14, name: "Arsenic", mainComponets: "As", cas: "7440-38-2", WHMIS_IDS: "6,7,8", image:"chemical_image_placeholder", synonym: ""))
        chemicalNames.append(Chemical(with: 15, name: "Benzene", mainComponets: "C6H6", cas: "71-43-2", WHMIS_IDS: "2,7,8", image:"chemical_image_placeholder", synonym: "Benzol, Benzine"))
        chemicalNames.append(Chemical(with: 16, name: "Hydrogen Sulfate", mainComponets: "H2SO4", cas: "7664-93-9", WHMIS_IDS: "6,8,5", image:"chemical_image_placeholder", synonym: "Sulfuric Acid"))
        chemicalNames.append(Chemical(with: 17, name: "Ethylene Oxide", mainComponets: "C2H4O", cas: "75-21-8", WHMIS_IDS: "2,5,6,7,8", image:"chemical_image_placeholder", synonym: "Oxirane"))
        chemicalNames.append(Chemical(with: 18, name: "Toluene", mainComponets: "C7H8", cas: "108-88-3", WHMIS_IDS: "2,7,8", image:"chemical_image_placeholder", synonym: "Tol, Methylbenzene"))
        chemicalNames.append(Chemical(with: 19, name: "Methylene Chloride", mainComponets: "C2H2Cl2", cas: "75-09-2", WHMIS_IDS: "7,8", image:"chemical_image_placeholder", synonym: "Dichloromethane, DCM"))
        chemicalNames.append(Chemical(with: 20, name: " 1,3-Butadiene", mainComponets: "C4H6", cas: "106-99-0", WHMIS_IDS: "1,2,4,7,8", image:"chemical_image_placeholder", synonym: "Biethylene, bivinyl, butadiene, buta-1,3-diene, alpha-gamma-butadiene, divinyl, erythrene pyrrolylene, vinylethyle"))

        /// Summary
        summary_list.append(Summary(chemical_ID: 1, hazard_ID: "1,2,3,4", riskLevel_ID: "3,5,8,12", PPE_ID: "8,12,24,28,31", productName: ""))
        summary_list.append(Summary(chemical_ID: 2, hazard_ID: "1,2,3,4,5", riskLevel_ID: "1,5,9,11,15", PPE_ID: "2,12,19,24", productName: ""))
        summary_list.append(Summary(chemical_ID: 3, hazard_ID: "1,2,3,4", riskLevel_ID: "3,6,9,11", PPE_ID: "1,27", productName: ""))
        summary_list.append(Summary(chemical_ID: 4, hazard_ID: "1,2,3,4", riskLevel_ID: "2,6,9,12", PPE_ID: "2,12,24", productName: ""))
        summary_list.append(Summary(chemical_ID: 5, hazard_ID: "1,2,3,4,6", riskLevel_ID: "3,6,8,11,14", PPE_ID: "3,12,19,24", productName: ""))
        summary_list.append(Summary(chemical_ID: 6, hazard_ID: "1,2,6", riskLevel_ID: "1,5,7", PPE_ID: "4,12,19", productName: ""))
        summary_list.append(Summary(chemical_ID: 7, hazard_ID: "1,2,3,4", riskLevel_ID: "1,5,9,11", PPE_ID: "4,12,24", productName: ""))
        summary_list.append(Summary(chemical_ID: 8, hazard_ID: "1,2,3,4", riskLevel_ID: "3,6,9,12", PPE_ID: "24,25", productName: "WD-40"))
        summary_list.append(Summary(chemical_ID: 9, hazard_ID: "1,2,3", riskLevel_ID: "3,6,9", PPE_ID: "2", productName: "Windex"))
        summary_list.append(Summary(chemical_ID: 10, hazard_ID: "1,2,4,5", riskLevel_ID: "1,4,7,10", PPE_ID: "24,29,27,3,6", productName: "Grout"))
        summary_list.append(Summary(chemical_ID: 11, hazard_ID: "1,2,3,4", riskLevel_ID: "3,6,9,12", PPE_ID: "26,28", productName: "Bleach"))
        summary_list.append(Summary(chemical_ID: 12, hazard_ID: "1,2,3,4,5", riskLevel_ID: "1,4,9,8,13", PPE_ID: "6,30,14", productName: "Cement"))
        summary_list.append(Summary(chemical_ID: 13, hazard_ID: "1,2,3,4,5,6,7,8", riskLevel_ID: "1,5,9,11,13,19,16,23", PPE_ID: "1,12,24,26,27,28", productName: ""))
        summary_list.append(Summary(chemical_ID: 14, hazard_ID: "1,2,3,4", riskLevel_ID: "3,6,7,10", PPE_ID: "4,12,19", productName: ""))
        summary_list.append(Summary(chemical_ID: 15, hazard_ID: "1,2,3,4,5", riskLevel_ID: "1,5,9,10,13", PPE_ID: "3,12,19,24", productName: ""))
        summary_list.append(Summary(chemical_ID: 16, hazard_ID: "1,2,3,4,5", riskLevel_ID: "1,4,9,11,13", PPE_ID: "25,19,24,12", productName: ""))
        summary_list.append(Summary(chemical_ID: 17, hazard_ID: "1,2,3,4,5,6,7,8", riskLevel_ID: "1,4,7,10,13,17,20,23", PPE_ID: "3,12,24,29", productName: ""))
        summary_list.append(Summary(chemical_ID: 18, hazard_ID: "1,2,3,4", riskLevel_ID: "1,4,9,11", PPE_ID: "4,14,19", productName: ""))
        summary_list.append(Summary(chemical_ID: 19, hazard_ID: "1,2,3,4,5", riskLevel_ID: "1,4,9,12,13", PPE_ID: "4,12,19", productName: ""))
        summary_list.append(Summary(chemical_ID: 20, hazard_ID: "1,2,3,4,5,6", riskLevel_ID: "2,5,9,11,14,16", PPE_ID: "2,15,23,27", productName: ""))

        // Hazard
        
        hazardList.append(Hazard(id: 1, name: "Eye Irritation", description: "May cause redness and tearing", term: "Short Term", image: "eye irritation"))
        hazardList.append(Hazard(id: 2, name: "Skin Irritation", description: "May cause skin rash and possible burns", term: "Short Term", image: "skin irritation"))
        hazardList.append(Hazard(id: 3, name: "Ingestion", description: "May cause severe 'burn' damage to the digestive system", term: "Short Term", image: "ingestion"))
        hazardList.append(Hazard(id: 4, name: "Inhalation", description: "May cause gastrointestinal irritation, nausea, vomiting, diarrhea and headache", term: "Short Term", image: "inhalation"))
        hazardList.append(Hazard(id: 5, name: "Carcinogenic Effect", description: "May lead to cancer", term: "Long Term", image: "carcinogenic effect"))
        hazardList.append(Hazard(id: 6, name: "Mutagenic Effect", description: "May result in genetic change", term: "Long Term", image: "Mutagenic Effect"))
        hazardList.append(Hazard(id: 7, name: "Teratogenic Effect", description: "May disturb the development of the embryo or fetus", term: "Long Term", image: "teratogenic effect"))
        hazardList.append(Hazard(id: 8, name: "Reproductive Effect", description: "Adverse effects on sexual function and fertility in adult males and females, as well as developmental toxicity in the offspring", term: "Long Term", image: "reproduction effect"))

        // Risk Level
        riskLevelList.append(RiskLevel(id: 1, hazard: "Eye Irritation", level: "Severe"))
        riskLevelList.append(RiskLevel(id: 2, hazard: "Eye Irritation", level: "Moderate"))
        riskLevelList.append(RiskLevel(id: 3, hazard: "Eye Irritation", level: "Mild"))
        riskLevelList.append(RiskLevel(id: 4, hazard: "Skin Irritation", level: "Severe"))
        riskLevelList.append(RiskLevel(id: 5, hazard: "Skin Irritation", level: "Moderate"))
        riskLevelList.append(RiskLevel(id: 6, hazard: "Skin Irritation", level: "Mild"))
        riskLevelList.append(RiskLevel(id: 7, hazard: "Ingestion", level: "Severe"))
        riskLevelList.append(RiskLevel(id: 8, hazard: "Ingestion", level: "Moderate"))
        riskLevelList.append(RiskLevel(id: 9, hazard: "Ingestion", level: "Mild"))
        riskLevelList.append(RiskLevel(id: 10, hazard: "Inhalation", level: "Severe"))
        riskLevelList.append(RiskLevel(id: 11, hazard: "Inhalation", level: "Moderate"))
        riskLevelList.append(RiskLevel(id: 12, hazard: "Inhalation", level: "Mild"))
        riskLevelList.append(RiskLevel(id: 13, hazard: "Carcinogenic Effect", level: "Severe"))
        riskLevelList.append(RiskLevel(id: 14, hazard: "Carcinogenic Effect", level: "Moderate"))
        riskLevelList.append(RiskLevel(id: 15, hazard: "Carcinogenic Effect", level: "Mild"))
        riskLevelList.append(RiskLevel(id: 16, hazard: "Mutagenic Effect", level: "Severe"))
        riskLevelList.append(RiskLevel(id: 17, hazard: "Mutagenic Effect", level: "Moderate"))
        riskLevelList.append(RiskLevel(id: 18, hazard: "Mutagenic Effect", level: "Mild"))
        riskLevelList.append(RiskLevel(id: 19, hazard: "Teratogenic Effect", level: "Severe"))
        riskLevelList.append(RiskLevel(id: 20, hazard: "Teratogenic Effect", level: "Moderate"))
        riskLevelList.append(RiskLevel(id: 21, hazard: "Teratogenic Effect", level: "Mild"))
        riskLevelList.append(RiskLevel(id: 22, hazard: "Reproductive Effect", level: "Severe"))
        riskLevelList.append(RiskLevel(id: 23, hazard: "Reproductive Effect", level: "Moderate"))
        riskLevelList.append(RiskLevel(id: 24, hazard: "Reproductive Effect", level: "Mild"))
// PPE
        ppeList.append(PPE(id: 1, bodyPart: "Eye/face", material: "Plastic/Hi-Vex", name: "Goggles"))
        ppeList.append(PPE(id: 2, bodyPart: "Eyes", material: "Plastic", name: "Safety glasses with side shields"))
        ppeList.append(PPE(id: 3, bodyPart: "Eye/face", material: "Plastic", name: "Splash goggles"))
        ppeList.append(PPE(id: 4, bodyPart: "Eye/face", material: "Plastic/Polycarbonate/Glass", name: "Protective eyeglasses or chemical safety goggles"))
        ppeList.append(PPE(id: 5, bodyPart: "Eye/face", material: "Plastic/Polycarbonate", name: "Chemical safety goggles"))
        ppeList.append(PPE(id: 6, bodyPart: "Eyes", material: "Plastic or rubber frames", name: "Dust-tight goggles"))
        ppeList.append(PPE(id: 7, bodyPart: "Eyes/face", material: "Plastic", name: "Chemical safety goggles and face shield"))
        ppeList.append(PPE(id: 8, bodyPart: "Face", material: "Polycarbonate", name: "Face shield"))
        ppeList.append(PPE(id: 9, bodyPart: "Head", material: "Rigid Plastic", name: "Class E (20 000 V electrical rating)"))
        ppeList.append(PPE(id: 10, bodyPart: "Head", material: "Rigid Plastic", name: "Class G (2200 V electrical rating)"))
        ppeList.append(PPE(id: 11, bodyPart: "Head", material: "Rigid Plastic", name: "Class C (no electrical rating)"))
        ppeList.append(PPE(id: 12, bodyPart: "respiratory system", material: "", name: "Air-purifying respirators-quarter-mask"))
        ppeList.append(PPE(id: 13, bodyPart: "respiratory system", material: "", name: "Supplied-air respirators"))
        ppeList.append(PPE(id: 14, bodyPart: "respiratory system", material: "", name: "Air-purifying respirators-half-face mask"))
        ppeList.append(PPE(id: 15, bodyPart: "respiratory system", material: "", name: "Air-purifying respirators-full facepiece"))
        ppeList.append(PPE(id: 19, bodyPart: "Skin", material: "Chemical protective clothing (e.g.aprons, boots)", name: "Lab coat/Coverall"))
        ppeList.append(PPE(id: 23, bodyPart: "toes", material: "Fire-retardant fabric", name: "Safety shoes"))
        ppeList.append(PPE(id: 24, bodyPart: "Hand", material: "Nitrile", name: "Nitrile gloves"))
        ppeList.append(PPE(id: 25, bodyPart: "Eye", material: "Plastic", name: "Safety goggles"))
        ppeList.append(PPE(id: 26, bodyPart: "Hand", material: "Rubber", name: "Rubber gloves"))
        ppeList.append(PPE(id: 27, bodyPart: "Hand", material: "PVC (poly-vinyl chloride)", name: "PVC gloves"))
        ppeList.append(PPE(id: 28, bodyPart: "Hand", material: "Neoprene", name: "Neoprene gloves"))
        ppeList.append(PPE(id: 29, bodyPart: "Hand", material: "Butyl", name: "Butyl gloves"))
        ppeList.append(PPE(id: 30, bodyPart: "Hand", material: "", name: "Waterproof gloves"))
        ppeList.append(PPE(id: 31, bodyPart: "Hand", material: "PVA(Poly-vinyl alcohol)", name: "PVA gloves"))
        
// WHMIS
        whmisList.append(WHMIS(id: 1, description: "Explosive", image: "whmis_1"))
        whmisList.append(WHMIS(id: 2, description: "Flammable, Self-reactive", image: "whmis_2"))
        whmisList.append(WHMIS(id: 3, description: "Oxidizer", image: "whmis_3"))
        whmisList.append(WHMIS(id: 4, description: "Gas under pressure", image: "whmis_4"))
        whmisList.append(WHMIS(id: 5, description: "Serious eye damage, skin corrosion, corrosive to metals", image: "whmis_5"))
        whmisList.append(WHMIS(id: 6, description: "Acute Toxicity", image: "whmis_6"))
        whmisList.append(WHMIS(id: 7, description: "Carcinogenicity, Respiratory sensitization, Reproductive toxicity, Specific target organ toxicity, Germ cell mutagenicity, Aspiration hazard", image: "whmis_7"))
        whmisList.append(WHMIS(id: 8, description: "Skin or eyes irritation, Skin sensitization", image: "whmis_8"))
        whmisList.append(WHMIS(id: 9, description: "Aquatic toxicity", image: "whmis_9"))
        whmisList.append(WHMIS(id: 10, description: "Biohazardous infectious materials", image: "whmis_10"))
        
        chemicalNames.sort{$0.name < $1.name}
    }
    
    
}

class Chemical {
    var id = 0
    var name = ""
    var mainComponets = ""
    var cas = ""
    var WHMIS_IDS = ""
    var synonym = ""
    var image = ""
    
    init(with id:Int, name: String, mainComponets: String, cas: String, WHMIS_IDS: String, image: String, synonym: String) {
        self.id = id
        self.name = name
        self.mainComponets = mainComponets
        self.cas = cas
        self.WHMIS_IDS = WHMIS_IDS
        self.image = image
        self.synonym = synonym
    }
}

class Summary {
    var chemical_ID = 0
    var hazard_ID = ""
    var riskLevel_ID = ""
    var PPE_ID = ""
    var productName = ""
    
    init(chemical_ID: Int, hazard_ID: String, riskLevel_ID: String, PPE_ID: String, productName: String) {
        self.chemical_ID = chemical_ID
        self.hazard_ID = hazard_ID
        self.riskLevel_ID = riskLevel_ID
        self.PPE_ID = PPE_ID
        self.productName = productName
    }
}

class Hazard {
    var id = 0
    var name = ""
    var description = ""
    var term = ""
    var image = ""
    init(id: Int, name: String, description: String, term: String, image: String) {
        self.id = id
        self.name = name
        self.description = description
        self.term = term
        self.image = image
    }
}

class RiskLevel {
    var id = 0
    var hazard = ""
    var level = ""
    init(id: Int, hazard: String, level: String) {
        self.id = id
        self.hazard = hazard
        self.level = level
    }
}

class PPE {
    var id = 0
    var bodyPart = ""
    var material = ""
    var name = ""
    
    init(id: Int, bodyPart: String, material: String, name: String) {
        self.id = id
        self.bodyPart = bodyPart
        self.material = material
        self.name = name
    }
}

class WHMIS {
    var id = 0
    var description = ""
    var image = ""
    init(id: Int, description: String, image: String) {
        self.id = id
        self.description = description
        self.image = image
    }
}





