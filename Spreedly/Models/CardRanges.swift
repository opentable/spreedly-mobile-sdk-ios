//
// Created by Eli Thompson on 6/4/20.
//

// swiftlint:disable:next line_length
/// Number ranges come from [Active Merchant's credit card method implementation](https://github.com/activemerchant/active_merchant/blob/7c932939ad28c120f80aa44693e8c35da1db5aa7/lib/active_merchant/billing/credit_card_methods.rb).
class CardRanges {

    static let alelo = [
        402588...402588, 404347...404347, 405876...405876, 405882...405882, 405884...405884,
        405886...405886, 430471...430471, 438061...438061, 438064...438064, 470063...470066,
        496067...496067, 506699...506704, 506706...506706, 506713...506714, 506716...506716,
        506749...506750, 506752...506752, 506754...506756, 506758...506762, 506764...506767,
        506770...506771, 509015...509019, 509880...509882, 509884...509885, 509987...509992
    ]

    static let amex = [
        "34",
        "37"
    ]

    static let cabal = [
        60420100...60440099,
        58965700...58965799,
        60352200...60352299
    ]

    static let carnet = [
        506199...506499
    ]

    static let carnetBins = [
        "286900", "502275", "606333", "627535", "636318", "636379", "639388",
        "639484", "639559", "50633601", "50633606", "58877274", "62753500",
        "60462203", "60462204", "588772"
    ]

    static let dankort = [
        "5019"
    ]

    static let dinersClub16Digit = [
        300...305, // per this site, these are technically part of 14 digit. https://www.bincodes.com/bin-list/
        380...389
    ]
    // there are 2 15 digit values which currently fail for Diner's club: 2014, 2149

    static let dinersClub14Digit = [
        360...369
    ]

    static let dinersClub = dinersClub16Digit + dinersClub14Digit

    static let discover = [
        601100...601199, // 6011
        622426...622925, // 622126-622925
        644000...649999, // 644-649
        650000...659999  // 65
    ]

    // http://www.barclaycard.co.uk/business/files/bin_rules.pdf
    static let electron = [
        400115.spr_singleDigitRange,
        400837...400839,
        412921...412923,
        417935.spr_singleDigitRange,
        419740...419741,
        419773...419775,
        424519.spr_singleDigitRange,
        424962...424963,
        437860.spr_singleDigitRange,
        444000.spr_singleDigitRange,
        459472.spr_singleDigitRange,
        484406...484411,
        484413...484414,
        484418...484418,
        484428...484455,
        491730...491759
    ]

    // https://dev.elo.com.br/apis/tabela-de-bins, download csv from left sidebar
    static let elo = [
        506707...506708, 506715...506715, 506718...506722, 506724...506724, 506726...506736, 506739...506739,
        506741...506743, 506745...506747, 506753...506753, 506774...506776, 506778...506778, 509000...509001,
        509003...509003, 509007...509007, 509020...509022, 509035...509035, 509039...509042, 509045...509045,
        509048...509048, 509051...509071, 509073...509074, 509077...509080, 509084...509084, 509091...509094,
        509098...509098, 509100...509100, 509104...509104, 509106...509109, 627780...627780, 636368...636368,
        650031...650033, 650035...650045, 650047...650047, 650406...650410, 650434...650436, 650439...650439,
        650485...650504, 650506...650530, 650577...650580, 650582...650591, 650721...650727, 650901...650922,
        650928...650928, 650938...650939, 650946...650948, 650954...650955, 650962...650963, 650967...650967,
        650971...650971, 651652...651667, 651675...651678, 655000...655010, 655012...655015, 655051...655052,
        655056...655057
    ]

    static let forbrubsforeningen = [
        "600722"
    ]

    static let jcb = [
        3528...3589
    ]

    // https://www.mastercard.us/content/dam/mccom/global/documents/mastercard-rules.pdf, page 73
    static let maestro = [
        500033.spr_singleDigitRange,
        581149.spr_singleDigitRange,
        561200...561269,
        561271...561299,
        561320...561356,
        581700...581751,
        581753...581800,
        589998...591259,
        591261...596770,
        596772...598744,
        598746...599999,
        600297...600314,
        600316...600335,
        600337...600362,
        600364...600382,
        601232...601254,
        601256...601276,
        601640...601652,
        601689...601700,
        602011...602050,
        639000...639099,
        670000...679999
    ]

    static let mastercard = [
        222100...272099,
        510000...559999
    ]

    static let naranja = [
        589562...589562
    ]

    static let sodexo = [
        "606071",
        "603389",
        "606070",
        "606069",
        "606068",
        "600818"
    ]

    static let unionPay = [
        81000000...81099999,
        81100000...81319999,
        81320000...81519999,
        81520000...81639999,
        81640000...81719999
    ]

    static let visa = [
        "4"
    ]

    static let vr = [ // swiftlint:disable:this identifier_name
        "627416",
        "637036"
    ]
}

extension Int {
    var spr_singleDigitRange: ClosedRange<Int> {
        self...self
    }
}
