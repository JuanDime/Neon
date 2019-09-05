#language: pt
# encoding: UFT-8


@Cadastro

Funcionalidade: Preencher dados do cadastro

Cenario: Cadastrar novo cliente

    Dado que eu acesse a tela de novo usuario
    E preencha um novo cadastro de usuario 
    Entao valido se o cadastro foi realizado com sucesso

@deletar
    Cenario: Deletar Cliente

    Dado que eu acesse a tela de usuario
    Entao gostaria de deletar um cliente
