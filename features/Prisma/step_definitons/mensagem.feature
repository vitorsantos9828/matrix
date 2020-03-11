#language: pt
@mensagemv1
Funcionalidade: Mensagem
  Eu como usuario do site pretendo enviar uma Mensagem

  Contexto: Estar na tela de contato
    Dado Que eu estou na tela de contato

    @Comentarioinvalido
    Esquema do Cenario: Não enviar mensagem 
      Quando eu digitar meu "<useremail>" e "<usermensagem>" e clicar em login.
      Entao Receberei uma mensagem "<mensagemerro>"

      Exemplos:
        |useremail             |usermensagem|mensagemerro                                   |
        |vitorsantos@hotmail.br|            |The message cannot be blank.                   |
        |                      |Consegui    |Invalid email address.                         |
        |                      |            |Invalid email address.                         |
        |tefa@hotmail.com      |CURINTHIAAA |Please select a subject from the list provided.|
        