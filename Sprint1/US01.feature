Feature: Redirección de la landing Page a tiendas de aplicaciones

    Scenario: Aplicación publicada en Google Play
        Given que el visitante del segmento pasajero se encuentra en la vista principal de la landing page
        When el visitante selecciona descargar la aplicación para Android
        Then el visitante es redirigido a la página de descarga de la aplicación en Google Play

    Scenario: Aplicación publicada en App Store
        Given que el visitante del segmento pasajero se encuentra en la vista principal de la landing page
        When el visitante selecciona descargar la aplicación para iOS
        Then el visitante es redirigido a la página de descarga de la aplicación en la App Store de iOS

    Scenario: Aplicación no publicada en la Play Store
        Given que el visitante del segmento pasajero se encuentra en la vista principal de la landing page
        And la aplicación no se encuentra publicada en la Play Store
        When el visitante selecciona descargar la aplicación a través de Play Store
        Then es redirigido a la página principal de Google Play

    Scenario: Aplicación no publicada en la App Store
        Given que el visitante del segmento pasajero se encuentra en la vista principal de la landing page
        And la aplicación no se encuentra publicada en la App Store
        When el visitante selecciona descargar la aplicación a través de App Store
        Then es redirigido a la página principal de la App Store de iOS