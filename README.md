# Certificação de Bases de Dados Relacionais

  ## PostgreSQL: Base de Dados sobre Mário
  A primeira coisa a se fazer para trabalhar com o PostgreSQL pelo terminal é executar o `psql` utilizando o comando `psql --username=<user> --dbname=<databasename>`
  ### **Comandos Iniciais**
  - **Listar bancos de dados existentes**:  
    Use `\l` para listar todos os bancos de dados disponíveis.

  - **Criar um banco de dados**:  
    ```sql
    CREATE DATABASE nome_do_banco;
    ```

  - **Conectar-se a um banco de dados**:  
    Use `\c nome_do_banco` para conectar-se ao banco de dados.

  - **Listar tabelas de um banco de dados**:  
    Use `\d` para listar as tabelas existentes no banco.

  - **Ver detalhes de uma tabela**:  
    Adicione o nome da tabela ao comando `\d`, assim: `\d nome_da_tabela`.

  ---

  ### **Trabalhando com Tabelas**
  - **Criar uma tabela**:  
    ```sql
    CREATE TABLE nome_da_tabela();
    ```

  - **Adicionar uma coluna a uma tabela**:  
    ```sql
    ALTER TABLE nome_da_tabela ADD COLUMN nome_da_coluna TIPO_DE_DADO;
    ```

  - **Remover uma coluna de uma tabela**:  
    ```sql
    ALTER TABLE nome_da_tabela DROP COLUMN nome_da_coluna;
    ```

  - **Renomear uma coluna**:  
    ```sql
    ALTER TABLE nome_da_tabela RENAME COLUMN nome_atual TO novo_nome;
    ```

  ---

  ### **Trabalhando com Dados**
  - **Inserir uma linha na tabela**:  
    ```sql
    INSERT INTO nome_da_tabela(coluna_1, coluna_2) VALUES(valor1, valor2);
    ```

  - **Consultar dados de uma tabela**:  
    ```sql
    SELECT colunas FROM nome_da_tabela;
    ```

  - **Excluir uma linha da tabela**:  
    ```sql
    DELETE FROM nome_da_tabela WHERE condição;
    ```

  - **Atualizar valores de uma coluna**:  
    ```sql
    UPDATE nome_da_tabela SET nome_da_coluna=novo_valor WHERE condição;
    ```

  - **Ordenar resultados de uma consulta**:  
    ```sql
    SELECT colunas FROM nome_da_tabela ORDER BY nome_da_coluna;
    ```

  ---

  ### **Gerenciando Constrangimentos**
  - **Definir uma chave primária em uma tabela**:  
    ```sql
    ALTER TABLE nome_da_tabela ADD PRIMARY KEY(nome_da_coluna);
    ```

  - **Remover uma restrição**:  
    ```sql
    ALTER TABLE nome_da_tabela DROP CONSTRAINT nome_da_restricao;
    ```

  - **Definir uma chave estrangeira ao criar uma coluna**:  
    ```sql
    ALTER TABLE nome_da_tabela ADD COLUMN nome_da_coluna TIPO_DE_DADO REFERENCES tabela_referenciada(coluna_referenciada);
    ```

  - **Definir uma coluna existente como chave estrangeira**:  
    ```sql
    ALTER TABLE nome_da_tabela ADD FOREIGN KEY(nome_da_coluna) REFERENCES tabela_referenciada(coluna_referenciada);
    ```

  - **Configurar uma coluna como `NOT NULL`**:  
    ```sql
    ALTER TABLE nome_da_tabela ALTER COLUMN nome_da_coluna SET NOT NULL;
    ```

  ---

  ### **Outros Comandos Úteis**
  - **Renomear um banco de dados**:  
    ```sql
    ALTER DATABASE nome_atual RENAME TO novo_nome;
    ```

  - **Usar o tipo `SERIAL` para números inteiros auto-incrementais**:  
    Ao criar uma coluna com o tipo `SERIAL`, ela será automaticamente `INT`, `NOT NULL` e incrementada a cada nova linha adicionada.

  - **Tipo de dado `NUMERIC` para números decimais**:  
    Use `NUMERIC(x, y)`, onde `x` é o número total de dígitos e `y` é o número de dígitos à direita do ponto decimal. Exemplo: `NUMERIC(4, 1)` permite até 4 dígitos, sendo 1 após o ponto.

  ## Boilerplate Bash

  ### **Comandos de Manipulação de Arquivos**
  - **Visualizar o conteúdo de um arquivo**:  
    ```bash
    more <nome_do_arquivo>
    ```

  - **Criar um novo arquivo vazio**:  
    ```bash
    touch <nome_do_arquivo>
    ```

  - **Copiar um arquivo para outro local**:  
    ```bash
    cp <arquivo_origem> <destino>
    ```

  - **Remover um arquivo**:  
    ```bash
    rm <nome_do_arquivo>
    ```

  - **Renomear ou mover um arquivo**:  
    ```bash
    mv <arquivo_atual> <novo_nome>
    ```

  ---

  ### **Listar Conteúdo**
  - **Listar todo o conteúdo de uma pasta**:  
    Use a flag `--all` ou sua versão abreviada `-a` para incluir arquivos ocultos:  
    ```bash
    ls --all
    ```  
    ou  
    ```bash
    ls -a
    ```

  ---

  ### **Trabalhando com Diretórios**
  - **Remover uma pasta**:  
    ```bash
    rmdir <nome_da_pasta>
    ```

  ---

  ### **Buscar Arquivos e Pastas**
  - **Exibir a árvore de arquivos e pastas de um diretório específico**:  
    ```bash
    find <nome_da_pasta>
    ```

  - **Encontrar arquivos ou pastas pelo nome**:  
    ```bash
    find -name <nome_do_arquivo>
    ```

  ## Bash Scripting com cinco programas

  ### 1. **Comando para Executar o Script**
  - **Comando:** Execute o script com o comando:
    ```bash
    sh <nome_do_arquivo.sh>
    ```

  ### 2. **Encontrar o Local do Interpretador Bash**
  - **Comando:** Para descobrir onde o interpretador Bash está localizado, use:
    ```bash
    which bash
    ```

  ### 3. **Conceder Permissão de Execução**
  - **Comando:** Para conceder permissões de execução para todos os usuários, digite:
    ```bash
    chmod +x <nome_do_arquivo.sh>
    ```

  ### 4. **Utilizando o Manual de Comandos**
  - **Comando:** Para obter mais informações sobre um comando, use o `man` (manual). Por exemplo:
    ```bash
    man <comando>
    ```

  ### 5. **Acessando Argumentos no Script**
  - **Comando:** Os programas podem aceitar argumentos. Para exibir todos os argumentos passados ao script, use:
    ```bash
    echo $*
    ```

  ### 6. **Estrutura Condicional em Bash**
  - **Exemplo:**
    ```bash
    if [[ CONDICAO ]]
    then
      COMANDOS
    fi
    ```

    - **Verificação de Inteiro:** Para verificar se o argumento passado é um número menor que 5, altere a condição `if` da seguinte maneira:
      ```bash
      if [[ $1 -lt 5 ]]
      then
        # comandos
      fi
      ```

  ### 7. **Verificando o Status de Saída de um Comando**
  - **Comando:** O status de saída de um comando pode ser verificado com `$?`. Por exemplo:
    ```bash
    [[ 4 -ge 5 ]]; echo $?
    ```
    Isso exibirá o status de saída do comando, que será `1` (falso) porque a condição `4 -ge 5` não é verdadeira.

  ### 8. **Operadores de Arquivo em Bash**
  - **Comando:** Para verificar se um arquivo existe, use:
    ```bash
    [[ -a countdown.sh ]]; echo $?
    ```
    Isso retornará `0` (verdadeiro) se o arquivo `countdown.sh` existir, ou `1` (falso) se não existir.

  ### 9. **Laço de Repetição `for`**
  - **Exemplo de laço `for`:**
    ```bash
    for (( i = 10; i > 0; i-- ))
    do
      echo $i
    done
    ```
    Esse laço imprime os números de 10 a 1, decrementando o valor de `i` a cada iteração.

  ### 10. **Gerando Números Aleatórios**
  - **Comando:** A variável `$RANDOM` gera um número aleatório entre 0 e 32767. Para gerar um número aleatório dentro de um intervalo (por exemplo, de 0 a 74), use o operador de módulo:
    ```bash
    NUMBER=$(( RANDOM % 75 ))
    ```

  ### 11. **Expressões Regulares em Bash**
  - **Exemplo 1:** Verificando se a string "hello world" começa com "h":
    ```bash
    [[ "hello world" =~ ^h ]]
    ```
    Isso retorna verdadeiro se a string começar com "h".

  - **Exemplo 2:** Verificando se a string começa com "h", tem pelo menos um caractere após o "h" e termina com "d":
    ```bash
    [[ "hello world" =~ ^h.+d$ ]]
    ```

  - **Exemplo 3:** Verificando se a string termina com "?":
    ```bash
    [[ "$variavel" =~ \?$ ]]
    ```

  ---

  Este guia organizado oferece uma explicação clara de como realizar várias operações no Bash, como executar scripts, usar condições, laços de repetição, manipulação de arquivos, e expressões regulares.

  ## Criando um banco de dados de alunos: parte 1
  
  ### 1. **Configurando a variável PSQL**

  O primeiro passo é criar uma variável para o comando `psql`. Isso vai permitir que você execute consultas no banco de dados diretamente no seu script. A variável `PSQL` será configurada com as opções necessárias.

  ```bash
  PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
  ```

  - **`--username=freecodecamp`**: Define o nome do usuário para conexão com o banco de dados.
  - **`--dbname=students`**: Especifica o banco de dados que você deseja usar.
  - **`--no-align`**: Remove o alinhamento de colunas na saída, útil para scripts.
  - **`--tuples-only`**: Faz com que o comando retorne apenas os valores das tuplas (sem cabeçalhos ou informações extras).
  - **`-c`**: Permite que você execute um comando SQL diretamente, sem precisar abrir uma sessão interativa.

  ### 2. **Executando consultas com a variável PSQL**

  Com a variável `PSQL` configurada, você pode executar consultas diretamente no banco de dados dentro do seu script. Aqui está um exemplo de como você faria isso para selecionar todos os alunos:

  ```bash
  RESULT=$($PSQL "SELECT * FROM students;")
  ```

  A consulta SQL dentro do comando `$PSQL` será executada e o resultado será armazenado na variável `RESULT`. Isso é útil para pegar dados ou fazer verificações dentro do script.

  ### 3. **Usando `pg_dump` para fazer o backup do banco de dados**

  Depois de completar as inserções ou qualquer outra modificação no banco de dados, você pode usar o `pg_dump` para criar um backup completo da estrutura e dos dados do banco.

  O comando `pg_dump` exporta o banco de dados para um arquivo SQL, permitindo que você recrie o banco de dados a partir desse arquivo.

  Aqui está o comando que você deve executar no terminal para fazer o dump do banco de dados:

  ```bash
  pg_dump --clean --create --inserts --username=freecodecamp --dbname=students > backup_students.sql
  ```

  Explicando cada parte desse comando:

  - **`--clean`**: Inclui comandos para limpar (deletar) objetos do banco de dados antes de recriar. Isso ajuda a evitar conflitos ao restaurar o banco.
  - **`--create`**: Gera o comando para criar o banco de dados no arquivo de backup.
  - **`--inserts`**: Usa comandos `INSERT` no arquivo de backup, em vez de usar comandos `COPY`. Isso torna o arquivo de backup mais legível e reutilizável.
  - **`--username=freecodecamp`**: Especifica o nome de usuário do banco de dados.
  - **`--dbname=students`**: O nome do banco de dados que você está fazendo o backup.
  - **`> backup_students.sql`**: Redireciona a saída do comando para um arquivo chamado `backup_students.sql`.


 ## Criando um banco de dados de alunos: parte 2  

  ### 1. **Importando a base de dados**
  - Use `psql -U postgres < students.sql` para reconstruir o banco de dados.  

  ### 2. **Visualizando e filtrando dados**
  - Para exibir apenas a coluna `first_name` da tabela `students`, substitua o `*` pelo nome da coluna no comando SQL.  
  - Use a cláusula `WHERE` para filtrar resultados, adicionando uma condição como `<coluna> <operador> <valor>`. Por exemplo:
    - GPA menor que 2.5: `WHERE gpa < 2.5`.  
    - GPA maior ou igual a 3.8: `WHERE gpa >= 3.8`.  
    - GPA diferente de 4.0: `WHERE gpa != 4.0`.  
  - Filtre registros começando por letras específicas:
    - Exibir maiores ou iguais a "G": `WHERE major >= 'G'`.  
  - Combine condições com `AND`, `OR` e parênteses para agrupar:
    - Exemplo: `WHERE last_name < 'M' AND (gpa <= 3.9 OR gpa < 2.3)`.  

  ### 3. **Busca por padrões em texto**
  - Use `LIKE` para encontrar padrões em colunas de texto:  
    - `_` substitui um caractere: `_lgorithms` encontra "Algorithms" com uma letra no início.  
    - `%` substitui qualquer sequência: `lgorithms%` encontra textos terminando com "lgorithms".  
  - Use `ILIKE` para ignorar maiúsculas/minúsculas nos padrões.  

  ### 4. **Ordenação e limites**
  - Ordene resultados com `ORDER BY <coluna>`:
    - Ordem ascendente por padrão. Adicione `DESC` para descendente.  
  - Ordene por múltiplas colunas, separadas por vírgulas:  
    - `ORDER BY gpa DESC, first_name`.  
  - Limite o número de resultados com `LIMIT <número>` no final do comando.  

  ### 5. **Funções agregadas**
  - Funções úteis para colunas numéricas:  
    - `MIN`: menor valor.  
    - `MAX`: maior valor.  
    - `SUM`: soma dos valores.  
    - `AVG`: média dos valores.  
    - `COUNT`: número de entradas.  
  - Arredondamentos:
    - Para cima: `CEIL`.  
    - Para baixo: `FLOOR`.  
    - Para um número específico de casas decimais: `ROUND(<número>, <decimais>)`.  

  ### 6. **Valores únicos e agrupamento**
  - Exiba valores únicos com `DISTINCT(<coluna>)`.  
  - Agrupe resultados com `GROUP BY` e combine com funções agregadas:  
    - Exemplo: `SELECT COUNT(*) FROM students GROUP BY major_id`.  
  - Use `HAVING` para filtrar grupos com base em funções agregadas:  
    - Exemplo: `HAVING COUNT(*) > 0`.  

  ### 7. **Renomeando colunas e tabelas**
  - Use `AS` para renomear colunas ou tabelas:  
    - Exemplo: `SELECT major AS course FROM majors`.  

  ### 8. **Junções entre tabelas**
  - Combine dados de tabelas diferentes com `JOIN`:
    - `FULL JOIN`: inclui todos os registros de ambas as tabelas.  
    - `LEFT JOIN`: inclui todos os registros da tabela à esquerda e os correspondentes à direita.  
    - `RIGHT JOIN`: inclui todos os registros da tabela à direita e os correspondentes à esquerda.  
    - `INNER JOIN`: inclui apenas registros com correspondências em ambas as tabelas.  
  - Use `USING` como atalho quando as colunas de chave estrangeira têm o mesmo nome em ambas as tabelas.  
  - Renomeie tabelas durante junções usando `AS` para simplificar as referências:  
    - Exemplo: `SELECT * FROM majors AS m LEFT JOIN students AS s ON m.major_id = s.major_id`.

  ## Banco de dados da Copa do Mundo

  Este foi um dos desafios onde foi necessário aplicar todos os conhecimentos previamente adiquiridos, os arquivos estão em [Banco de dados da Copa do Mundo](https://github.com/manuelluvuvamo/relational-database/tree/main/Banco%20de%20dados%20da%20Copa%20do%20Mundo)