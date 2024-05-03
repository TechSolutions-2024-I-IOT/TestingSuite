Feature: Diseño Responsivo de la Landing Page

    Scenario: Visualización adecuada en dispositivos móviles
        Given que el visitante accede a la landing page desde un dispositivo móvil
        When el visitante visualiza la página
        Then la página se adapta correctamente al tamaño y resolución de pantalla del dispositivo móvil, manteniendo la legibilidad y la funcionalidad de todos los elementos.

    Scenario: Visualización adecuada en tablets
        Given que el visitante accede a la landing page desde una tablet
        When el visitante visualiza la página
        Then la página se adapta correctamente al tamaño y resolución de pantalla de la tablet, asegurando que todos los elementos y contenidos sean fácilmente accesibles y legibles.

    Scenario: Visualización adecuada en desktops
        Given que el visitante accede a la landing page desde un ordenador de escritorio
        When el visitante visualiza la página
        Then la página se presenta de forma óptima, aprovechando el espacio de la pantalla y manteniendo una distribución equilibrada de los elementos.

    Scenario: Consistencia en la experiencia de usuario
        Given que el visitante navega por la landing page en diferentes dispositivos
        When el visitante cambia entre dispositivos (móvil, tablet, desktop)
        Then la experiencia de usuario es consistente en todos ellos, con una navegación fluida y una presentación coherente de la información y diseño.

    Scenario: Funcionalidad de los elementos interactivos en todos los dispositivos
        Given que el visitante interactúa con los elementos de la landing page
        When el visitante realiza acciones como clics, desplazamientos o interacciones táctiles
        Then todos los elementos interactivos funcionan correctamente en todos los dispositivos, garantizando una experiencia de usuario sin errores ni fallos.