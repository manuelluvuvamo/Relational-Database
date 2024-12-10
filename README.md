# Certificação de Bases de Dados Relacionais

## PostgreSQL: Base de Dados sobre Mário

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

 Aqui está uma versão organizada e traduzida do conteúdo fornecido sobre *Bash Scripting* com cinco programas:

---

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
