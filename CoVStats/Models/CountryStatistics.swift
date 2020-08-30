//
//  CountryStatistics.swift
//  CoVStats
//
//  Created by Robert Pelz on 29.08.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import Foundation

class CountryStatistics: ObservableObject {
    
    @Published var listOfCountries: [CountryLocation] = []
    
    init() {
        getListOfCountries()
    }
    
    func getListOfCountries() {
        
        var listOfCount: [CountryLocation] = []
        
        listOfCount.append(CountryLocation(name: "Andorra", alpha2code: "AD", alpha3code: "", latitude: 42.546245, longitude: 1.601554))
        listOfCount.append(CountryLocation(name: "UAE", alpha2code: "AE", alpha3code: "", latitude: 23.424076, longitude: 53.847818))//    United Arab Emirates
        listOfCount.append(CountryLocation(name: "Afghanistan", alpha2code: "AF", alpha3code: "", latitude: 33.93911, longitude:     67.709953))//
        listOfCount.append(CountryLocation(name: "Antigua and Barbuda", alpha2code: "AG", alpha3code: "", latitude:     17.060816, longitude:     -61.796428))//
        listOfCount.append(CountryLocation(name: "Anguilla", alpha2code: "AI", alpha3code: "", latitude:     18.220554, longitude:         -63.068615))//
        listOfCount.append(CountryLocation(name: "Albania", alpha2code: "AL", alpha3code: "", latitude:    41.153332, longitude:         20.168331))//
        listOfCount.append(CountryLocation(name: "Armenia", alpha2code: "AM", alpha3code: "", latitude:    40.069099, longitude:         45.038189))//
        listOfCount.append(CountryLocation(name: "Netherlands Antilles", alpha2code: "AN", alpha3code: "", latitude:     12.226079, longitude:         -69.060087))//
        listOfCount.append(CountryLocation(name: "Angola", alpha2code: "AO", alpha3code: "", latitude:     -11.202692, longitude:         17.873887))//
        listOfCount.append(CountryLocation(name: "Antarctica", alpha2code: "AQ", alpha3code: "", latitude:    -75.250973, longitude:         -0.071389))//
        listOfCount.append(CountryLocation(name: "Argentina", alpha2code: "AR", alpha3code: "", latitude:    -38.416097, longitude:         -63.616672))//
        listOfCount.append(CountryLocation(name: "American Samoa", alpha2code: "AS", alpha3code: "", latitude:     -14.270972, longitude:         -170.132217))//
        listOfCount.append(CountryLocation(name: "Austria", alpha2code: "AT", alpha3code: "", latitude:    47.516231, longitude:         14.550072))//
        listOfCount.append(CountryLocation(name: "Australia", alpha2code: "AU", alpha3code: "", latitude:     -25.274398, longitude:         133.775136))//
        listOfCount.append(CountryLocation(name: "Aruba", alpha2code: "AW", alpha3code: "", latitude:     12.52111, longitude:         -69.968338))//
        listOfCount.append(CountryLocation(name: "Azerbaijan", alpha2code: "AZ", alpha3code: "", latitude:     40.143105, longitude:         47.576927))//
        listOfCount.append(CountryLocation(name: "Bosnia and Herzegovina", alpha2code: "BA", alpha3code: "", latitude:     43.915886, longitude:         17.679076))//
        listOfCount.append(CountryLocation(name: "Barbados", alpha2code: "BB", alpha3code: "", latitude:     13.193887, longitude:         -59.543198))//
        listOfCount.append(CountryLocation(name: "Bangladesh", alpha2code: "BD", alpha3code: "", latitude:     23.684994, longitude:         90.356331))//
        listOfCount.append(CountryLocation(name: "Belgium", alpha2code: "BE", alpha3code: "", latitude:     50.503887, longitude:         4.469936))//
        listOfCount.append(CountryLocation(name: "Burkina Faso", alpha2code: "BF", alpha3code: "", latitude:     12.238333, longitude:         -1.561593))//
        listOfCount.append(CountryLocation(name: "Bulgaria", alpha2code: "BG", alpha3code: "", latitude:     42.733883, longitude:         25.48583))//
        listOfCount.append(CountryLocation(name: "Bahrain", alpha2code: "BH", alpha3code: "", latitude:     25.930414, longitude:        50.637772))//
        listOfCount.append(CountryLocation(name: "Burundi", alpha2code: "BI", alpha3code: "", latitude:     -3.373056, longitude:         29.918886))//
        listOfCount.append(CountryLocation(name: "Benin", alpha2code: "BJ", alpha3code: "", latitude:     9.30769, longitude:         2.315834))//
        listOfCount.append(CountryLocation(name: "Bermuda", alpha2code: "BM", alpha3code: "", latitude:    32.321384, longitude:         -64.75737))//
        listOfCount.append(CountryLocation(name: "Brunei", alpha2code: "BN", alpha3code: "", latitude:     4.535277, longitude:         114.727669))//
        listOfCount.append(CountryLocation(name: "Bolivia", alpha2code: "BO", alpha3code: "", latitude:     -16.290154, longitude:         -63.588653))//
        listOfCount.append(CountryLocation(name: "Brazil", alpha2code: "BR", alpha3code: "", latitude:     -14.235004, longitude:         -51.92528))//
        listOfCount.append(CountryLocation(name: "Bahamas", alpha2code: "BS", alpha3code: "", latitude:     25.03428, longitude:         -77.39628))//
        listOfCount.append(CountryLocation(name: "Bhutan", alpha2code: "BT", alpha3code: "", latitude:     27.514162, longitude:         90.433601))//
        listOfCount.append(CountryLocation(name: "Bouvet Island", alpha2code: "BV", alpha3code: "", latitude:     -54.423199, longitude:         3.413194))//
        listOfCount.append(CountryLocation(name: "Botswana", alpha2code: "BW", alpha3code: "", latitude:     -22.328474, longitude:         24.684866))//
        listOfCount.append(CountryLocation(name: "Belarus", alpha2code: "BY", alpha3code: "", latitude:     53.709807, longitude:         27.953389))//
        listOfCount.append(CountryLocation(name: "Belize", alpha2code: "BZ", alpha3code: "", latitude:     17.189877, longitude:         -88.49765))//
        listOfCount.append(CountryLocation(name: "Canada", alpha2code: "CA", alpha3code: "", latitude:     56.130366, longitude:         -106.346771))//
        listOfCount.append(CountryLocation(name: "", alpha2code: "CC", alpha3code: "", latitude:     -12.164165, longitude:         96.870956))//    Cocos [Keeling] Islands
        listOfCount.append(CountryLocation(name: "", alpha2code: "CD", alpha3code: "", latitude:     -4.038333, longitude:        21.758664))//    Congo [DRC]
        listOfCount.append(CountryLocation(name: "", alpha2code: "CF", alpha3code: "", latitude:     6.611111, longitude:         20.939444))//   Central African Republic
        listOfCount.append(CountryLocation(name: "Congo", alpha2code: "CG", alpha3code: "", latitude:     -0.228021, longitude:         15.827659))//     [Republic]
        listOfCount.append(CountryLocation(name: "Switzerland", alpha2code: "CH", alpha3code: "", latitude:     46.818188, longitude:         8.227512))//
        listOfCount.append(CountryLocation(name: "Ivory Coast", alpha2code: "CI", alpha3code: "", latitude:     7.539989, longitude:         -5.54708))//    Côte d'Ivoire
        listOfCount.append(CountryLocation(name: "Cook Islands", alpha2code: "CK", alpha3code: "", latitude:     -21.236736, longitude:         -159.777671))//
        listOfCount.append(CountryLocation(name: "Chile", alpha2code: "CL", alpha3code: "", latitude:     -35.675147, longitude:         -71.542969))//
        listOfCount.append(CountryLocation(name: "Cameroon", alpha2code: "CM", alpha3code: "", latitude:     7.369722, longitude:         12.354722))//
        listOfCount.append(CountryLocation(name: "China", alpha2code: "CN", alpha3code: "", latitude:     35.86166, longitude:         104.195397))//
        listOfCount.append(CountryLocation(name: "Colombia", alpha2code: "CO", alpha3code: "", latitude:     4.570868, longitude:         -74.297333))//
        listOfCount.append(CountryLocation(name: "Costa Rica", alpha2code: "CR", alpha3code: "", latitude:     9.748917, longitude:         -83.753428))//
        listOfCount.append(CountryLocation(name: "Cuba", alpha2code: "CU", alpha3code: "", latitude:     21.521757, longitude:         -77.781167))//
        listOfCount.append(CountryLocation(name: "Cape Verde", alpha2code: "CV", alpha3code: "", latitude:     16.002082, longitude:         -24.013197 ))//
        listOfCount.append(CountryLocation(name: "Christmas Island", alpha2code: "CX", alpha3code: "", latitude:     -10.447525, longitude:         105.690449))//
        listOfCount.append(CountryLocation(name: "Cyprus", alpha2code: "CY", alpha3code: "", latitude:     35.126413, longitude:         33.429859))//
        listOfCount.append(CountryLocation(name: "Czechia", alpha2code: "CZ", alpha3code: "CZE", latitude: 50.08804, longitude: 14.42076))
        listOfCount.append(CountryLocation(name: "", alpha2code: "CZ", alpha3code: "", latitude:     49.817492, longitude:        15.472962))//    Czech Republic
        listOfCount.append(CountryLocation(name: "Germany", alpha2code: "DE", alpha3code: "", latitude:     51.165691, longitude:         10.451526))//
        listOfCount.append(CountryLocation(name: "Djibouti", alpha2code: "DJ", alpha3code: "", latitude:     11.825138 , longitude:        42.590275))//
        listOfCount.append(CountryLocation(name: "Denmark", alpha2code: "DK", alpha3code: "", latitude:     56.26392, longitude:         9.501785))//
        listOfCount.append(CountryLocation(name: "Dominica", alpha2code: "DM", alpha3code: "", latitude:     15.414999, longitude:         -61.370976 ))//
        listOfCount.append(CountryLocation(name: "Dominican Republic", alpha2code: "DO", alpha3code: "", latitude:     18.735693, longitude:         -70.162651))//
        listOfCount.append(CountryLocation(name: "Algeria", alpha2code: "DZ", alpha3code: "", latitude:     28.033886, longitude:        1.659626))//
        listOfCount.append(CountryLocation(name: "Ecuador", alpha2code: "EC", alpha3code: "", latitude:    -1.831239, longitude:         -78.183406 ))//
        listOfCount.append(CountryLocation(name: "Estonia", alpha2code: "EE", alpha3code: "", latitude:     58.595272, longitude:         25.013607))//
        listOfCount.append(CountryLocation(name: "Egypt", alpha2code: "EG", alpha3code: "", latitude:     26.820553, longitude:         30.802498))//
        listOfCount.append(CountryLocation(name: "Western Sahara", alpha2code: "EH", alpha3code: "", latitude:     24.215527, longitude:         -12.885834 ))//
        listOfCount.append(CountryLocation(name: "Eritrea", alpha2code: "ER", alpha3code: "", latitude:    15.179384 , longitude:        39.782334))//
        listOfCount.append(CountryLocation(name: "Spain", alpha2code: "ES", alpha3code: "", latitude:     40.463667, longitude:         -3.74922 ))//
        listOfCount.append(CountryLocation(name: "Ethiopia", alpha2code: "ET", alpha3code: "", latitude:    9.145, longitude:         40.489673 ))//
        listOfCount.append(CountryLocation(name: "Finland", alpha2code: "FI", alpha3code: "", latitude:     61.92411, longitude:         25.748151))//
        listOfCount.append(CountryLocation(name: "Fiji", alpha2code: "FJ", alpha3code: "", latitude:     -16.578193, longitude:         179.414413 ))//
        listOfCount.append(CountryLocation(name: "Falkland Islands", alpha2code: "FK", alpha3code: "", latitude:     -51.796253 , longitude: -59.523613 ))//    [Islas Malvinas]
        listOfCount.append(CountryLocation(name: "Micronesia", alpha2code: "FM", alpha3code: "", latitude:     7.425554, longitude:         150.550812))//
        listOfCount.append(CountryLocation(name: "Faroe Islands", alpha2code: "FO", alpha3code: "", latitude:     61.892635, longitude:         -6.911806))//
        listOfCount.append(CountryLocation(name: "France", alpha2code: "FR", alpha3code: "", latitude:     46.227638, longitude:         2.213749 ))//
        listOfCount.append(CountryLocation(name: "Gabon", alpha2code: "GA", alpha3code: "", latitude:     -0.803689, longitude:         11.609444 ))//
        listOfCount.append(CountryLocation(name: "UK", alpha2code: "GB", alpha3code: "", latitude:     55.378051, longitude:         -3.435973))//
        listOfCount.append(CountryLocation(name: "Grenada", alpha2code: "GD", alpha3code: "", latitude:     12.262776, longitude:        -61.604171 ))//
        listOfCount.append(CountryLocation(name: "Georgia", alpha2code: "GE", alpha3code: "", latitude:     42.315407, longitude:         43.356892))//
        listOfCount.append(CountryLocation(name: "French Guiana", alpha2code: "GF", alpha3code: "", latitude:     3.933889, longitude:         -53.125782 ))//
        listOfCount.append(CountryLocation(name: "Guernsey", alpha2code: "GG", alpha3code: "", latitude:     49.465691, longitude:         -2.585278 ))//
        listOfCount.append(CountryLocation(name: "Ghana", alpha2code: "GH", alpha3code: "", latitude:     7.946527, longitude:         -1.023194 ))//
        listOfCount.append(CountryLocation(name: "Gibraltar", alpha2code: "GI", alpha3code: "", latitude:     36.137741, longitude:         -5.345374 ))//
        listOfCount.append(CountryLocation(name: "Greenland", alpha2code: "GL", alpha3code: "", latitude:     71.706936, longitude:         -42.604303 ))//
        listOfCount.append(CountryLocation(name: "Gambia", alpha2code: "GM", alpha3code: "", latitude:     13.443182, longitude:         -15.310139 ))//
        listOfCount.append(CountryLocation(name: "Guinea", alpha2code: "GN", alpha3code: "", latitude:     9.945587 , longitude:        -9.696645 ))//
        listOfCount.append(CountryLocation(name: "Guadeloupe", alpha2code: "GP", alpha3code: "", latitude:     16.995971, longitude:         -62.067641 ))//
        listOfCount.append(CountryLocation(name: "Equatorial Guinea", alpha2code: "GQ", alpha3code: "", latitude:     1.650801, longitude:         10.267895 ))//
        listOfCount.append(CountryLocation(name: "Greece", alpha2code: "GR", alpha3code: "", latitude:     39.074208, longitude:         21.824312 ))//
        listOfCount.append(CountryLocation(name: "South Georgia and the South Sandwich Islands", alpha2code: "GS", alpha3code: "", latitude: -54.429579, longitude: -36.587909 ))//
        listOfCount.append(CountryLocation(name: "Guatemala", alpha2code: "GT", alpha3code: "", latitude:     15.783471, longitude:         -90.230759))//
        listOfCount.append(CountryLocation(name: "Guam", alpha2code: "GU", alpha3code: "", latitude:     13.444304, longitude:         144.793731))//
        listOfCount.append(CountryLocation(name: "Guinea-Bissau", alpha2code: "GW", alpha3code: "", latitude:     11.803749, longitude:         -15.180413 ))//
        listOfCount.append(CountryLocation(name: "Guyana", alpha2code: "GY", alpha3code: "", latitude:     4.860416 , longitude:        -58.93018))//
        listOfCount.append(CountryLocation(name: "Gaza Strip", alpha2code: "GZ", alpha3code: "", latitude:     31.354676, longitude:         34.308825))//
        listOfCount.append(CountryLocation(name: "Hong Kong", alpha2code: "HK", alpha3code: "", latitude:     22.396428, longitude:         114.109497 ))//
        listOfCount.append(CountryLocation(name: "Heard Island and McDonald Islands", alpha2code: "HM", alpha3code: "", latitude:     -53.08181 , longitude: 73.504158 ))//
        listOfCount.append(CountryLocation(name: "Honduras", alpha2code: "HN", alpha3code: "", latitude:     15.199999 , longitude:        -86.241905 ))//
        listOfCount.append(CountryLocation(name: "Croatia", alpha2code: "HR", alpha3code: "", latitude:     45.1, longitude:         15.2 ))//
        listOfCount.append(CountryLocation(name: "Haiti", alpha2code: "HT", alpha3code: "", latitude:     18.971187, longitude:         -72.285215))//
        listOfCount.append(CountryLocation(name: "Hungary", alpha2code: "HU", alpha3code: "", latitude:     47.162494 , longitude:        19.503304))//
        listOfCount.append(CountryLocation(name: "Indonesia", alpha2code: "ID", alpha3code: "", latitude:     -0.789275 , longitude:        113.921327))//
        listOfCount.append(CountryLocation(name: "Ireland", alpha2code: "IE", alpha3code: "", latitude:     53.41291, longitude:         -8.24389))//
        listOfCount.append(CountryLocation(name: "Israel", alpha2code: "IL", alpha3code: "", latitude:     31.046051, longitude:         34.851612 ))//
        listOfCount.append(CountryLocation(name: "Isle of Man", alpha2code: "IM", alpha3code: "", latitude:     54.236107, longitude:    -4.548056))//
        listOfCount.append(CountryLocation(name: "India", alpha2code: "IN", alpha3code: "", latitude:     20.593684, longitude:    78.96288 ))//
        listOfCount.append(CountryLocation(name: "British Indian Ocean Territory", alpha2code: "IO", alpha3code: "", latitude:     -6.343194, longitude: 71.876519))//
        listOfCount.append(CountryLocation(name: "Iraq", alpha2code: "IQ", alpha3code: "", latitude:     33.223191, longitude:    43.679291))//
        listOfCount.append(CountryLocation(name: "Iran", alpha2code: "IR", alpha3code: "", latitude:    32.427908, longitude:    53.688046))//
        listOfCount.append(CountryLocation(name: "Iceland", alpha2code: "IS", alpha3code: "", latitude:     64.963051, longitude:    -19.020835))//
        listOfCount.append(CountryLocation(name: "Italy", alpha2code: "IT", alpha3code: "", latitude:     41.87194, longitude:    12.56738))//
        listOfCount.append(CountryLocation(name: "Jersey", alpha2code: "JE", alpha3code: "", latitude:     49.214439, longitude:    -2.13125))//
        listOfCount.append(CountryLocation(name: "Jamaica", alpha2code: "JM", alpha3code: "", latitude:     18.109581, longitude:    -77.297508))//
        listOfCount.append(CountryLocation(name: "Jordan", alpha2code: "JO", alpha3code: "", latitude:     30.585164 , longitude:   36.238414))//
        listOfCount.append(CountryLocation(name: "Japan", alpha2code: "JP", alpha3code: "", latitude:     36.204824, longitude:    138.252924))//
        listOfCount.append(CountryLocation(name: "Kenya", alpha2code: "KE", alpha3code: "", latitude:     -0.023559, longitude:    37.906193))//
        listOfCount.append(CountryLocation(name: "Kyrgyzstan", alpha2code: "KG", alpha3code: "", latitude:     41.20438 , longitude:   74.766098))//
        listOfCount.append(CountryLocation(name: "Cambodia", alpha2code: "KH", alpha3code: "", latitude:     12.565679 , longitude:   104.990963))//
        listOfCount.append(CountryLocation(name: "Kiribati", alpha2code: "KI", alpha3code: "", latitude:     -3.370417 , longitude:   -168.734039))//
        listOfCount.append(CountryLocation(name: "Comoros", alpha2code: "KM", alpha3code: "", latitude:     -11.875001 , longitude:   43.872219))//
        listOfCount.append(CountryLocation(name: "Saint Kitts and Nevis", alpha2code: "KN", alpha3code: "", latitude:     17.357822, longitude:    -62.782998))//
        listOfCount.append(CountryLocation(name: "N Korea", alpha2code: "KP", alpha3code: "", latitude:     40.339852 , longitude:   127.510093))//    North Korea
        listOfCount.append(CountryLocation(name: "S Korea", alpha2code: "KR", alpha3code: "", latitude:     35.907757, longitude:    127.766922))//    South Korea
        listOfCount.append(CountryLocation(name: "Kuwait", alpha2code: "KW", alpha3code: "", latitude:     29.31166 , longitude:   47.481766))//
        listOfCount.append(CountryLocation(name: "Cayman Islands", alpha2code: "KY", alpha3code: "", latitude:     19.513469, longitude:    -80.566956))//
        listOfCount.append(CountryLocation(name: "Kazakhstan", alpha2code: "KZ", alpha3code: "", latitude:     48.019573 , longitude:   66.923684))//
        listOfCount.append(CountryLocation(name: "Laos", alpha2code: "LA", alpha3code: "", latitude:     19.85627 , longitude:   102.495496))//
        listOfCount.append(CountryLocation(name: "Lebanon", alpha2code: "LB", alpha3code: "", latitude:     33.854721, longitude:    35.862285))//
        listOfCount.append(CountryLocation(name: "Saint Lucia", alpha2code: "LC", alpha3code: "", latitude:    13.909444 , longitude:   -60.978893))//
        listOfCount.append(CountryLocation(name: "Liechtenstein", alpha2code: "LI", alpha3code: "", latitude:     47.166, longitude:    9.555373))//
        listOfCount.append(CountryLocation(name: "Sri Lanka", alpha2code: "LK", alpha3code: "", latitude:     7.873054, longitude:    80.771797))//
        listOfCount.append(CountryLocation(name: "Liberia", alpha2code: "LR", alpha3code: "", latitude:     6.428055 , longitude:   -9.429499))//
        listOfCount.append(CountryLocation(name: "Lesotho", alpha2code: "LS", alpha3code: "", latitude:     -29.609988 , longitude:   28.233608))//
        listOfCount.append(CountryLocation(name: "Lithuania", alpha2code: "LT", alpha3code: "", latitude:     55.169438 , longitude:   23.881275))//
        listOfCount.append(CountryLocation(name: "Luxembourg", alpha2code: "LU", alpha3code: "", latitude:     49.815273 , longitude:   6.129583))//
        listOfCount.append(CountryLocation(name: "Latvia", alpha2code: "LV", alpha3code: "", latitude:     56.879635 , longitude:   24.603189))//
        listOfCount.append(CountryLocation(name: "Libya", alpha2code: "LY", alpha3code: "", latitude:     26.3351 , longitude:   17.228331))//
        listOfCount.append(CountryLocation(name: "Morocco", alpha2code: "MA", alpha3code: "", latitude:     31.791702 , longitude:   -7.09262))//
        listOfCount.append(CountryLocation(name: "Monaco", alpha2code: "MC", alpha3code: "", latitude:     43.750298 , longitude:   7.412841))//
        listOfCount.append(CountryLocation(name: "Moldova", alpha2code: "MD", alpha3code: "", latitude:     47.411631 , longitude:   28.369885))//
        listOfCount.append(CountryLocation(name: "Montenegro", alpha2code: "ME", alpha3code: "", latitude:     42.708678 , longitude:   19.37439))//
        listOfCount.append(CountryLocation(name: "Madagascar", alpha2code: "MG", alpha3code: "", latitude:     -18.766947 , longitude:   46.869107))//
        listOfCount.append(CountryLocation(name: "Marshall Islands", alpha2code: "MH", alpha3code: "", latitude:     7.131474 , longitude:   171.184478))//
        listOfCount.append(CountryLocation(name: "Macedonia", alpha2code: "MK", alpha3code: "", latitude:     41.608635 , longitude:   21.745275))//     [FYROM]
        listOfCount.append(CountryLocation(name: "Mali", alpha2code: "ML", alpha3code: "", latitude:     17.570692 , longitude:   -3.996166))//
        listOfCount.append(CountryLocation(name: "Myanmar", alpha2code: "MM", alpha3code: "", latitude:     21.913965 , longitude:   95.956223))//     [Burma]
        listOfCount.append(CountryLocation(name: "Mongolia", alpha2code: "MN", alpha3code: "", latitude:     46.862496 , longitude:   103.846656))//
        listOfCount.append(CountryLocation(name: "Macau", alpha2code: "MO", alpha3code: "", latitude:     22.198745 , longitude:   113.543873))//
        listOfCount.append(CountryLocation(name: "Northern Mariana Islands", alpha2code: "MP", alpha3code: "", latitude:     17.33083  , longitude:  145.38469))//
        listOfCount.append(CountryLocation(name: "Martinique", alpha2code: "MQ", alpha3code: "", latitude:     14.641528 , longitude:   -61.024174))//
        listOfCount.append(CountryLocation(name: "Mauritania", alpha2code: "MR", alpha3code: "", latitude:     21.00789 , longitude:   -10.940835))//
        listOfCount.append(CountryLocation(name: "Montserrat", alpha2code: "MS", alpha3code: "", latitude:     16.742498 , longitude:   -62.187366))//
        listOfCount.append(CountryLocation(name: "Malta", alpha2code: "MT", alpha3code: "", latitude:     35.937496 , longitude:   14.375416))//
        listOfCount.append(CountryLocation(name: "Mauritius", alpha2code: "MU", alpha3code: "", latitude:     -20.348404  , longitude:  57.552152))//
        listOfCount.append(CountryLocation(name: "Maldives", alpha2code: "MV", alpha3code: "", latitude:     3.202778  , longitude:  73.22068))//
        listOfCount.append(CountryLocation(name: "Malawi", alpha2code: "MW", alpha3code: "", latitude:     -13.254308 , longitude:   34.301525))//
        listOfCount.append(CountryLocation(name: "Mexico", alpha2code: "MX", alpha3code: "", latitude:     23.634501 , longitude:   -102.552784))//
        listOfCount.append(CountryLocation(name: "Malaysia", alpha2code: "MY", alpha3code: "", latitude:     4.210484 , longitude:   101.975766))//
        listOfCount.append(CountryLocation(name: "Mozambique", alpha2code: "MZ", alpha3code: "", latitude:     -18.665695, longitude:    35.529562))//
        listOfCount.append(CountryLocation(name: "Namibia", alpha2code: "NA", alpha3code: "", latitude:     -22.95764 , longitude:   18.49041))//
        listOfCount.append(CountryLocation(name: "New Caledonia", alpha2code: "NC", alpha3code: "", latitude:     -20.904305 , longitude:   165.618042))//
        listOfCount.append(CountryLocation(name: "Niger", alpha2code: "NE", alpha3code: "", latitude:     17.607789 , longitude:   8.081666))//
        listOfCount.append(CountryLocation(name: "Norfolk Island", alpha2code: "NF", alpha3code: "", latitude:     -29.040835 , longitude:   167.954712))//
        listOfCount.append(CountryLocation(name: "Nigeria", alpha2code: "NG", alpha3code: "", latitude:     9.081999 , longitude:   8.675277))//
        listOfCount.append(CountryLocation(name: "Nicaragua", alpha2code: "NI", alpha3code: "", latitude:     12.865416 , longitude:   -85.207229))//
        listOfCount.append(CountryLocation(name: "Netherlands", alpha2code: "NL", alpha3code: "", latitude:     52.132633 , longitude:   5.291266))//
        listOfCount.append(CountryLocation(name: "Norway", alpha2code: "NO", alpha3code: "", latitude:     60.472024 , longitude:   8.468946))//
        listOfCount.append(CountryLocation(name: "Nepal", alpha2code: "NP", alpha3code: "", latitude:     28.394857 , longitude:   84.124008))//
        listOfCount.append(CountryLocation(name: "Nauru", alpha2code: "NR", alpha3code: "", latitude:     -0.522778 , longitude:   166.931503))//
        listOfCount.append(CountryLocation(name: "Niue", alpha2code: "NU", alpha3code: "", latitude:     -19.054445 , longitude:   -169.867233))//
        listOfCount.append(CountryLocation(name: "New Zealand", alpha2code: "NZ", alpha3code: "", latitude:     -40.900557 , longitude:   174.885971))//
        listOfCount.append(CountryLocation(name: "Oman", alpha2code: "OM", alpha3code: "", latitude:     21.512583 , longitude:   55.923255))//
        listOfCount.append(CountryLocation(name: "Panama", alpha2code: "PA", alpha3code: "", latitude:     8.537981  , longitude:  -80.782127))//
        listOfCount.append(CountryLocation(name: "Peru", alpha2code: "PE", alpha3code: "", latitude:     -9.189967 , longitude:   -75.015152))//
        listOfCount.append(CountryLocation(name: "French Polynesia", alpha2code: "PF", alpha3code: "", latitude:     -17.679742 , longitude:  -149.406843))//
        listOfCount.append(CountryLocation(name: "Papua New Guinea", alpha2code: "PG", alpha3code: "", latitude:     -6.314993  , longitude:  143.95555))//
        listOfCount.append(CountryLocation(name: "Philippines", alpha2code: "PH", alpha3code: "", latitude:     12.879721  , longitude:  121.774017))//
        listOfCount.append(CountryLocation(name: "Pakistan", alpha2code: "PK", alpha3code: "", latitude:     30.375321 , longitude:   69.345116))//
        listOfCount.append(CountryLocation(name: "Poland", alpha2code: "PL", alpha3code: "", latitude:     51.919438 , longitude:   19.145136))//
        listOfCount.append(CountryLocation(name: "Saint Pierre and Miquelon", alpha2code: "PM", alpha3code: "", latitude:     46.941936 , longitude:   -56.27111))//
        listOfCount.append(CountryLocation(name: "Pitcairn Islands", alpha2code: "PN", alpha3code: "", latitude:     -24.703615 , longitude:   -127.439308))//
        listOfCount.append(CountryLocation(name: "Puerto Rico", alpha2code: "PR", alpha3code: "", latitude:    18.220833 , longitude:   -66.590149))//
        listOfCount.append(CountryLocation(name: "Palestinian Territories", alpha2code: "PS", alpha3code: "", latitude:     31.952162 , longitude:   35.233154))//
        listOfCount.append(CountryLocation(name: "Portugal", alpha2code: "PT", alpha3code: "", latitude:     39.399872, longitude:    -8.224454))//
        listOfCount.append(CountryLocation(name: "Palau", alpha2code: "PW", alpha3code: "", latitude:     7.51498 , longitude:   134.58252))//
        listOfCount.append(CountryLocation(name: "Paraguay", alpha2code: "PY", alpha3code: "", latitude:     -23.442503, longitude:    -58.443832))//
        listOfCount.append(CountryLocation(name: "Qatar", alpha2code: "QA", alpha3code: "", latitude:     25.354826, longitude:    51.183884))//
        listOfCount.append(CountryLocation(name: "Réunion", alpha2code: "RE", alpha3code: "", latitude:     -21.115141, longitude:    55.536384))//
        listOfCount.append(CountryLocation(name: "Romania", alpha2code: "RO", alpha3code: "", latitude:     45.943161 , longitude:   24.96676))//
        listOfCount.append(CountryLocation(name: "Serbia", alpha2code: "RS", alpha3code: "", latitude:     44.016521 , longitude:   21.005859))//
        listOfCount.append(CountryLocation(name: "Russia", alpha2code: "RU", alpha3code: "", latitude:     61.52401 , longitude:   105.318756))//    
        listOfCount.append(CountryLocation(name: "Rwanda", alpha2code: "RW", alpha3code: "", latitude:     -1.940278 , longitude:   29.873888))//
        listOfCount.append(CountryLocation(name: "Saudi Arabia", alpha2code: "SA", alpha3code: "", latitude:     23.885942, longitude:    45.079162))//
        listOfCount.append(CountryLocation(name: "Solomon Islands", alpha2code: "SB", alpha3code: "", latitude:     -9.64571 , longitude:   160.156194))//
        listOfCount.append(CountryLocation(name: "Seychelles", alpha2code: "SC", alpha3code: "", latitude:     -4.679574 , longitude:   55.491977))//
        listOfCount.append(CountryLocation(name: "Sudan", alpha2code: "SD", alpha3code: "", latitude:     12.862807 , longitude:   30.217636))//
        listOfCount.append(CountryLocation(name: "Sweden", alpha2code: "SE", alpha3code: "", latitude:     60.128161, longitude:    18.643501))//
        listOfCount.append(CountryLocation(name: "Singapore", alpha2code: "SG", alpha3code: "", latitude:     1.352083 , longitude:   103.819836))//
        listOfCount.append(CountryLocation(name: "Saint Helena", alpha2code: "SH", alpha3code: "", latitude:     -24.143474, longitude:    -10.030696))//
        listOfCount.append(CountryLocation(name: "Slovenia", alpha2code: "SI", alpha3code: "", latitude:     46.151241 , longitude:   14.995463))//
        listOfCount.append(CountryLocation(name: "Svalbard and Jan Mayen", alpha2code: "SJ", alpha3code: "", latitude:     77.553604 , longitude:   23.670272))//
        listOfCount.append(CountryLocation(name: "Slovakia", alpha2code: "SK", alpha3code: "", latitude:     48.669026 , longitude:   19.699024))//
        listOfCount.append(CountryLocation(name: "Sierra Leone", alpha2code: "SL", alpha3code: "", latitude:     8.460555 , longitude:   -11.779889))//
        listOfCount.append(CountryLocation(name: "San Marino", alpha2code: "SM", alpha3code: "", latitude:     43.94236 , longitude:   12.457777))//
        listOfCount.append(CountryLocation(name: "Senegal", alpha2code: "SN", alpha3code: "", latitude:     14.497401, longitude:    -14.452362))//
        listOfCount.append(CountryLocation(name: "Somalia", alpha2code: "SO", alpha3code: "", latitude:    5.152149 , longitude:   46.199616))//
        listOfCount.append(CountryLocation(name: "Suriname", alpha2code: "SR", alpha3code: "", latitude:     3.919305 , longitude:   -56.027783))//
        listOfCount.append(CountryLocation(name: "Sao Tome and Principe", alpha2code: "ST", alpha3code: "", latitude:     0.18636 , longitude:   6.613081))//
        listOfCount.append(CountryLocation(name: "El Salvador", alpha2code: "SV", alpha3code: "", latitude:     13.794185 , longitude:   -88.89653))//
        listOfCount.append(CountryLocation(name: "Syria", alpha2code: "SY", alpha3code: "", latitude:     34.802075 , longitude:   38.996815))//
        listOfCount.append(CountryLocation(name: "Swaziland", alpha2code: "SZ", alpha3code: "", latitude:     -26.522503 , longitude:   31.465866))//
        listOfCount.append(CountryLocation(name: "Turks and Caicos Islands", alpha2code: "TC", alpha3code: "", latitude:     21.694025 , longitude:   -71.797928))//
        listOfCount.append(CountryLocation(name: "Chad", alpha2code: "TD", alpha3code: "", latitude:    15.454166 , longitude:   18.732207))//
        listOfCount.append(CountryLocation(name: "French Southern Territories", alpha2code: "TF", alpha3code: "", latitude:     -49.280366 , longitude:   69.348557))//
        listOfCount.append(CountryLocation(name: "Togo", alpha2code: "TG", alpha3code: "", latitude:     8.619543 , longitude:   0.824782))//
        listOfCount.append(CountryLocation(name: "Thailand", alpha2code: "TH", alpha3code: "", latitude:     15.870032, longitude:    100.992541))//
        listOfCount.append(CountryLocation(name: "Tajikistan", alpha2code: "TJ", alpha3code: "", latitude:     38.861034 , longitude:   71.276093))//
        listOfCount.append(CountryLocation(name: "Tokelau", alpha2code: "TK", alpha3code: "", latitude:     -8.967363 , longitude:   -171.855881))//
        listOfCount.append(CountryLocation(name: "Timor-Leste", alpha2code: "TL", alpha3code: "", latitude:     -8.874217 , longitude:   125.727539))//
        listOfCount.append(CountryLocation(name: "Turkmenistan", alpha2code: "TM", alpha3code: "", latitude:     38.969719 , longitude:   59.556278))//
        listOfCount.append(CountryLocation(name: "Tunisia", alpha2code: "TN", alpha3code: "", latitude:     33.886917  , longitude:  9.537499))//
        listOfCount.append(CountryLocation(name: "Tonga", alpha2code: "TO", alpha3code: "", latitude:     -21.178986  , longitude:  -175.198242))//
        listOfCount.append(CountryLocation(name: "Turkey", alpha2code: "TR", alpha3code: "", latitude:     38.963745 , longitude:   35.243322))//
        listOfCount.append(CountryLocation(name: "Trinidad and Tobago", alpha2code: "TT", alpha3code: "", latitude:     10.691803 , longitude:   -61.222503))//
        listOfCount.append(CountryLocation(name: "Tuvalu", alpha2code: "TV", alpha3code: "", latitude:     -7.109535 , longitude:   177.64933))//
        listOfCount.append(CountryLocation(name: "Taiwan", alpha2code: "TW", alpha3code: "", latitude:     23.69781 , longitude:   120.960515))//
        listOfCount.append(CountryLocation(name: "Tanzania", alpha2code: "TZ", alpha3code: "", latitude:    -6.369028  , longitude:  34.888822))//
        listOfCount.append(CountryLocation(name: "Ukraine", alpha2code: "UA", alpha3code: "", latitude:     48.379433 , longitude:   31.16558))//
        listOfCount.append(CountryLocation(name: "Uganda", alpha2code: "UG", alpha3code: "", latitude:     1.373333 , longitude:   32.290275))//
        listOfCount.append(CountryLocation(name: "USA", alpha2code: "US", alpha3code: "", latitude:     37.09024 , longitude:   -95.712891))//
        listOfCount.append(CountryLocation(name: "Uruguay", alpha2code: "UY", alpha3code: "", latitude:     -32.522779 , longitude:   -55.765835))//
        listOfCount.append(CountryLocation(name: "Uzbekistan", alpha2code: "UZ", alpha3code: "", latitude:     41.377491 , longitude:   64.585262))//
        listOfCount.append(CountryLocation(name: "Vatican City", alpha2code: "VA", alpha3code: "", latitude:     41.902916 , longitude:   12.453389))//
        listOfCount.append(CountryLocation(name: "Saint Vincent and the Grenadines", alpha2code: "VC", alpha3code: "", latitude:     12.984305 , longitude:   -61.287228))//
        listOfCount.append(CountryLocation(name: "Venezuela", alpha2code: "VE", alpha3code: "", latitude:     6.42375 , longitude:   -66.58973))//
        listOfCount.append(CountryLocation(name: "British Virgin Islands", alpha2code: "VG", alpha3code: "", latitude:     18.420695 , longitude:   -64.639968))//
        listOfCount.append(CountryLocation(name: "U.S. Virgin Islands", alpha2code: "VI", alpha3code: "", latitude:     18.335765 , longitude:   -64.896335))//
        listOfCount.append(CountryLocation(name: "Vietnam", alpha2code: "VN", alpha3code: "", latitude:     14.058324 , longitude:   108.277199 ))//
        listOfCount.append(CountryLocation(name: "Vanuatu", alpha2code: "VU", alpha3code: "", latitude:     -15.376706, longitude:    166.959158 ))//
        listOfCount.append(CountryLocation(name: "Wallis and Futuna", alpha2code: "WF", alpha3code: "", latitude:     -13.768752 , longitude:   -177.156097))//
        listOfCount.append(CountryLocation(name: "Samoa", alpha2code: "WS", alpha3code: "", latitude:     -13.759029, longitude:    -172.104629))//
        listOfCount.append(CountryLocation(name: "Kosovo", alpha2code: "XK", alpha3code: "", latitude:     42.602636 , longitude:   20.902977))//
        listOfCount.append(CountryLocation(name: "Yemen", alpha2code: "YE", alpha3code: "", latitude:     15.552727, longitude:    48.516388))//
        listOfCount.append(CountryLocation(name: "Mayotte", alpha2code: "YT", alpha3code: "", latitude:     -12.8275 , longitude:   45.166244))//
        listOfCount.append(CountryLocation(name: "South Africa", alpha2code: "ZA", alpha3code: "", latitude:     -30.559482, longitude:    22.937506))//
        listOfCount.append(CountryLocation(name: "Zambia", alpha2code: "ZM", alpha3code: "", latitude:     -13.133897, longitude:    27.849332))//
        listOfCount.append(CountryLocation(name: "Zimbabwe", alpha2code: "ZW", alpha3code: "", latitude:     -19.015438, longitude:    29.154857))//
        
        self.listOfCountries = listOfCount.sorted(by: { $0.name < $1.name })
    }
}
