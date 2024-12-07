# Bases de Dados Relacionais

## PostgreSQL: Aprenda Bancos de Dados Relacionais com Mario

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

  ## Aprenda Bash Criando um Boilerplate

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
