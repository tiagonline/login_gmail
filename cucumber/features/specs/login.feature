#language:pt

Funcionalidade: Login
    Sendo um usuário do gmail
    Posso logar no meu email
    Para vizualizar meus emails

Cenário: Login com sucesso
  Dado que eu tenho um usuario
      | Email                 |
      | email@gmail.com |
  E tenho que clicar no botão next para digitar a senha
  |Senha        |
  |coloca a senha|
  Quando faço login
  Então sou redirecionado para o meu email
