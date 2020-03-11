#language:pt

Funcionalidade: Compra

 @compra
 Cenario: Realizar um compra
  Dado Que esteja na home do site
  Quando rolar a pagina clicar no vestido e para o mouse sobre Faded short Sleeve T-shirts
   E clicar em Add to cart
   E clicar em proceed to checkout
   E colocar um email valido e clicar em create an account
   E preencher informaçoes pessoais e clicar em register
   E clicar no checkbox  terms of service  e clicar em proceed to checkout
   E escolher a forma de pagamento e confirmar a compra
   Entao  a compra sera realizada