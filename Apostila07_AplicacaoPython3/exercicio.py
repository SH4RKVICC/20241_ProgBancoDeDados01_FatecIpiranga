# Adicione a opção número 3 ao menu.
# Ela deve permitir que o usuário faça a inserção de
# novos usuários na base gerenciada pelo PostgreSQL.

## Primeiramente, realizar o download do Anaconda Navigator;
## Inicializa-lo como ensina o arquivo de referencia 07_apostila_pbd_plsql_com_postgresql_pgadmin4_login_com_python3.

import psycopg2
print (psycopg2)
class Usuario:
    def __init__(self, login, senha):
        self.login = login
        self.senha = senha

# definição do método, ele recebe um objeto do tipo Usuario;
def existe (usuario):
    # Abre a conexão
    with psycopg.connect(
        host='localhost'
,       port=5432
,       dbname='20221_pessoal_db_login"
,       user='postgres'
,       password='postgres'
    ) as conexao:
        # Obtém um cursor
        with conexao.cursor() as cursor:
            # Executa o comando
            cursor.execute('SELECT * FROM tb_usuario WHERE login=%s AND senha=%s', (f'{usuario.loginuser}', f'{usuario.senha}'))
            # Obtém o resultado
            result = cursor.fetchone()
            # Verifica se o resultado é diferente de None, o que indica que o usúario existe na base
            return result != None
        
# Definiçãp da Função Menu;
def menu():
    # Texto a ser exibido
    texto = '0-Fechar Sistema\n1-Login\n2-Loggof\n3-Novo Usuário\n'
    # Usuário ainda não existe
    usuario = None
    # Capturamos a Opção do usuários
    op = int(input(texto))
    # Enquanto ele não digitar 0 (zero)
    while op != 0:
        # Se digitar 1, capturamos login e senha e verificamos se o usuário existe na base
        if op == 1:
            login = input('Digite seu login: \n')
            senha = input('Digite sua senha: \n')
            usuario = Usuario (login, senha)
            print('Usuário OK!! ' if existe(usuario) else 'Usuário NOK!!!')
        #Se ele digitar 2, configuramos o usuário como "None" novamente
        elif op == 2:
            usuario = None
            print('Logoff realizado com sucesso')
        op = int(input(texto))
        elif op == 3:
            nl = input('Digite um nome de usuário: ')
            nls = input('Digite uma senha: ')
            nu = Usuario(nl,nls)
            with psycopg2.connect(
        host='localhost'
,       port=5432
,       dbname='20221_pessoal_db_login"
,       user='postgres'
,       password='postgres'
    ) as conexao:
            with conexao.cursor() as cursor:
            cursor.execute ('INSERT INTO tb_usuario(loginuser, senha) VALUES($s,%s');
            print('Novo usuário cadastrado!')
    else:
        # Se digitar 0 (zero), dizemos adeus, Observe que esse else está associado ao while
        print('Até mais.')
# Chamamos a função menu
menu()
