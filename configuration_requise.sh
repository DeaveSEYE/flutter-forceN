#!/bin/bash

# configuration_global.sh

# Définissez les versions recommandées
RECOMMENDED_FLUTTER_VERSION="3.24.4"
RECOMMENDED_GRADLE_VERSION="8.10.2"

echo "//////// Version de flutter /////////"
flutter --version 
echo -e "\n"
# Vérifiez la version de Flutter
flutter_version=$(flutter --version | head -n 1 | awk '{print $2}')
if [ "$flutter_version" != "$RECOMMENDED_FLUTTER_VERSION" ]; then
    echo "Version Flutter recommandée : $RECOMMENDED_FLUTTER_VERSION. Version actuelle : $flutter_version"
    echo -e "\n"
        echo -e "Telecharger la version de flutter recommandé  : https://docs.flutter.dev/get-started/install/windows/mobile \n"
else
    echo "Version Flutter correcte : $flutter_version"
    echo -e "\n"
fi

echo "//////// Version de gradle /////////"
gradle -v 
# Vérifiez la version de Gradle
gradle_version=$(gradle -v | grep Gradle | awk '{print $2}')
if [ "$gradle_version" != "$RECOMMENDED_GRADLE_VERSION" ]; then
     echo -e "\n"
    echo "Version Gradle recommandée : $RECOMMENDED_GRADLE_VERSION. Version actuelle : $gradle_version"
    echo -e "Telecharger la version de gradle recommandé  : https://services.gradle.org/distributions \n"
else
   echo -e "\n"
    echo "Version Gradle correcte : $gradle_version"
fi


