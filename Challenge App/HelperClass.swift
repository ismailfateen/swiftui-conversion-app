//
//  HelperClass.swift
//  Challenge App
//
//  Created by Ismail Fateen on 22/06/2022.
//

import Foundation


class HelperClass {
    let type: ConversionType
    
    init(for type: ConversionType) {
        self.type = type
    }
    
    func getOptions() -> [String] {
        var returns: [String]
        switch (self.type) {
        case .temperature:
            returns = ["Celsius", "Kelvin", "Fahrenheit"]
        case .volume:
            returns = ["Milliliters", "Liters", "Cups", "Pints", "Gallons"]
        case .length:
            returns = ["Meters", "Kilometers", "Feets", "Yards", "Miles"]
        case .time:
            returns = ["Seconds", "Minutes", "Hours", "Days"]
        }
        
        return returns
    }
    
    func convert(from: String, to: String, value: Double) -> Double {
        switch (from) {
        case "Meters":
            switch (to) {
            case "Meters":
                return value
            case "Kilometers":
                return LengthHelper.thousandDivider(value)
            case "Feets":
                return LengthHelper.meterToFeet(value)
            case "Yards":
                return LengthHelper.meterToYard(value)
            case "Miles":
                return LengthHelper.meterToMile(value)
            default:
                return 0.0
            }
        case "Kilometers":
            switch (to) {
            case "Meters":
                return LengthHelper.thousandMultiplier(value)
            case "Kilometers":
                return value
            case "Feets":
                return LengthHelper.kilometerToFeet(value)
            case "Yards":
                return LengthHelper.kilometerToYard(value)
            case "Miles":
                return LengthHelper.kilometerToMile(value)
            default:
                return 0.0
            }
        case "Feets":
            switch (to) {
            case "Meters":
                return LengthHelper.feetToMeter(value)
            case "Kilometers":
                return LengthHelper.feetToKilometer(value)
            case "Feets":
                return value
            case "Yards":
                return LengthHelper.feetToYard(value)
            case "Miles":
                return LengthHelper.feetToMile(value)
            default:
                return 0.0
            }
        case "Yards":
            switch (to) {
            case "Meters":
                return LengthHelper.yardToMeter(value)
            case "Kilometers":
                return LengthHelper.yardToKilometer(value)
            case "Feets":
                return LengthHelper.yardToFeet(value)
            case "Yards":
                return value
            case "Miles":
                return LengthHelper.yardToMile(value)
            default:
                return 0.0
            }
        case "Miles":
            switch (to) {
            case "Meters":
                return LengthHelper.mileToMeter(value)
            case "Kilometers":
                return LengthHelper.mileToKilometer(value)
            case "Feets":
                return LengthHelper.mileToFeet(value)
            case "Yards":
                return LengthHelper.mileToYard(value)
            case "Miles":
                return value
            default:
                return 0.0
            }
        case "Celsius":
            switch (to) {
            case "Celsius":
                return value
            case "Kelvin":
                return TemperatureHelper.celsiusToKelvin(value)
            case "Fahrenheit":
                return TemperatureHelper.celsiusToFahrenheit(value)
            default:
                return 0.0
            }
        case "Kelvin":
            switch (to) {
            case "Celsius":
                return TemperatureHelper.kelvinToCelsius(value)
            case "Kelvin":
                return value
            case "Fahrenheit":
                return TemperatureHelper.kelvinToFahrenheit(value)
            default:
                return 0.0
            }
        case "Fahrenheit":
            switch (to) {
            case "Celsius":
                return TemperatureHelper.fahrenheitToCelsius(value)
            case "Kelvin":
                return TemperatureHelper.fahrenheitToKelvin(value)
            case "Fahrenheit":
                return value
            default:
                return 0.0
            }
        case "Seconds":
            switch (to) {
            case "Seconds":
                return value
            case "Minutes":
                return TimeHelper.secondsToMinutes(value)
            case "Hours":
                return TimeHelper.secondsToDays(value)
            case "Days":
                return TimeHelper.secondsToDays(value)
            default:
                return 0.0
            }
        case "Minutes":
            switch (to) {
            case "Seconds":
                return TimeHelper.minutesToSeconds(value)
            case "Minutes":
                return value
            case "Hours":
                return TimeHelper.minutesToHours(value)
            case "Days":
                return TimeHelper.minutesToDays(value)
            default:
                return 0.0
            }
        case "Hours":
            switch (to) {
            case "Seconds":
                return TimeHelper.hoursToSeconds(value)
            case "Minutes":
                return TimeHelper.hoursToMinutes(value)
            case "Hours":
                return value
            case "Days":
                return TimeHelper.hoursToDays(value)
            default:
                return 0.0
            }
        case "Days":
            switch (to) {
            case "Seconds":
                return TimeHelper.daysToSeconds(value)
            case "Minutes":
                return TimeHelper.daysToMinutes(value)
            case "Hours":
                return TimeHelper.daysToHours(value)
            case "Days":
                return value
            default:
                return 0.0
            }
        case "Milliliters":
            switch (to) {
            case "Milliliters":
                return value
            case "Liters":
                return VolumeHelper.millilitersToLiters(value)
            case "Cups":
                return VolumeHelper.millilitersToCups(value)
            case "Pints":
                return VolumeHelper.millilitersToPints(value)
            case "Gallons":
                return VolumeHelper.millilitersToGallons(value)
            default:
                return 0.0
            }
        case "Liters":
            switch (to) {
            case "Milliliters":
                return VolumeHelper.litersToMilliliters(value)
            case "Liters":
                return value
            case "Cups":
                return VolumeHelper.litersToCups(value)
            case "Pints":
                return VolumeHelper.litersToPints(value)
            case "Gallons":
                return VolumeHelper.litersToGallons(value)
            default:
                return 0.0
            }
        case "Cups":
            switch (to) {
            case "Milliliters":
                return VolumeHelper.cupsToMilliliters(value)
            case "Liters":
                return VolumeHelper.cupsToLiters(value)
            case "Cups":
                return value
            case "Pints":
                return VolumeHelper.cupsToPints(value)
            case "Gallons":
                return VolumeHelper.cupsToGallons(value)
            default:
                return 0.0
            }
        case "Pints":
            switch (to) {
            case "Milliliters":
                return VolumeHelper.pintsToMilliliters(value)
            case "Liters":
                return VolumeHelper.pintsToLiters(value)
            case "Cups":
                return VolumeHelper.pintsToCups(value)
            case "Pints":
                return value
            case "Gallons":
                return VolumeHelper.pintsToGallons(value)
            default:
                return 0.0
            }
        case "Gallons":
            switch (to) {
            case "Milliliters":
                return VolumeHelper.gallonsToMilliliters(value)
            case "Liters":
                return VolumeHelper.gallonsToLiters(value)
            case "Cups":
                return VolumeHelper.gallonsToCups(value)
            case "Pints":
                return VolumeHelper.gallonsToPints(value)
            case "Gallons":
                return value
            default:
                return 0.0
            }
        default:
            return 0.0
        }
        
    }

}


class TemperatureHelper {
    static func celsiusToFahrenheit(_ value: Double) -> Double {
        return (value * 1.8) + 32
    }
    
    static func fahrenheitToCelsius(_ value: Double) -> Double {
        return (value - 32) * 0.5556
    }
    
    static func celsiusToKelvin(_ value: Double) -> Double {
        return value + 273.15
    }
    
    static func kelvinToCelsius(_ value: Double) -> Double {
        return value - 273.15
    }
    
    static func fahrenheitToKelvin(_ value: Double) -> Double {
        return TemperatureHelper.fahrenheitToCelsius(value) + 273.15
    }
    
    static func kelvinToFahrenheit(_ value: Double) -> Double {
        return TemperatureHelper.celsiusToFahrenheit(TemperatureHelper.kelvinToCelsius(value))
    }
}

class LengthHelper {
    static func thousandMultiplier(_ value: Double) -> Double {
        return value * 1000
    }
    
    static func thousandDivider(_ value: Double) -> Double {
        return value / 1000
    }
    
    static func meterToFeet(_ value: Double) -> Double {
        return value * 3.28084
    }
    
    static func feetToMeter(_ value: Double) -> Double {
        return value / 3.28084
    }
    
    static func meterToYard(_ value: Double) -> Double {
        return value * 1.09361
    }
    
    static func yardToMeter(_ value: Double) -> Double {
        return value / 1.09361
    }
    
    static func meterToMile(_ value: Double) -> Double {
        return value * 0.000621371
    }
    
    static func mileToMeter(_ value: Double) -> Double {
        return value / 0.000621371
    }
    
    static func kilometerToFeet(_ value: Double) -> Double {
        return value * 3280.84
    }
    
    static func feetToKilometer(_ value: Double) -> Double {
        return value / 3280.84
    }
    
    static func kilometerToYard(_ value: Double) -> Double {
        return value * 1093.61
    }
    
    static func yardToKilometer(_ value: Double) -> Double {
        return value / 1093.61
    }
    
    static func kilometerToMile(_ value: Double) -> Double {
        return value * 0.621371
    }
    
    static func mileToKilometer(_ value: Double) -> Double {
        return value / 0.621371
    }
    
    static func feetToYard(_ value: Double) -> Double {
        return value / 3
    }
    
    static func yardToFeet(_ value: Double) -> Double {
        return value * 3
    }
    
    static func feetToMile(_ value: Double) -> Double {
        return value / 5280
    }
    
    static func mileToFeet(_ value: Double) -> Double {
        return value * 5280
    }
    
    static func yardToMile(_ value: Double) -> Double {
        return value / 1760
    }
    
    static func mileToYard(_ value: Double) -> Double {
        return value * 1760
    }
}


class TimeHelper {
    static func secondsToMinutes(_ value: Double) -> Double {
        return value / 60
    }
    static func minutesToSeconds(_ value: Double) -> Double {
        return value * 60
    }
    static func secondsToHours(_ value: Double) -> Double {
        return value / 3600
    }
    static func hoursToSeconds(_ value: Double) -> Double {
        return value * 3600
    }
    static func secondsToDays(_ value: Double) -> Double {
        return value / 86400
    }
    static func daysToSeconds(_ value: Double) -> Double {
        return value * 86400
    }
    static func minutesToHours(_ value: Double) -> Double {
        return TimeHelper.secondsToMinutes(value)
    }
    static func minutesToDays(_ value: Double) -> Double {
        return TimeHelper.secondsToDays(TimeHelper.minutesToSeconds(value))
    }
    static func hoursToMinutes(_ value: Double) -> Double {
        return TimeHelper.minutesToSeconds(value)
    }
    static func daysToMinutes(_ value:Double) -> Double {
        return TimeHelper.secondsToMinutes(TimeHelper.daysToSeconds(value))
    }
    static func hoursToDays(_ value: Double) -> Double {
        return value / 24
    }
    static func daysToHours(_ value: Double) -> Double {
        return value * 24
    }
}


class VolumeHelper {
    static func millilitersToLiters(_ value: Double) -> Double {
        return value / 1000
    }
    static func litersToMilliliters(_ value: Double) -> Double {
        return value * 1000
    }
    static func millilitersToCups(_ value: Double) -> Double {
        return value / 236.6
    }
    static func cupsToMilliliters(_ value: Double) -> Double {
        return value * 236.6
    }
    static func millilitersToPints(_ value: Double) -> Double {
        return value / 473.2
    }
    static func pintsToMilliliters(_ value: Double) -> Double {
        return value * 473.2
    }
    static func millilitersToGallons(_ value: Double) -> Double {
        return value / 3785
    }
    static func gallonsToMilliliters(_ value: Double) -> Double {
        return value * 3785
    }
    static func litersToCups(_ value: Double) -> Double {
        return value * 4.227
    }
    static func cupsToLiters(_ value: Double) -> Double {
        return value / 4.227
    }
    static func litersToPints(_ value: Double) -> Double {
        return value * 2.113
    }
    static func pintsToLiters(_ value: Double) -> Double {
        return value / 2.113
    }
    static func litersToGallons(_ value: Double) -> Double {
        return value / 3.785
    }
    static func gallonsToLiters(_ value: Double) -> Double {
        return value * 3.785
    }
    static func cupsToPints(_ value: Double) -> Double {
        return value / 2
    }
    static func pintsToCups(_ value: Double) -> Double {
        return value * 2
    }
    static func cupsToGallons(_ value: Double) -> Double {
        return value / 16
    }
    static func gallonsToCups(_ value: Double) -> Double {
        return value * 16
    }
    static func pintsToGallons(_ value: Double) -> Double {
        return value / 8
    }
    static func gallonsToPints(_ value: Double) -> Double {
        return value * 8
    }
}
