//
//  Colors.swift
//  flightappdemo
//
//  Created by Mustafa Girgin on 2.09.2024.
//




import SwiftUI

extension Color {
    // Primary Colors
    static let primaryWhite = Color(red: 1.0, green: 1.0, blue: 1.0) // #FFFFFF
    static let primaryBlack = Color(red: 0.0, green: 0.0, blue: 0.0) // #000000

    // Neutral Colors (Grays)
    static let gray50 = Color(red: 0.976, green: 0.98, blue: 0.984) // #F9FAFB
    static let gray100 = Color(red: 0.953, green: 0.957, blue: 0.961) // #F3F4F6
    static let gray200 = Color(red: 0.898, green: 0.906, blue: 0.922) // #E5E7EB
    static let gray300 = Color(red: 0.82, green: 0.835, blue: 0.859) // #D1D5DB
    static let gray400 = Color(red: 0.611, green: 0.639, blue: 0.686) // #9CA3AF
    static let gray500 = Color(red: 0.42, green: 0.447, blue: 0.502) // #6B7280
    static let gray600 = Color(red: 0.294, green: 0.333, blue: 0.388) // #4B5563
    static let gray700 = Color(red: 0.216, green: 0.255, blue: 0.318) // #374151
    static let gray800 = Color(red: 0.122, green: 0.161, blue: 0.216) // #1F2937
    static let gray900 = Color(red: 0.067, green: 0.094, blue: 0.153) // #111827
    static let gray950 = Color(red: 0.012, green: 0.027, blue: 0.071) // #030712

    // Accent Colors - Orange Series
    static let orange50 = Color(red: 1.0, green: 0.969, blue: 0.929) // #FFF7ED
    static let orange100 = Color(red: 1.0, green: 0.933, blue: 0.835) // #FFEDD5
    static let orange200 = Color(red: 0.996, green: 0.843, blue: 0.667) // #FED7AA
    static let orange300 = Color(red: 0.992, green: 0.729, blue: 0.455) // #FDBA74
    static let orange400 = Color(red: 0.984, green: 0.573, blue: 0.235) // #FB923C
    static let orange500 = Color(red: 0.976, green: 0.451, blue: 0.086) // #F97316
    static let orange600 = Color(red: 0.918, green: 0.345, blue: 0.047) // #EA580C
    static let orange700 = Color(red: 0.761, green: 0.255, blue: 0.047) // #C2410C
    static let orange800 = Color(red: 0.604, green: 0.204, blue: 0.071) // #9A3412
    static let orange900 = Color(red: 0.486, green: 0.176, blue: 0.071) // #7C2D12
    static let orange950 = Color(red: 0.263, green: 0.078, blue: 0.027) // #431407

    // Accent Colors - Amber Series
    static let amber50 = Color(red: 1.0, green: 0.984, blue: 0.922) // #FFFBEB
    static let amber100 = Color(red: 0.996, green: 0.953, blue: 0.78) // #FEF3C7
    static let amber200 = Color(red: 0.992, green: 0.902, blue: 0.541) // #FDE68A
    static let amber300 = Color(red: 0.988, green: 0.827, blue: 0.302) // #FCD34D
    static let amber400 = Color(red: 0.984, green: 0.749, blue: 0.141) // #FBBF24
    static let amber500 = Color(red: 0.957, green: 0.62, blue: 0.043) // #F59E0B
    static let amber600 = Color(red: 0.851, green: 0.467, blue: 0.024) // #D97706
    static let amber700 = Color(red: 0.706, green: 0.329, blue: 0.035) // #B45309
    static let amber800 = Color(red: 0.573, green: 0.251, blue: 0.055) // #92400E
    static let amber900 = Color(red: 0.471, green: 0.208, blue: 0.059) // #78350F
    static let amber950 = Color(red: 0.271, green: 0.102, blue: 0.012) // #451A03

    // Accent Colors - Indigo Series
    static let indigo50 = Color(red: 0.933, green: 0.949, blue: 1.0) // #EEF2FF
    static let indigo100 = Color(red: 0.878, green: 0.91, blue: 1.0) // #E0E7FF
    static let indigo200 = Color(red: 0.78, green: 0.824, blue: 0.996) // #C7D2FE
    static let indigo300 = Color(red: 0.647, green: 0.706, blue: 0.988) // #A5B4FC
    static let indigo400 = Color(red: 0.506, green: 0.549, blue: 0.973) // #818CF8
    static let indigo500 = Color(red: 0.388, green: 0.4, blue: 0.945) // #6366F1
    static let indigo600 = Color(red: 0.31, green: 0.275, blue: 0.898) // #4F46E5
    static let indigo700 = Color(red: 0.263, green: 0.22, blue: 0.792) // #4338CA
    static let indigo800 = Color(red: 0.216, green: 0.188, blue: 0.639) // #3730A3
    static let indigo900 = Color(red: 0.192, green: 0.18, blue: 0.506) // #312E81
    static let indigo950 = Color(red: 0.118, green: 0.106, blue: 0.294) // #1E1B4B

    // Accent Colors - Violet Series
    static let violet50 = Color(red: 0.961, green: 0.953, blue: 1.0) // #F5F3FF
    static let violet100 = Color(red: 0.929, green: 0.914, blue: 0.996) // #EDE9FE
    static let violet200 = Color(red: 0.867, green: 0.839, blue: 0.996) // #DDD6FE
    static let violet300 = Color(red: 0.765, green: 0.71, blue: 0.992) // #C4B5FD
    static let violet400 = Color(red: 0.655, green: 0.545, blue: 0.98) // #A78BFA
    static let violet500 = Color(red: 0.545, green: 0.365, blue: 0.965) // #8B5CF6
    static let violet600 = Color(red: 0.486, green: 0.227, blue: 0.929) // #7C3AED
    static let violet700 = Color(red: 0.427, green: 0.157, blue: 0.851) // #6D28D9
    static let violet800 = Color(red: 0.357, green: 0.129, blue: 0.714) // #5B21B6
    static let violet900 = Color(red: 0.298, green: 0.114, blue: 0.584) // #4C1D95
    static let violet950 = Color(red: 0.18, green: 0.106, blue: 0.396) // #2E1065

    // Accent Colors - Yellow Series
    static let yellow50 = Color(red: 0.996, green: 0.988, blue: 0.91) // #FEFCE8
    static let yellow100 = Color(red: 0.996, green: 0.976, blue: 0.765) // #FEF9C3
    static let yellow200 = Color(red: 0.996, green: 0.941, blue: 0.541) // #FEF08A
    static let yellow300 = Color(red: 0.992, green: 0.878, blue: 0.278) // #FDE047
    static let yellow400 = Color(red: 0.98, green: 0.8, blue: 0.082) // #FACC15
    static let yellow500 = Color(red: 0.918, green: 0.702, blue: 0.031) // #EAB308
    static let yellow600 = Color(red: 0.792, green: 0.541, blue: 0.016) // #CA8A04
    static let yellow700 = Color(red: 0.631, green: 0.384, blue: 0.027) // #A16207
    static let yellow800 = Color(red: 0.522, green: 0.302, blue: 0.055) // #854D0E
    static let yellow900 = Color(red: 0.443, green: 0.247, blue: 0.071) // #713F12
    static let yellow950 = Color(red: 0.259, green: 0.125, blue: 0.024) // #422006

    // Accent Colors - Red Series
    static let red50 = Color(red: 0.996, green: 0.949, blue: 0.949) // #FEF2F2
    static let red100 = Color(red: 0.996, green: 0.886, blue: 0.886) // #FEE2E2
    static let red200 = Color(red: 0.996, green: 0.792, blue: 0.792) // #FECACA
    static let red300 = Color(red: 0.988, green: 0.647, blue: 0.647) // #FCA5A5
    static let red400 = Color(red: 0.973, green: 0.443, blue: 0.443) // #F87171
    static let red500 = Color(red: 0.937, green: 0.267, blue: 0.267) // #EF4444
    static let red600 = Color(red: 0.863, green: 0.149, blue: 0.149) // #DC2626
    static let red700 = Color(red: 0.725, green: 0.11, blue: 0.11) // #B91C1C
    static let red800 = Color(red: 0.6, green: 0.106, blue: 0.106) // #991B1B
    static let red900 = Color(red: 0.498, green: 0.114, blue: 0.114) // #7F1D1D
    static let red950 = Color(red: 0.271, green: 0.039, blue: 0.039) // #450A0A
}
