Feature: Sección de Características del producto

    Scenario: Visualización de la sección de características
        Given que el visitante accede a la landing page
        When el visitante busca la sección de características del producto
        Then se muestra una sección claramente definida con las características principales del producto o servicio, presentadas de forma organizada y fácil de leer.

    Scenario: Detalle de las características
        Given que el visitante visualiza la sección de características del producto
        When el visitante explora cada característica listada
        Then se proporciona una descripción detallada de cada característica, explicando sus funcionalidades y beneficios de manera comprensible.

    Scenario: Iconografía y diseño
        Given que el visitante visualiza la sección de características del producto
        When el visitante observa la presentación visual de las características (como iconos, imágenes o gráficos)
        Then la iconografía y el diseño utilizados son claros, coherentes y facilitan la comprensión rápida de las funcionalidades y beneficios del producto.