Feature: Autenticación de Usuarios

Scenario: Inicio de sesión con correo y contraseña correctos
    Given que el endpoint "/api/auth/login" se encuentra disponible
    And un usuario desea iniciar sesión proporcionando un correo y contraseña,
    When la petición POST es enviada junto a valores para el correo y contraseña,
    Then se recibe una respuesta 200 Ok conformada por un token de acceso JWT (JSON Web Token)

Scenario: Inicio de sesión con correo o contraseña incorrectos
    Given que el endpoint "/api/auth/login" se encuentra disponible
    And un usuario desea iniciar sesión proporcionando un correo y contraseña,
    And el correo o contraseña son erróneos,
    When la petición POST es enviada junto a valores para el correo y contraseña,
    Then se recibe una respuesta 401 Unauthorized
    And un mensaje es incluído en la respuesta con el valor de "Correo o contraseña incorrectos"

Scenario: Inicio de sesión con cuenta de Google
    Given que un usuario desea iniciar sesión utilizando su cuenta de Google,
    When el usuario selecciona la opción de inicio de sesión con Google y autoriza la aplicación a través de la API de Google,
    Then el sistema debe recibir un token de Google,
    And  el sistema debe validar el token con los servidores de Google,
    And si el token es válido, el sistema debe verificar si el usuario ya está registrado con ese correo de Google en la base de datos, si el usuario no está registrado, el sistema debe crear un nuevo usuario con los datos proporcionados por Google y devolver un 200 OK con un token de acceso JWT,si el usuario está registrado, simplemente devolver un 200 OK con un token de acceso JWT.

Scenario: Manejar errores en la autenticación con Google
    Given que ocurre un error al intentar autenticar con Google (por ejemplo, el token de Google es inválido o ha expirado),
    When el sistema intenta validar el token con Google,
    Then se recibe un 400 Bad Request o 401 Unauthorized indicando el error específico relacionado con la autenticación de Google.

Scenario: Recuperación de Contraseña con correo electrónico existente
    Given que el endpoint "/api/auth/recover-password" se encuentra disponible
    And que un usuario olvidó su contraseña y necesita restablecerla,
    When el usuario solicita una recuperación de contraseña enviando una solicitud POST con su correo electrónico como valor
    And si el correo electrónico es válido
    Then es enviado un correo electrónico de recuperación de contraseña a la cuenta del usuario

Scenario: Recuperación de Contraseña con correo electrónico inexistente o no relacionado con cuenta
    Given que el endpoint "/api/auth/recover-password" se encuentra disponible
    And que un usuario olvidó su contraseña y necesita restablecerla,
    When el usuario solicita una recuperación de contraseña enviando una solicitud POST con su correo electrónico como valor
    And si el correo electrónico es uno inexistente o no registrado en la aplicaicón
    Then es se recibe un 404 Not Found
    And  un mensaje es incluído en el response con el valor "Cuenta inexistente o no registrada". Escenario 6: Restablecimiento de Contraseña exitoso
    Given que el endpoint "/api/auth/reset-password" se encuentra disponible
    And que un usuario haya recibido un enlace de restablecimiento de contraseña
    And haya proporcionado una nueva contraseña
    When se envía una solicitud POST junto con la contraseña nueva y el token de restablecimiento obtenido del correo electrónico,
    And el token de restablecimiento es validado correctamente, Then la contraseña es reestablecida
    And es recibida una respuesta tipo 200 OK conformado por un mensaje con el valor "Contraseña reestablecida correctamente"

Scenario: Restablecimiento de Contraseña inexitoso
    Given que el endpoint "/api/auth/reset-password" se encuentra disponible
    And que un usuario haya recibido un enlace de restablecimiento de contraseña
    And haya proporcionado una nueva contraseña
    When se envía una solicitud POST junto con la contraseña nueva y el token de restablecimiento obtenido del correo electrónico,
    And el token de restablecimiento es inválidado o expiró, Then la contraseña no es reestablecida
    And es recibida una respuesta tipo 400 Bad Request o 401 Unauthorized
    And  un mensaje es incluído en la respuesta con el valor "Problema con token de reestablecimiento"

Scenario: Cierre de Sesión
    Given que el endpoint "/api/auth/logout" se encuentra disponible
    And que un usuario desea cerrar su sesión activa,
    When una petición POST es enviada
    Then el token JWT actual del usuario es invalidado, impidiendo su uso futuro para autenticación,
    And es recibido un 200 OK confirmando que el usuario ha cerrado sesión correctamente.