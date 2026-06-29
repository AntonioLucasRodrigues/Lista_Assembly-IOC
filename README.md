# UFAM - Introdução à Organização de Computadores
## Solução da Lista de Exercícios em Assembly MIPS (MARS)

[cite_start]Este repositório contém as minhas resoluções para a lista de exercícios práticos da disciplina de Introdução à Organização de Computadores, ministrada pelo professor Mauro Teófilo na Universidade Federal do Amazonas (UFAM)[cite: 2, 3].

A lista foi baseada no arquivo oficial **"Assembly MIPS - Lista de Exercícios (1).pdf"**.

---

### 💻 Objetivos dos códigos
O foco principal é aplicar os conceitos teóricos de arquitetura de computadores na prática:
* [cite_start]Uso correto dos registradores do MIPS[cite: 10].
* [cite_start]Entendimento prático de como a ULA (operações matemáticas e lógicas) e a UC (desvios, loops e funções) agem no processador[cite: 27, 28].
* [cite_start]Manipulação de memória, vetores e manipulação da pilha (*stack*)[cite: 12, 14].
* [cite_start]Convenção de chamadas de funções e algoritmos recursivos[cite: 16, 24].

---

### 📂 Organização das Questões

Os arquivos estão nomeados de acordo com o número de cada questão da lista. A evolução dos exercícios segue a seguinte estrutura:

* [cite_start]**Questões 01 a 05 (Básico):** Operações aritméticas simples, entrada/saída de dados com `syscall` e uso de comandos como `mul`, `div`, `mflo` e `mfhi`[cite: 21, 41, 46].
* [cite_start]**Questões 06 a 08 (Condicionais):** Estruturas de decisão para verificar se um número é par/ímpar ou qual valor é o maior[cite: 47, 52].
* [cite_start]**Questões 09 a 13 (Loops):** Laços de repetição aplicados a contagens, somatórios de 1 a N, tabuada, fatorial e sequência de Fibonacci[cite: 59, 63, 65, 69, 72].
* [cite_start]**Questões 14 a 17 (Vetores):** Manipulação de *arrays* armazenados na memória, cálculo de soma, busca de maior elemento e contagem[cite: 75, 80, 82, 84].
* [cite_start]**Questões 18 a 20 (Funções e Pilha):** Criação de subrotinas respeitando a convenção do MIPS (uso de `jal`, `jr $ra`, argumentos em `$a0-$a3` e retorno em `$v0`), uso do `$sp` para preservar contexto e fatorial recursivo[cite: 24, 90, 91, 94].

---

### 🛠️ Como rodar os códigos

1. [cite_start]Baixe e instale o simulador **MARS** (MIPS Assembler and Runtime Simulator)[cite: 5].
2. Clone este repositório ou baixe o arquivo `.asm` que deseja testar.
3. Abra o arquivo no MARS.
4. Aperte `F3` para compilar (*Assemble*) e `F5` para rodar (*Run*).

> [cite_start]**Nota:** Todos os arquivos foram desenvolvidos seguindo as boas práticas solicitadas na lista: código devidamente indentado, seções `.data` e `.text` separadas e comentários explicando a lógica de funcionamento[cite: 19, 20].
