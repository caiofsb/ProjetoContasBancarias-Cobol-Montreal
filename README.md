# Projeto COBOL - Relatório de Contas Bancárias

Projeto desenvolvido em COBOL no ambiente TK5/Mainframe.

O sistema lê arquivos de contas bancárias, ordena os registros e gera um relatório com validação, agrupamento por agência e resumo geral.

##  Logica de Funcionamento

O programa PROJETO4 lê um arquivo de contas bancárias já ordenado pelo JCL. Cada registro tem 54 posições e segue o layout da copybook REGCONTA. O programa valida cada conta, identifica se é corrente ou poupança, grava todas as contas no relatório e calcula totais. As contas inválidas aparecem no relatório, mas não entram no saldo geral nem no saldo por agência. Quando a agência muda, o programa grava o total daquela agência. No final, grava o resumo geral e fecha os arquivos.

## Regras do programa

Cada conta possui:

- Número da conta
- Nome do cliente
- Agência
- Tipo da conta
- Saldo

Tipos válidos:

- `C` = Conta Corrente
- `P` = Conta Poupança

Contas com tipo inválido são marcadas como inválidas.

## Arquivos do projeto

```text
PROJETO4.cbl        Programa principal COBOL
REGCONTA.cpy        Layout do arquivo de entrada
WRKP4.cpy           Variáveis de trabalho
RELP4.cpy           Layout do relatório
RUNP4.jcl           JCL de execução
COBP4.jcl           JCL de compilação
CONTAS.TXT          Arquivo de entrada principal
CONTAS.NOVAS.TXT    Arquivo de entrada adicional
```
### Em Funcionamento no TK5
