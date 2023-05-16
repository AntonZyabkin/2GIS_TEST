import SwiftUI


extension Color {
    init(hex: String) {
        var lockalHex = hex
        if (lockalHex.hasPrefix("#")) {
            lockalHex.remove(at: lockalHex.startIndex)
        }
        let r, g, b, o: CGFloat
        var hexNumber: UInt64 = 0
        Scanner(string: lockalHex).scanHexInt64(&hexNumber)
        if lockalHex.count == 6 {
            r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
            g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
            b = CGFloat(hexNumber & 0x0000ff) / 255
            self.init(red: r, green: g, blue: b, opacity: 1)
            return
        } else if lockalHex.count == 8 {
            r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
            g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
            b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
            o = CGFloat(hexNumber & 0x000000ff) / 255
            self.init(red: r, green: g, blue: b, opacity: o)
            return
        }
        self.init(red: 0, green: 0, blue: 0, opacity: 0)
    }
}

extension Color {
    init (_ name: String) {
        switch name {
        case "gray-01": self.init(hex:"#FFFFFF")
        case "gray-02": self.init(hex: "#FFFFFF")
        case "gray-03": self.init(hex: "#FFFFFF")
        case "gray-04": self.init(hex: "#FFFFFF")
        case "gray-05": self.init(hex: "#FAFAFA")
        case "gray-06": self.init(hex: "#F5F5F5")
        case "gray-07": self.init(hex: "#E5E5E5")
        case "gray-08": self.init(hex: "#D9D9D9")
        case "gray-09": self.init(hex: "#D1D1D1")
        case "gray-10": self.init(hex: "#BFBFBF")
        case "gray-11": self.init(hex: "#C7C7C7")
        case "gray-12": self.init(hex: "#A6A6A6")
        case "gray-13": self.init(hex: "#999999")
        case "gray-14": self.init(hex: "#808080")
        case "gray-15": self.init(hex: "#666666")
        case "gray-16": self.init(hex: "#4D4D4D")
        case "gray-17": self.init(hex: "#333333")
        case "gray-18": self.init(hex: "#212121")
        case "gray-19": self.init(hex: "#0D0D0D")
        case "gray-20": self.init(hex: "#0D0D0D")
        case "primary-01": self.init(hex: "#F2F8FF")
        case "primary-02": self.init(hex: "#E6F1FE")
        case "primary-03": self.init(hex: "#CCE3FE")
        case "primary-04": self.init(hex: "#B3D5FD")
        case "primary-05": self.init(hex: "#99C7FD")
        case "primary-06": self.init(hex: "#80B9FC")
        case "primary-07": self.init(hex: "#66ABFC")
        case "primary-08": self.init(hex: "#4096FB")
        case "primary-09": self.init(hex: "#2688FB")
        case "primary-10": self.init(hex: "#1A81FA")
        case "success-01": self.init(hex: "#F3FBF7")
        case "success-02": self.init(hex: "#E7F6F0")
        case "success-03": self.init(hex: "#CFEDE1")
        case "success-04": self.init(hex: "#B8E5D2")
        case "success-05": self.init(hex: "#A0DCC3")
        case "success-06": self.init(hex: "#88D3B3")
        case "success-07": self.init(hex: "#70CAA4")
        case "success-08": self.init(hex: "#41B986")
        case "success-09": self.init(hex: "#29B077")
        case "success-10": self.init(hex: "#11A768")
        case "warning-01": self.init(hex: "#FEF9F2")
        case "warning-02": self.init(hex: "#FDF3E6")
        case "warning-03": self.init(hex: "#FBE8CC")
        case "warning-04": self.init(hex: "#F9DCB3")
        case "warning-05": self.init(hex: "#F7D199")
        case "warning-06": self.init(hex: "#F5C580")
        case "warning-07": self.init(hex: "#F3BA66")
        case "warning-08": self.init(hex: "#EFA333")
        case "warning-09": self.init(hex: "#ED971A")
        case "warning-10": self.init(hex: "#EB8C00")
        case "danger-01": self.init(hex: "#FFF5F5")
        case "danger-02": self.init(hex: "#FFECEB")
        case "danger-03": self.init(hex: "#FFD8D6")
        case "danger-04": self.init(hex: "#FFC5C2")
        case "danger-05": self.init(hex: "#FFB1AD")
        case "danger-06": self.init(hex: "#FF9E99")
        case "danger-07": self.init(hex: "#FF8B85")
        case "danger-08": self.init(hex: "#FF645C")
        case "danger-09": self.init(hex: "#FF5047")
        case "danger-10": self.init(hex: "#FF3D33")
        case "info-01": self.init(hex: "#F2F9FC")
        case "info-02": self.init(hex: "#E6F3FA")
        case "info-03": self.init(hex: "#CCE8F5")
        case "info-04": self.init(hex: "#B3DCF0")
        case "info-05": self.init(hex: "#99D1EB")
        case "info-06": self.init(hex: "#80C5E5")
        case "info-07": self.init(hex: "#66B9E0")
        case "info-08": self.init(hex: "#33A2D6")
        case "info-09": self.init(hex: "#1A97D1")
        case "info-10": self.init(hex: "#008BCC")
        case "violet-01": self.init(hex: "#F6F4FA")
        case "violet-02": self.init(hex: "#ECE9F5")
        case "violet-03": self.init(hex: "#DAD4EB")
        case "violet-04": self.init(hex: "#C7BEE0")
        case "violet-05": self.init(hex: "#B5A9D6")
        case "violet-06": self.init(hex: "#A293CC")
        case "violet-07": self.init(hex: "#8F7DC2")
        case "violet-08": self.init(hex: "#6A52AD")
        case "violet-09": self.init(hex: "#583DA3")
        case "violet-10": self.init(hex: "#452799")
        case "purple-01": self.init(hex: "#F9F4FA")
        case "purple-02": self.init(hex: "#F3E9F5")
        case "purple-03": self.init(hex: "#E7D3EB")
        case "purple-04": self.init(hex: "#DCBEE0")
        case "purple-05": self.init(hex: "#D0A8D6")
        case "purple-06": self.init(hex: "#C492CC")
        case "purple-07": self.init(hex: "#B87CC2")
        case "purple-08": self.init(hex: "#A151AD")
        case "purple-09": self.init(hex: "#953BA3")
        case "purple-10": self.init(hex: "#892599")
        case "yellow-01": self.init(hex: "#FFFDF2")
        case "yellow-02": self.init(hex: "#FFFCE6")
        case "yellow-03": self.init(hex: "#FFF8CC")
        case "yellow-04": self.init(hex: "#FFF5B3")
        case "yellow-05": self.init(hex: "#FFF199")
        case "yellow-06": self.init(hex: "#FFEE80")
        case "yellow-07": self.init(hex: "#FFEB66")
        case "yellow-08": self.init(hex: "#FFE433")
        case "yellow-09": self.init(hex: "#FFE01A")
        case "yellow-10": self.init(hex: "#FFDD00")
        case "cyan-01": self.init(hex: "#F2F9FA")
        case "cyan-02": self.init(hex: "#E6F4F5")
        case "cyan-03": self.init(hex: "#CCE9EB")
        case "cyan-04": self.init(hex: "#B3DEE1")
        case "cyan-05": self.init(hex: "#99D3D7")
        case "cyan-06": self.init(hex: "#80C8CD")
        case "cyan-07": self.init(hex: "#66BDC3")
        case "cyan-08": self.init(hex: "#33A7AF")
        case "cyan-09": self.init(hex: "#1A9CA5")
        case "cyan-10": self.init(hex: "#00919B")

        default:
            self.init(.gray)
        }
    }
}

