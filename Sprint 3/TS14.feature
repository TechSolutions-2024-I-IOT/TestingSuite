Feature: Subscripción Premim

Scenario: Compra exitosa de una suscripción premium
Given que el endpoint "/api/subscriptions/premium/purchase/stripe" se encuentra disponible
When envía una petición POST a /api/subscriptions/premium/purchase/stripe con los detalles de su medio de pago y la duración deseada de la suscripción
And la pasarela de pagos Stripe valida y procesa el pago
Then es recibida una respuesta tipo 200 OK conformada con la confirmación de la compra dado por Stripe y los detalles de la suscripción

Scenario: Fallo en la validación o procesamiento del pago
Given que el endpoint "/api/subscriptions/premium/purchase/stripe" se encuentra disponible
When envía una petición POST a /api/subscriptions/premium/purchase/stripe con los detalles de su medio de pago y la duración deseada de la suscripción
And Stripe invalida el proceso de pago
Then es recibido un 400 Bad Request o 402 Payment Required
And un mensaje es incluído en el response detallando el problema específico encontrado

Scenario: Compra de suscripción premium cuando ya se posee una activa
Given que un usuario con una suscripción premium activa intenta comprar otra suscripción premium
And que el endpoint "/api/subscriptions/premium/purchase/stripe" se encuentra disponible
When envía una petición POST
And el sistema debe verifica el estado de suscripción actual del usuario
And si ya posee una suscripción activa
Then se recibe un 409 Conflict
And un mensaje incluído en el response con el valor "Suscripción premium ya activada , no se requiere una nueva compra"

Scenario: Cancelación exitosa de una suscripción premium
Given que un usuario con una suscripción premium activa desea cancelarla
And que el endpoint "/api/subscriptions/premium/cancel" se encuentra disponible
When se envía una petición POST con el valor de su identificador de usuario
And el sistema verifica la existencia de una subscripción premium activa para este usuario
Then se procesa la cancelación, lo que implica actualizar el estado de la suscripción a "cancelada" y desactivar el acceso a las funcionalidades premium