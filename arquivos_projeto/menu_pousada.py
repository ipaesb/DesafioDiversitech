def menu(): # função Menu
    print('seja bem vindo(a) ao sistema de pousada')
    op = ''
    print(f' para começar escolha uma opção: ')
    while op <='3':
        print(f' para começar escolha uma opção:'
          f'\n 1- verificar quartos vazios e cheios \n 2- cadastrar cliente, \n 3- cadastro de quarto \n e outra para sair ')
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

