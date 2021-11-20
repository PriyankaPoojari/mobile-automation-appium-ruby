require "appium_lib"

def caps() {
  caps:{
    deviceName: "Samsung-Pri",
    platformName: "Android",
    app: (File.join(File.dirname(__FILE__ ),"universalconverter.apk")),
    appPackage: "com.ba.universalconverter",
    appActivity: "MainConverterActivity",
    newCommandTimeout: "3600"
  }
  }
end

Appium::Driver.new(caps,true)
Appium.promote_appium_methods Object