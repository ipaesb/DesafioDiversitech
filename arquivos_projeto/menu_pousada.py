def menu(): # função Menu
    print('Seja bem vindo(a) ao sistema de pousada\n')
    op = ''
    
    while op <='3':
        print(f' Para começar escolha uma opção:'
          f'\n 1- Relatório dos quartos \n 2- Cadastrar cliente, \n 3- Cadastro de quarto \n e S para sair ')
        print("\n")
        op = input("digite uma opção: ") # pega a opção q o usuario digitar
        if op == '1':
            # chama a função de verificação
            print("Verificando quartos vazios e cheios")
        elif op == '2':
            # chama a função de cadastro de cliente
            print("...Cadastrando clientes")

        elif op == '3':
            # chama a função de cadastro de quartos
            print("...Cadastrando quartos")
        else:
            print("saindo, obrigado , volte sempre")

    # chamada da função meunu

menu()


