import Foundation

enum BankCode: String, Identifiable {
    case turkiyeCumhuriyetMerkezBankasi = "001"
    case illerBankasi = "004"
    case turkiyeCumhuriyetiZiraatBankasi = "010"
    case turkiyeHalkBankasi = "012"
    case denizbank = "013"
    case turkiyeSinaiKalkinmaBankasi = "014"
    case turkiyeVakiflarBankasi = "015"
    case turkiyeIhracatKrediBankasi = "016"
    case turkiyeKalkinmaBankasi = "017"
    case birlesikFonBankasi = "029"
    case turkEkonomiBankasi = "032"
    case aktifYatirimBankasi = "034"
    case akbank = "046"
    case hsbcBank = "048"
    case sinaiYatirimBankasi = "058"
    case sekerbank = "059"
    case turkiyeGarantiBankasi = "062"
    case turkiyeIsBankasi = "064"
    case yapiVeKrediBankasi = "067"
    case fortisBank = "071"
    case bancaDiRoma = "087"
    case royalBankOfScotland = "088"
    case arapTurkBankasi = "091"
    case citibank = "092"
    case bankMellat = "094"
    case bcci = "095"
    case turkishBank = "096"
    case habibBank = "097"
    case jpMorganChaseBank = "098"
    case oyakBank = "099"
    case adabank = "100"
    case turkSakuraBank = "101"
    case fibaBank = "103"
    case impexbank = "104"
    case portigon = "106"
    case bnpAkDresdnerBank = "107"
    case turklandBank = "108"
    case tekstilBankasi = "109"
    case creditLyonnais = "110"
    case finansbank = "111"
    case marbank = "113"
    case deutscheBank = "115"
    case taibYatirimBank = "116"
    case turizmYatirimVeTicaretBank = "117"
    case kibrisKrediBankasi = "118"
    case birlesikYatirim = "119"
    case standardCharteredYatirimBankasi = "121"
    case societeGenerale = "122"
    case hsbcBank2 = "123"
    case alternatifbank = "124"
    case burganbank = "125"
    case kentbank = "127"
    case parkYatirimBankasi = "128"
    case tatYatirimBankasi = "129"
    case imkbTakasVeSaklamaBankasi = "132"
    case ingBank = "133"
    case denizbank2 = "134"
    case anadolubank = "135"
    case okanYatirimBankasi = "136"
    case rabobankNederland = "137"
    case dilerYatirimBankasi = "138"
    case gsdYatirimBankasi = "139"
    case creditSuisseFirstBoston = "140"
    case nurolYatirimBankasi = "141"
    case bankPozitif = "142"
    case atlasYatirimBankasi = "144"
    case morganGuarentyTrusyCompany = "145"
    case odeabank = "146"
    case bankOfTokyoMitsubishiUFJ = "147"
    case intesaSanPaolo = "148"
    case alBarakaTurkKatilimBankasi = "203"
    case familyFinansKurumu = "204"
    case kuveytTurkKatilimBankasi = "205"
    case turkiyeFinansKatilimBankasi = "206"
    case asyaKatilimBankasi = "208"
    case vakifKatilimBankasi = "210"
    case alBarakaTurkKatilimBankasi2 = "223"
    
    var name: String {
        switch self {
        case .turkiyeCumhuriyetMerkezBankasi: return "Türkiye Cumhuriyet Merkez Bankası A.Ş."
        case .illerBankasi: return "İller Bankası"
        case .turkiyeCumhuriyetiZiraatBankasi: return "Türkiye Cumhuriyeti Ziraat Bankası A.Ş."
        case .turkiyeHalkBankasi: return "Türkiye Halk Bankası A.Ş."
        case .denizbank: return "Denizbank"
        case .turkiyeSinaiKalkinmaBankasi: return "Türkiye Sınai Kalkınma Bankası A.Ş."
        case .turkiyeVakiflarBankasi: return "Türkiye Vakıflar Bankası T.A.O."
        case .turkiyeIhracatKrediBankasi: return "Türkiye İhracat Kredi Bankası A.Ş. (Eximbank)"
        case .turkiyeKalkinmaBankasi: return "Türkiye Kalkınma Bankası A.Ş."
        case .birlesikFonBankasi: return "Birleşik Fon Bankası A.Ş. (Bayındırbank A.Ş.)"
        case .turkEkonomiBankasi: return "Türk Ekonomi Bankası A.Ş."
        case .aktifYatirimBankasi: return "Aktif Yatırım Bankası A.Ş."
        case .akbank: return "Akbank T.A.Ş."
        case .hsbcBank: return "HSBC Bank A.Ş."
        case .sinaiYatirimBankasi: return "Sınai Yatırım Bankası A.Ş."
        case .sekerbank: return "Şekerbank T.A.Ş."
        case .turkiyeGarantiBankasi: return "Türkiye Garanti Bankası A.Ş."
        case .turkiyeIsBankasi: return "Türkiye İş Bankası A.Ş."
        case .yapiVeKrediBankasi: return "Yapı ve Kredi Bankası A.Ş."
        case .fortisBank: return "Fortis Bank (TEB)"
        case .bancaDiRoma: return "Banca di Roma"
        case .royalBankOfScotland: return "The Royal Bank of Scotland PLC Merkezi Amsterdam İstanbul Merkez Şubesi"
        case .arapTurkBankasi: return "Arap Türk Bankası A.Ş."
        case .citibank: return "Citibank N.A."
        case .bankMellat: return "Bank Mellat"
        case .bcci: return "BCCI"
        case .turkishBank: return "Turkish Bank A.Ş."
        case .habibBank: return "Habib Bank Limited"
        case .jpMorganChaseBank: return "JP Morgan Chase Bank İstanbul Türkiye Şubesi"
        case .oyakBank: return "Oyak Bank A.Ş. - ING BANK"
        case .adabank: return "Adabank A.Ş."
        case .turkSakuraBank: return "Türk Sakura Bank A.Ş."
        case .fibaBank: return "Fiba Bank A.Ş."
        case .impexbank: return "IMPEXBANK"
        case .portigon: return "PORTIGON A.G."
        case .bnpAkDresdnerBank: return "BNP-Ak-Dresdner Bank A.Ş."
        case .turklandBank: return "Turkland Bank A.Ş."
        case .tekstilBankasi: return "Tekstil Bankası A.Ş."
        case .creditLyonnais: return "Credit Lyonnais"
        case .finansbank: return "Finansbank A.Ş."
        case .marbank: return "Marbank"
        case .deutscheBank: return "Deutsche Bank A.Ş."
        case .taibYatirimBank: return "TAİB Yatırım Bank A.Ş."
        case .turizmYatirimVeTicaretBank: return "Turizm Yatırım ve Ticaret Bank A.Ş."
        case .kibrisKrediBankasi: return "Kıbrıs Kredi Bankası"
        case .birlesikYatirim: return "Birleşik Yatırım"
        case .standardCharteredYatirimBankasi: return "Standard Chartered Yatırım Bankası Türk A.Ş."
        case .societeGenerale: return "Societe Generale"
        case .hsbcBank2: return "HSBC Bank A.Ş."
        case .alternatifbank: return "Alternatifbank A.Ş."
        case .burganbank: return "Burganbank A.Ş."
        case .kentbank: return "KentBank"
        case .parkYatirimBankasi: return "Park Yatırım Bankası"
        case .tatYatirimBankasi: return "Tat Yatırım Bankası A.Ş."
        case .imkbTakasVeSaklamaBankasi: return "IMKB Takas ve Saklama Bankası A.Ş."
        case .ingBank: return "ING BANK"
        case .denizbank2: return "Denizbank A.Ş."
        case .anadolubank: return "Anadolubank A.Ş."
        case .okanYatirimBankasi: return "Okan Yatırım Bankası A Ş"
        case .rabobankNederland: return "Rabobank Nederland İstanbul Merkez Şubesi"
        case .dilerYatirimBankasi: return "Diler Yatırım Bankası A.Ş."
        case .gsdYatirimBankasi: return "GSD Yatırım Bankası A.Ş."
        case .creditSuisseFirstBoston: return "Credit Suisse First Boston İstanbul Şubesi"
        case .nurolYatirimBankasi: return "Nurol Yatırım Bankası A.Ş."
        case .bankPozitif: return "Bank Pozitif Kredi ve Kalkınma Bankası A.Ş."
        case .atlasYatirimBankasi: return "Atlas Yatırım Bankası A.Ş."
        case .morganGuarentyTrusyCompany: return "Morgan Guarenty Trusy Company"
        case .odeabank: return "OdeaBank A.Ş."
        case .bankOfTokyoMitsubishiUFJ: return "Bank of Tokyo -Mitsubishi UFJ Turkey A.Ş."
        case .intesaSanPaolo: return "Intesa SanPaolo SPA İtalya-İstanbul Merkez Şubesi"
        case .alBarakaTurkKatilimBankasi: return "Al Baraka Türk Katılım Bankası A.Ş."
        case .familyFinansKurumu: return "Family Finans Kurumu"
        case .kuveytTurkKatilimBankasi: return "Kuveyt Türk Katılım Bankası A.Ş."
        case .turkiyeFinansKatilimBankasi: return "Türkiye Finans Katılım Bankası A.Ş."
        case .asyaKatilimBankasi: return "Asya Katılım Bankası A.Ş."
        case .vakifKatilimBankasi: return "Vakıf Katılım Bankası A.Ş."
        case .alBarakaTurkKatilimBankasi2: return "Al Baraka Türk Katılım Bankası A.Ş."
        }
    }
    
    var id: String { rawValue }
}

   
