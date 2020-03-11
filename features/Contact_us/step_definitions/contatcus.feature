#language:pt

Funcionalidade: contato
 @contato 
 Cenario: Nao enviar mensagem sem comentario
  Dado que esteja na home
  Quando Clicar no campo Contact us
   E Selecionar a opção Webmaster
   E Informar um email valido 
   E clicar em Send
  Entao a mensagem nao sera enviado.

 @contato 
 Cenario: Nao enviar mensagem sem E-mail
  Dado que esteja na home
  Quando Clicar no campo Contact us
   E Selecionar a opção Webmaster
   E Escreva um comentario
   E clicar em Send
   Entao a mensagem nao sera enviado.
  @contato 
 Cenario: Nao enviar sem anexo
  Dado que esteja na home 
  Quando Clicar no campo Contact us
   E Selecionar a opção Webmaster
   E adicionar um E-mail valido
   E Escreva um comentario
   E clicar em Send
   Entao a mensagem sera enviado.




