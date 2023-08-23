soundly)
    name="Soundly"
    type="dmg"
    if [[ $(arch) == "arm64" ]]; then
        downloadURL="https://storage.googleapis.com/soundlyapp/arm/Soundly.dmg"
        appNewVersion=$(getJSONValue "$(curl -fs https://soundly.cloud/?Type=LatestVersion)" "[0].LatestVersion.MacArm.Version")
    elif [[ $(arch) == "i386" ]]; then
        downloadURL="https://storage.googleapis.com/soundlyapp/Soundly.dmg"
        appNewVersion=$(getJSONValue "$(curl -fs https://soundly.cloud/?Type=LatestVersion)" "[0].LatestVersion.MacIntel.Version")
    fi
    expectedTeamID="67Y6N7VTDG"
    ;;
