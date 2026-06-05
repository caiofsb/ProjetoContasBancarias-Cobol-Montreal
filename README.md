# Projeto COBOL - Relatório de Contas Bancárias

Projeto desenvolvido em COBOL no ambiente TK5/TN3270.

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
## Em Funcionamento no TK5
<img width="1200" height="675" alt="2026-06-05 00-17-18 (2)" src="https://github.com/user-attachments/assets/84fd9911-3ea7-47f5-9749-251f814e89ea" />


## Relatorio Gerado

### Colunas até 72
<img width="960" height="936" alt="Captura de tela 2026-06-05 002636" src="https://github.com/user-attachments/assets/988e6766-77d6-4bb4-8f2d-950d88d626bf" />
### Colunas após a 72
<img width="960" height="940" alt="Captura de tela 2026-06-05 002644" src="https://github.com/user-attachments/assets/ea5beb88-84e7-4667-adf6-e2836dda51ad" />
