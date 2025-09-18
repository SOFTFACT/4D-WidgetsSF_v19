xattr -cr "/Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D_WidgetsSF.4dbase/Libraries/lib4d-arm64.dylib"
codesign --remove-signature "/Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D_WidgetsSF.4dbase/Libraries/lib4d-arm64.dylib"
codesign --timestamp --force -o runtime --deep  --verbose=4 -s ZF4Q8LEWNH "/Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D_WidgetsSF.4dbase/Libraries/lib4d-arm64.dylib"
xattr -cr "/Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D_WidgetsSF.4dbase/Contents/Libraries/lib4d-arm64.dylib"
codesign --remove-signature "/Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D_WidgetsSF.4dbase/Contents/Libraries/lib4d-arm64.dylib"
codesign --timestamp --force -o runtime --deep  --verbose=4 -s ZF4Q8LEWNH "/Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D_WidgetsSF.4dbase/Contents/Libraries/lib4d-arm64.dylib"
rm -f "//Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D-WidgetsSF.dmg"
hdiutil create -format UDBZ -plist -srcfolder "/Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D_WidgetsSF.4dbase/" "//Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D-WidgetsSF.dmg"
rm -f "//Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D-WidgetsSF.zip"
ditto -c -k --keepParent "/Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D_WidgetsSF.4dbase/" "//Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D-WidgetsSF.zip"
codesign -o runtime --timestamp --verbose=4 --deep -s ZF4Q8LEWNH "//Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D-WidgetsSF.dmg"
xcrun notarytool submit "//Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D-WidgetsSF.zip" --keychain-profile "notarytool" --wait
xcrun notarytool submit "//Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D-WidgetsSF.dmg" --keychain-profile "notarytool" --wait
xcrun stapler staple "//Users/appmaker/Documents/GitHub/4DComponent/4D-WidgetsSF/Build/Components/4D-WidgetsSF.dmg"