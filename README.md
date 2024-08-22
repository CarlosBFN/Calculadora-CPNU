# Calculadora de notas para o CPNU 2024 #

Calculadora para verificar as notas do candidato do Concurso Público Nacional Unificado (CPNU) de 2024.
O projeto se propõe a ser uma forma simples de calcular todas as notas possíveis que o candidato pode ter adquirido ao fazer a prova, levando em conta todos os pesos e cálculos indicados pelo edital para cada uma das possíveis vagas.
<br>

___

## Plataformas e ferramentas usadas

- Google Sheets
- VSCode v1.90.2
- SQLite v0.14.1 (Extension)
- SQLite Online
<br>

___

## Arquivos

1. README.md      - Arquivo de texto que documenta o projeto
<br>

2. [Calculadora versão Google Sheets](calculadora_cnu_[versao_excel].xlsx) - Versão original do projeto feita inteiramente no Google Sheets e baixada em modo de compatibilidade para o Excel (.xlsx) (Pode ainda apresentar problemas no Excel.
3. [Calculadora versão SQL](calculadora_cpnu_[versao_sql].sql) - Versão do projeto feita inteiramente em SQL 
<br>

2. [Banco](base_cpnu.db) - BD do projeto
3. [Base 1](base_1-tabela_contagem_pontos.csv) - Arquivo para preenchimento da tabela da base de contagem de pontos
4. [Base 2](base_2-cargo_x_titulacao.csv) - Arquivo para preenchimento da tabela da base de cargos
5. [Base 3](base_3-pesos_eixos.csv) - Arquivo para preenchimento da tabela da base de pesos
6. [Query para preenchimento do BD](preenche_base.sql) - Query para preenchimento das bases (alternativa aos .csv)
7. [Query para enserir as notas e inscrições dos candidatos](insere_dados_candidato.sql) - Query para criação e preenchimento das tabelas com os dados dos candidatos
<br>

___

## Modos de utilização

### Versão Google Sheets

Nessa versão a ferramenta pode ainda apresentar problemas de compatibilidade com o Excel.
Para utilizá-la selecione o código da vaga na aba Calculadora CNU da planilha e depois preencha o número de acertos para cada prova (sendo a segunda com o preenchimento separado por seus 5 eixos).
A ferramenta irá ponderar todas as variáveis necessárias para calcular a nota .

### Versão SQL

Essa versão usa a mesma lógica e bases de dados para calcular as notas do candidato.
Para seu uso é preciso que os seguintes dados dos candidatos sejam inseridos:

- candidato - único dado em comum entre as duas tabelas a serem preenchidas, recebe o nome do candidato
- prova - recebe a qual prova o a nota em questão pertence (p1, p2.1, p2.2, p2.3, p2.4, p2.5, p3 ou p4, sendo essas duas últimas a nota da questão dissertativa e a nota obtida dos títulos respectivamente)
- nota - recebe a nota em questão
- cargo - recebe o código do(s) cargo(s) a que o candidato se inscreveu (apenas um por linha)
 
Esses dados devem ser inseridos seguindo os _schemas_:

- Para a tabela 'notas' os dados devem ser inseridos no seguinte _schema_: ('candidato','prova','nota')
- Para a tabela 'inscricoes' os dados devem ser inseridos no seguinte _schema_: ('candidato','cargo')

<br>

___

## Observações

Atualmente o projeto conta com a possibilidade de calcular apenas as notas de candidatos que fizeram provas dos blocos temáticos 2, 4 e 7.