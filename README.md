# DER 

O **Diagrama Entidade-Relacionamento** (DER) é uma representação visual que mapeia as principais entidades de um sistema e as relações entre elas. Ele é amplamente utilizado no processo de modelagem de banco de dados para descrever a estrutura de dados de forma clara e compreensível. O DER facilita a identificação de entidades, atributos e relacionamentos, sendo essencial para o planejamento de um banco de dados eficiente e bem estruturado.

---

Para a realização da atividade, foi seguido o método ensinado em sala pelo orientador, conforme as etapas abaixo:

1. Desenho do Diagrama Entidade-Relacionamento (DER);
2. Definição e adição das cardinalidades entre as entidades de cada tabela;
3. Criação das tabelas, incluindo a criação de tabelas de relacionamento para os casos em que as relações são do tipo N
(muitos para muitos).

## Tabelas e Colunas

Colunas presentes em cada uma das tabelas:

### 1. **OCRD - Dados Gerais de Parceiros de Negócio (Parceiro)**
   - **Código do parceiro de negócio:** Código alfanumérico que identifica o parceiro no sistema.
   - **Razão social:** Nome registrado do parceiro de negócio.
   - **Tipo de Parceiro de Negócio:** Identifica se o parceiro é cliente ou fornecedor.
   - **Grupo do Parceiro:** Categoria do parceiro dentro do sistema.
   - **Contatos:** Inclui telefone, e-mail, e outros dados de contato.

### 2. **CRD1 - Informações de Endereço (Endereço)**
   - **Tipo de Endereço:** Indica se é endereço de entrega, cobrança, etc.
   - **Nome do Endereço:** Nome do local ou estabelecimento.
   - **Logradouro:** Nome da rua ou avenida.
   - **Número, Bairro, Cidade, Estado e CEP:** Detalhes completos do endereço.
   - **Complemento:** Informações adicionais sobre o endereço.

### 3. **OCRB - Dados Bancários (Contas)**
   - **Código do banco:** Identificação do banco.
   - **Agência:** Número da agência bancária.
   - **Número da conta:** Número da conta bancária.
   - **Nome da conta:** Titular da conta bancária.
   - **Conta contábil:** Conta usada para registrar transações financeiras.

### 4. **CRD7 - Identificação Fiscal (Taxas)**
   - **CNPJ/CPF:** Cadastro Nacional de Pessoa Jurídica ou Física.
   - **Inscrição Estadual/Municipal:** Registro oficial para fins fiscais.
   - **Código CNAE:** Classificação Nacional de Atividades Econômicas.
   - **I.E.S.T.:** Inscrição Estadual Substituto Tributário.
   - **ID estrangeiro:** Identificação para parceiros estrangeiros.
   - **Suframa:** Registro para operações na Zona Franca de Manaus.

### 5. **Itens (Item)**
   - **ItemCode:** Código único que identifica o item.
   - **ItemName:** Nome ou descrição do item.
   - **ItemsGroupCode:** Código que agrupa itens similares.
   - **PurchaseItem:** Indica se o item pode ser comprado.
   - **SalesItem:** Indica se o item pode ser vendido.
   - **InventoryItem:** Indica se o item é controlado em estoque.


## Tecnologias Utilizadas:
- Markdown para documentação.
- GitHub para versionamento e compartilhamento.
- LucidChart para criação do DER.
- SQL Designer para design das tabelas.