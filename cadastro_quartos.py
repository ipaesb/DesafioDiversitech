# Ligação com o BD e Cadastra Clientes


import pymysql.cursors
import getpass


#Informações para conectar ao banco de dados
print(' ' * 31)
print("Conectando com o banco dados")
print(' ' * 31)
print('Por favor, insira as informações abaixo: ')

servidor= input ('Servidor: ')
usuario = input('Usuário: ')
senha = getpass.getpass('Senha: ')
banco = input('Banco: ')

#Conectando ao banco de dados

conexao = pymysql.connect ( 
        host = servidor , 
        user = usuario , 
        password = senha , 
        database = banco , 
        cursorclass=pymysql.cursors.DictCursor)
   
print(conexao)
cursor = conexao.cursor


# Cadastro de Quartos

def cadastro_quarto(nome_reserva, num_quarto, tipo_reserva, data_entrada, data_saida, status_reserva, valor_total):
    nome_reserva =str(input('Qual reserva você escolhe?')),
    num_quarto = input('Digite o numero do quarto'),
    tipo_reserva =str(input('Adicione o tipo de Reserva?'))
    if('Diaria'):
        print('Pernoite')
    elif('Diaria'):
        print('Diaria')
    elif('Semanal'):
        print('Semanal')
    else:
        print('Qual a data de entrada?')
    data_entrada = input('Digite a data de Entrada'),
    data_saida = input('Digite a data de Saída'),
    status_reserva = input('Informe o Status da Reserva'),
    valor_total = input('Informe o Valor Total')

    print("cadastro_quarto")


    cadastro_quarto = f'''

    INSERT INTO 'pousa','reservas'( 
    'nome_reserva',
    'num_quarto',
    'tipo_reserva',
    'data_entrada',
    'data_saida',
    'status_reserva',
    'valor_total'
    ) VALUES (
        "{nome_reserva}",
        "{num_quarto}",
        "{tipo_reserva}",
        "{data_entrada}",
        "{data_saida}",
        "{status_reserva}",
        "{valor_total}"
    )
    '''

    #Executando o comando de cadastro no BD
    cursor.execute(cadastro_quarto)

    #Salvando as alterações
    conexao.commit()

    #Fechando as conexões
    cursor.close()
    conexao.close()

    #Informando ao usuário
    print(f'Quarto {nome} cadastrado com sucesso!') 

    # Consultar Quarto
    def consulta_quarto():
        nome_reserva =str(input('Qual reserva você deseja consultar?'))
        if('Simples'):
            print('Reserva Simples')
        elif('Master'):
            print('Reserva Master')
        elif('Presidencial'):
            print('Reserva Presidencial')
        else : 
            print('Digite o numero do quarto?')
            consulta_quarto = f'''
            SELECT *
            FROM cadastro_quarto
            WHERE nome_reserva = "{nome_reserva}"
            ;
            '''
            print(consulta_quarto)
            cursor.execute(consulta_quarto)
            resultado = cursor.fetchall()

    # Deleta Quarto
    def deleta_quarto(nome_reserva):
        respostad = input("Escolha a Reserva que deseja excluir: \n S - Simples\n M - Master\n P - Presidencial\n")
        if respostad == "S":            
            deleta_quarto = f'''
            DELETE FROM quarto
            WHERE nome_reserva = "{nome_reserva}"
            ;
            '''
            print(deleta_quarto)
            cursor.execute(deleta_quarto)

        elif respostad == "M":
            deleta_quarto = f'''
            DELETE FROM quarto
            WHERE nome_reserva = "{nome_reserva}"
            ;
            '''

        elif respostad == "P":
            deleta_quarto = f'''
            DELETE FROM quarto
            WHERE nome_reserva = "{nome_reserva}"
            ;
            '''

        else:
            print(nome_reserva)
            cursor.execute(nome_reserva)
            conexao.commit()

print(f'Quarto {nomed} excluído com sucesso!')



