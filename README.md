# UFAM - Introdução à Organização de Computadores[cite: 1]
## Solução da Lista de Exercícios em Assembly MIPS (MARS)[cite: 1]

Este repositório contém as minhas resoluções para a lista de exercícios práticos da disciplina de Introdução à Organização de Computadores, ministrada pelo professor Mauro Teófilo na Universidade Federal do Amazonas (UFAM)[cite: 1].

A lista foi baseada no arquivo oficial **Assembly MIPS - Lista de Exercícios (1).pdf**[cite: 1].

---

### 💻 Objetivos dos códigos
O foco principal é aplicar os conceitos teóricos de arquitetura de computadores na prática[cite: 1]:
* Uso correto dos principais registradores do processador MIPS[cite: 1].
* Entendimento prático de como a ULA (operações matemáticas e lógicas) e a UC (desvios, loops e funções) atuam durante a execução[cite: 1].
* Manipulação de memória, vetores e operações na pilha (stack)[cite: 1].
* Implementação de funções respeitando a convenção de chamadas e algoritmos recursivos[cite: 1].

---

### 📂 Organização das Questões

Os arquivos estão nomeados de acordo com o número de cada questão. A evolução dos exercícios segue a seguinte estrutura[cite: 1]:

* **Questões 01 a 05 (Básico):** Operações aritméticas simples, entrada/saída de dados e uso de instruções da ULA como `mul`, `div`, `mflo` e `mfhi`[cite: 1].
* **Questões 06 a 08 (Condicionais):** Estruturas de decisão para verificar se um número é par/ímpar (usando operação de resto) ou qual valor é o maior[cite: 1].
* **Questões 09 a 13 (Loops):** Laços de repetição aplicados a contagens, somatórios de 1 a N, tabuada, cálculo de fatorial e sequência de Fibonacci[cite: 1].
* **Questões 14 a 17 (Vetores):** Declaração de arrays armazenados na memória, cálculo de soma, busca do maior elemento e contagem de pares[cite: 1].
* **Questões 18 a 20 (Funções e Pilha):** Criação de subrotinas respeitando a convenção do MIPS (uso de `jal`, `jr $ra`, argumentos em `$a0-$a3` e retorno em `$v0`), uso do `$sp` para preservar contexto e cálculo de fatorial recursivo[cite: 1].

---

### 🛠️ Como rodar os códigos

1. Baixe e instale o simulador **MARS** (MIPS Assembler and Runtime Simulator)[cite: 1].
2. Clone este repositório em sua máquina local.
3. Abra o simulador e carregue o arquivo `.asm` desejado[cite: 1].
4. Pressione `F3` para compilar (Assemble) e `F5` para executar (Run).

> **Nota:** Todos os arquivos foram desenvolvidos seguindo as boas práticas exigidas: código indentado, seções `.data` e `.text` separadas, uso adequado de chamadas `syscall` e comentários explicando a lógica[cite: 1].
