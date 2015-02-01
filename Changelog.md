# JFLTE-GPE

Visit [GitHub](https://github.com/Kryten2k35/JFLTE-GPE) for full source

Visit [UltimaROM](http://ultimarom.com) for downloads

### Changelog 20150205
* Updated Busybox to 1.23.0-Stericson
* Updated Google Messenger
* Updated NetworkTraffic mod style to match the clock (font weight and style)
* Updated AROMA installer - now dark themed by @Kryten2k35
* Added new method for disabling hardware buttons, also added ability to use Menu button as Recents, as has been requested a lot
* Added new method of turning off the hardware keys backlight (no more rebooting to change this)
* Added markdown parsing of the changelog in Settings (check Settings->About->ROM Changelog)
* Added Battery light (LED) controls
* Added Double tap statusbar to sleep
* Added quick pull down of the quick tiles
* Added alarm icon switching without having to toggle an alarm
* Added IME notification icon switching
* Added navigation bar height option (can be used to force soft menu key in apps if off)
* Added Ambient Display (on by default - this is default Android behaviour)
* Fixed OTAUpdates "cancel" button not updating to "install" when download finishes
* Fixed battery views and readded the text and landscape icons. Now shows on lockscreen properly
* Fixed clock mod to allow left clock using new CyanogenMod method
* Fixed NetworkTraffic mod not showing a single line correctly
* Fixed default Trebuchet layout
* Removed hidden battery init.d hack - new battery methods work properly now

### Changelog 20150128
* Patched colorfade memory leak in services.jar
* Network improvements for Verizon Wireless
* Removed debug code from OTA app
* Fixed spacing for U/D on network meter
* Fixed Calculator delete string for English UK
* Updates to our themed dialers
* Sound recorder updates, Can now record in mp4 and wav
* Compiled updated CM apps from source
* Update OTA info in build.prop


### Changelog 20150123
* Fixed tethering and enabled bluetooth tethering for all carriers
* Updated Chrome
* Updated Google Search
* Updated Google Play Services
* Updated AOSP Gallery
* Updated Live walpapers
* Updated the Inverted Teal phone/contacts app
* Updated Interface app
* Updated kernel to latest Googy 1.2.7
* Updated SuperSU
* Added full wipe option to aroma
* Added volume panel timeout options
* Added heads up timeout options
* Added long press to skip tracks
* Added hold back to kill current app
* Added clock mods
* Added CyanogenMOD browser option to AROMA
* Added hardware swap file options in AROMA
* Added CM Calculator
* Added a choice in AROMA for Eleven and Apollo music players
* Added AudioFX from CM12 to AROMA
* Removed Gear Manager as it's not working
* Removed WAV option from SoundRecorder, since it's not working
* Live walpapers are now optional in AROMA
* Updated build.prop

### Changelog 20150112
* Rebuilt from scratch to log our changes in GIT, results in cleaner work
* Enabled national roaming on most European virtual networks
* Dirty flashers should no longer need to clear interface app and data
* Fixed roaming for Videotron users in Quebec, Canada
* App ops added to security settings
* Device walpapers included in tiny .apk from source
* Updated Interface app
* Toggle for enable all rotations added to Interface
* Toggle for wake on unplug added to Interface
* Disabling battery icon in Interface will now stick after reboot
* Improved show 4g for LTE toggle
* AROMA improvements
* Motorola Gallery now optional in aroma, it goes amazing with Moto camera
* Oneplus Camera optional in AROMA, HDR and saving to SD card supported
* Inverted teal theme for dialer in contacts added to AROMA
* Custom DPI options in AROMA
* Improvements to the tethering script for some carriers
* Hide alarm clock toggle code simplified 
* Disabled safe media nag
* Removed a duplicate ringtone
* Updated OTA app
* Updated build.prop

### Changelog 20150105
* Even with 5.0.1 LRX22C - Unofficial 5.0.1
* Deodexed framework
* Fixed SMS for vodafone NL
* Increased the falsing threshold - merged from 5.0.1
* Voicemail now can be accessed by holding 1 for most carriers
* Some ADB fail safe fixes that were merged into 5.0.1
* Fixed SystemUI heads up notification spacing
* Ported CM Battery icons to the ROM
* Clear all in recents
* Extended power menu
* Toggle advanced power menu option in interface
* Updated OTA app - fixed open recovery script installation. Using markdown for changelog rendering
* Updated AdAway (fixes for 5.0)


### Changelog 20150102
* TeleService FC with certain languages is fixed
* Cleaned up Updater-Script in regards to setting default network for Sprint
* Googla Wallet is now optional in AROMA
* Google Sound Search is now optional in AROMA
* Apex will now install as intended via AROMA
* DSP or stock processing in AROMA
* Spanish translation for interface app thanks to marcuzzi
* Fixed Voice recorder 
* OTA app updates
* AROMA improvements
* Enabled HD-Voice for all, by default

### Changelog 20150101
* Implemented AROMA installer to customize your installation
* Updated to latest googy_max kernel 1.2.5
* Kernel will auto loki for AT&T/VZW
* Verizon and Sprint will boot with proper framework and CDMA settings right out of the box
* Added a fix for tethering on first boot. No need to reboot or issue a command in the shell
* Turn off experimental NuPlayer by default - Should help fix some audio stuttering issues once and for all
* Fixed FC's in Trebuchet Launcher
* SQlite3 will now work as intended
* Ported CM's Changelog feature into the GPE Settings.apk. Settings->About
* Added option for dark material Settings
* Added a choice for AOSP Messaging with quick reply
* AOSP Sound recorder
* Removed Adblocking by default, made AdAway an option in AROMA
* Added missing Emoji fonts from the Nexus 5
* Updated latest APN entires from CyanogenMod
* Added in Material Gallery from CM (Deleting from SD card now works)
* Added Moto Camera option. Moto Camera cannot shoot in HDR, but supports saving to SD
* Updated OTA Updater. Now correctly checks update on first boot and background services does run to check in time
* Updated Interface with some new icons and added ability to choose whether to disable hardware buttons when using onscreen navigation
* S-tweaks themed material and enhanced
* Updated Google Play Store and Google Camera
* Removed some unnecessary files from the zip
* Material UI themed cLock
