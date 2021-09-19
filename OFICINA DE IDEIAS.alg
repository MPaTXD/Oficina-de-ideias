Algoritmo "OFICINA DE IDEIAS"
arquivo "Ambulancia.txt"



tipo
   ambu = registro
      numero:inteiro
      status:logico
      horario:caracter
      comentarios:caracter
   fimregistro


var
   regisambu:vetor[1..100] de ambu
   opcao:inteiro
   i,j:inteiro


procedimento cadastro
inicio
   limpatela
   escreval("==================================================================")
   escreval("*                 DIGITE 0 PARA SAIR DA OPÇÃO                    *")
   escreval("==================================================================")
   repita
      i<-i + 1
      escreval("------------------------------------------------------------------")
      escreval("* Digite o número da",i," Ambulância com no minímo 3 digitos.       *")
      escreval("------------------------------------------------------------------")
      leia(regisambu[i].numero)
   ate(regisambu[i].numero=0)
   limpatela
   escreval("Fim cadastro.")
   j <- i - 1
fimprocedimento

procedimento escolher
var
   h,k:inteiro
inicio
   limpatela
   repita
      escreval("==================================================================")
      escreval("*                 DIGITE 00 PARA SAIR DA OPÇÃO                   *")
      escreval("==================================================================")
      escreval("------------------------------------------------------------------")
      escreval("* As Ambulâncias que devem ser chamadas são:                      ")
      escreval("                                                                  ")
      para h de 1 ate j faca
         se (regisambu[h].status = falso) entao
            escreval ("* A ambulância",regisambu[h].numero," está disponível.")
         senao
            escreval ("* A ambulância",regisambu[h].numero," está indisponível. Foi solicitada as ",regisambu[h].horario)
         fimse
      fimpara
      escreval("------------------------------------------------------------------")
      escreval("Escolha uma Ambulância para sua Emergência:")
      leia (k)
      limpatela
      para h de 1 ate j faca
         se (k = regisambu[h].numero) entao
            regisambu[h].status <- verdadeiro
            escreval("------------------------------------------------------------------")
            escreval("Digite o horário que você solicitou a ambulância:",regisambu[h].numero)
            leia (regisambu[h].horario)
            escreval("------------------------------------------------------------------")
            escreval("A ambulância",regisambu[h].numero," foi solicitada no horário de: ",regisambu[h].horario)
            escreval("------------------------------------------------------------------")
            escreval
         fimse
      fimpara
   ate (k = 00)
fimprocedimento


procedimento indisponiveis
var
   n,v:inteiro
inicio
   limpatela
   repita
      escreval("==================================================================")
      escreval("*                 DIGITE 00 PARA SAIR DA OPÇÃO                   *")
      escreval("==================================================================")
      escreval("------------------------------------------------------------------")
      para n de 1 ate j faca
         se (regisambu[n].status = verdadeiro) entao
            escreval("A Ambulância",regisambu[n].numero," está indisponivel.")
         fimse
      fimpara
      escreval("------------------------------------------------------------------")
      leia (v)
   ate (v = 00)
fimprocedimento


procedimento disponiveis
var
   c,b:inteiro
inicio
   limpatela
   repita
      escreval("==================================================================")
      escreval("*                 DIGITE 00 PARA SAIR DA OPÇÃO                   *")
      escreval("==================================================================")
      escreval("------------------------------------------------------------------")
      escreval("A ambulância já voltou da emergência? Se sim Digite o número dela:")
      leia (b)
      limpatela
      para c de 1 ate j faca
         se (b = regisambu[c].numero) entao
            regisambu[c].status <- falso
            escreval("------------------------------------------------------------------")
            escreval("A ambulância",b," foi colocada como disponivel novamente!")
            escreval("------------------------------------------------------------------")
            escreval
            escreval
         fimse
      fimpara
   ate (b=00)
fimprocedimento


procedimento nota
var
   r:inteiro
inicio
   limpatela
   repita
      escreval("==================================================================")
      escreval("*                 DIGITE 12 PARA SAIR DA OPÇÃO                   *")
      escreval("==================================================================")
      escreval("------------------------------------------------------------------")
      escreval("Digite uma nota de 0 a 10 para o desempenho do programa.")
      leia (r)
      se (r = 10) entao
         limpatela
         escreval("-------------------------------------------------------------------")
         escreval("PARECE QUE O PROGRAMA ESTÁ FUNCIONANDO COM PERFEIÇÃO =)")
         escreval("OBRIGADO PELO SEU FEEDBACK !")
         escreval("-------------------------------------------------------------------")
         escreval
      senao
         se (r < 10) entao
            limpatela
            escreval("------------------------------------------------------------------")
            escreval("OBRIGADO PELO SEU FEEDBACK !")
            escreval("------------------------------------------------------------------")
            escreval("Se você acha que Pode Melhorar algo no Sistema.")
            escreval("Vá até a opção comentários no Menu Inicial.")
            escreval("------------------------------------------------------------------")
            escreval

         fimse
      fimse
   ate (r=12)
fimprocedimento


procedimento comentario
arquivo "COMENTARIOS.txt"
var
   v,cont:inteiro
inicio
   limpatela
   repita
      escreval("==================================================================")
      escreval("*                 DIGITE 00 PARA SAIR DA OPÇÃO                   *")
      escreval("==================================================================")
      escreval("------------------------------------------------------------------")
      escreval("Digite 1 para continuar:")
      leia (v)
      se (v=1) entao
            escreval("------------------------------------------------------------------")
            escreval("Digite seu comentário:")
            cont <- cont + 1
            leia (regisambu[cont].comentarios)
            limpatela
            escreval("------------------------------------------------------------------")
            escreval("COMENTÁRIO RECEBIDO")
            escreval("OBRIGADO POR AJUDAR A MELHORAR O SISTEMA =)")
            escreval("------------------------------------------------------------------")
            escreval
      fimse
   ate (v=00)
fimprocedimento


procedimento mostrar
var
   r,f:inteiro
inicio
   limpatela
   repita
      escreval("==================================================================")
      escreval("*                 DIGITE 00 PARA SAIR DA OPÇÃO                   *")
      escreval("==================================================================")
      escreval("------------------------------------------------------------------")
      escreval("Digite 1 Para ver os comentários do QUICKHELP.")
      escreval("------------------------------------------------------------------")
      leia (f)
      se (f=1) entao
         r <- r + 1
         limpatela
         escreval (regisambu[r].comentarios)
      fimse
   ate (f=00)
fimprocedimento


procedimento creditos
var
   w:inteiro
inicio
   limpatela
   repita
      escreval("==================================================================")
      escreval("*                 DIGITE 00 PARA SAIR DA OPÇÃO                   *")
      escreval("==================================================================")
      escreval("------------------------------------------------------------------")
      escreval ("Digite 1 para continuar:")
      leia (w)
      se (w=1) entao
         limpatela
      mudacor("verde","frente")
      escreval
      escreval("________$$$$                                                                                                 _____________$$$$$$$$                      ")
      escreval("_______$____$                                                                                                ____________$$$$$$$$$$$                    ")
      escreval("______$_____$                                                                                                ____________$$$$$$$$$$$                    ")
      escreval("_____$___$$__$____________________$$$                                                                        _____________$$$$$$$$$                     ")
      escreval("_____$__$__$_$_________________$$$___$                                                                       _____$$$$$$_____$$$$$$$$$$                 ")
      escreval("____$__$___$_$_______________$$___$___$                                                                      ____$$$$$$$$__$$$$$$_____$$$               ")
      escreval("____$__$___$_$_____________$$___$$___$         $$$   $$$$  $$$$  $   $$$$      $      $$$$    $$$            ___$$$$$$$$$$$$$$$$_________$              ")
      escreval("___$__$_____$____________$$____$____$         $   $  $  $  $  $  $  $         $ $     $   $  $   $           __$$$$$$$$$$$$$$$$______$__$               ")
      escreval("__$__$______$___________$____$$____$          $   $  $$$   $ $   $  $ $$$    $   $    $   $  $   $           ___$$$$$$$$$$$$$$$$_____$$$_$              ")
      escreval("__$__$______$__________$___$$_____$           $   $  $  $  $  $  $  $   $   $$$$$$$   $   $  $   $           ___$$$$$$$$$$$__________$$$_$_____$$       ")
      escreval("_$___$___$_$__________$___$___$__$             $$$   $$$$  $  $  $   $$$$  $       $  $$$$    $$$            ____$$$$$$$$$____________$$_$$$$_$$$$      ")
      escreval("_$___$__$__$_________$___$___$__$                                                                            ______$$$__$$__$$$______________$$$$       ")
      escreval("_$___$_$__$_________$___$___$__$          ###    #  #   #    ###   #  #     #  #   #####   #      #####      ___________$$____$_______________$         ")
      escreval("_$___$_$_$_________$___$__$$_$$          #   #   #  #   #   #      # #      #  #   #       #      #   #      ____________$$____$______________$         ")
      escreval("_$____$_$$_$$$$$$$$$$$$_$$__$            # # #   #  #   #   #      ###      ####   ###     #      ####       _____________$$___$$$__________$$          ")
      escreval("__$___$$$$$$$$$$$_$$$$$__$$$             #  ##   #  #   #   #      # #      #  #   #       #      #          _______________$$$_$$$$$$_$$$$$            ")
      escreval("___$__$$$$$$_$$$$_$$$$$$$$                ### ##  ##    #    ###   #  #     #  #   #####   #####  #          ________________$$____$$_$$$$$             ")
      escreval("____$$$$$$$$$$$$$$$$$$____$$                                                                                 _______________$$$$$___$$$$$$$$$$          ")
      escreval("____$__$$$______$$$$$_$$$$$$$                                                                                _______________$$$$$$$$$$$$$$$$$$$$        ")
      escreval("____$_____$$$$$$_____$$_$$$$                                                                                 _______________$$_$$$$$$$$$$$$$$__$$       ")
      escreval("____$____$$___$$$___$_$$##$                                                                                  _______________$$__$$$$$$$$$$$___$_$       ")
      escreval("____$_____$$$$$$_____$$_$$$$                         Sistema Para Controle de Ambulâncias;                    ______________$$$__$___$$$______$$$$       ")
      escreval("_____$__$$_$$$##$___$$$##$                           Codigo feito pelo aluno:                                ______________$$$_$__________$$_$$$$       ")
      escreval("_____$____$__###$__$$$$$$$                           Matheus de Santana Patricio;                             ______________$$$$$_________$$$$_$_$       ")
      escreval("____$_____$$$$$$$$_____$___$                         Turma: 53127;                                            ______________$$$$__________$$$__$$        ")
      escreval("____$__________$$_______$$$$$                        Obrigado Por Utilizar o Sistema =)                         ___$$$___$$______$$$_____________$$        ")
      escreval("__$$__________$_______$$$____$$$                                                                             __$___$$__$$_____$__$$$_____$$__$$         ")
      escreval("_$__________________$$__________$                                                                            _$$____$___$_______$$$$$$$$$$$$$           ")
      escreval("_$_________________$___$$________$                               ^      ^                                     _$$_____$___$_____$$$$$_$$___$$$           ")
      escreval("_$________________$____$$________$                            _ / \    / \_                                   _$$_____$___$___$$$$____$____$$            ")
      escreval("_$______________$$______$$$_______$                            / ___ __ _ \                                   __$_____$$__$$$$$$$____$$_$$$$$            ")
      escreval("__$___________$$___________________$                          / / @ \/ @ \ \                                  __$$_____$___$_$$_____$__$__$$$$$$$$$$$$   ")
      escreval("___$$________$_____________________$                          \ \___/\___/ /\                                 ___$_____$$__$_$_____$_$$$__$$__$______$$$ ")
      escreval("____$$$______$___________________$$                            \____\/____/||                                 ____$$_________$___$$_$___$$__$$_________$ ")
      escreval("_______$$$$$$$__________$$$$$$$$$$                                /     /\\\\\                                _____$$_$$$$___$__$$__$__________________$ ")
      escreval("________$_____$$$_________$$____$$                               |      |\\\\\\                               ______$$____$__$$$____$__________________$ ")
      escreval("________$________$$$________$$$$                                 \      \\\\\\                                _______$____$__$_______$$______________$$  ")
      escreval("________$___________$$$$$$$$$$$                                   \____/\\\\\                                 ________$$$_$$$__________$$$$$$__$$$$$$    ")
      escreval("_________________________$$__$                                    _||_||_                                                                                ")
      escreval
      escreval
   fimse
ate (w=00)
fimprocedimento


inicio
   repita
      limpatela
   mudacor("amarelo","frente")
   escreval
   escreval
   escreval
   escreval
   escreval
   escreval
   escreval("===================================================================================================================================================================== ")
   escreval("*   -----------___¦__¦__¦___                                                                                                 -----------___¦__¦__¦___               * ")
   escreval("*   --------_¯¯-------------¯¯_                                                                                              --------_¯¯-------------¯¯_            * ")
   escreval("*   -------¦-------------------¦                                                                                             -------¦-------------------¦           * ")
   escreval("*   ------¦---------------------¦                                                                                            ------¦---------------------¦          * ")
   escreval("*   -----¦---_______---_______---¦                                                                                           -----¦---_______---_______---¦         * ")
   escreval("*   ----¦---¦¦¦¦¦¦¦¦¦-¦¦¦¦¦¦¦¦¦---¦                                                                                          ----¦---¦¦¦¦¦¦¦¦¦-¦¦¦¦¦¦¦¦¦---¦        * ")
   escreval("*   ----¦--¦¦¯----¯¦¦¦¦¦¯----¯¦¦--¦                                                                                          ----¦--¦¦¯----¯¦¦¦¦¦¯----¯¦¦--¦        * ")
   escreval("*   ---¦¦¦¦¦¦--¦¯¦--¦¦¦--¦¯¦--¦¦¦¦¦¦                                                                                         ---¦¦¦¦¦¦--¦¯¦--¦¦¦--¦¯¦--¦¦¦¦¦¦       * ")
   escreval("*   ---¦¦¦¦¦¦--¯¯¯--¦¦¦--¯¯¯--¦¦¦¦¦¦              ###    #  #   #    ###   #  #     #  #   #####   #      #####              ---¦¦¦¦¦¦--¯¯¯--¦¦¦--¯¯¯--¦¦¦¦¦¦       * ")
   escreval("*   ----¦--¯¦_----_¦¦-¦¦_----_¦¯--¦              #   #   #  #   #   #      # #      #  #   #       #      #   #              ----¦--¯¦_----_¦¦-¦¦_----_¦¯--¦        * ")
   escreval("*   ----¦----¯¦¦¦¦¦¯---¯¦¦¦¦¦¯----¦              # # #   #  #   #   #      ###      ####   ###     #      ####               ----¦----¯¦¦¦¦¦¯---¯¦¦¦¦¦¯----¦        * ")
   escreval("*   ----¦-------------------------¦              #  ##   #  #   #   #      # #      #  #   #       #      #                  ----¦-------------------------¦        * ")
   escreval("*   ----¦-------------------------¦               ### ##  ##    #    ###   #  #     #  #   #####   #####  #                  ----¦-------------------------¦        * ")
   escreval("*   ----¦-------¦¯¦¯¦¯¦¯¦¯¦-------¦                                                                                          ----¦-------¦¯¦¯¦¯¦¯¦¯¦-------¦        * ")
   escreval("*   ----¦-------¯_-------_¯-------¦                                                                                          ----¦-------¯_-------_¯-------¦        * ")
   escreval("*   ---¦¦¦¦-------¯_¦_¦_¯-------¦¦¦¦                                                                                         ---¦¦¦¦-------¯_¦_¦_¯-------¦¦¦¦       * ")
   escreval("*   ---¦¦¦¦¦___________________¦¦¦¦¦                          1 - CADASTRAR AMBULÂNCIAS;                                     ---¦¦¦¦¦___________________¦¦¦¦¦       * ")
   escreval("*   ---¦--¦¦_¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦_¦¦--¦                          2 - ESCOLHER AMBULÂNCIA DISPONÍVEL;                            ---¦--¦¦_¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦_¦¦--¦       * ")
   escreval("*   --¦--¦-¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦-¦--¦                         3 - MOSTRAR AMBULÂNCIAS INDISPONÍVEIS;                         --¦--¦-¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦-¦--¦      * ")
   escreval("*   --¦--¦-¦¦¦¦¦¦¦_______¦¦¦¦¦¦¦-¦--¦                         4 - MUDAR STATUS DA AMBULÂNCIA;                                --¦--¦-¦¦¦¦¦¦¦_______¦¦¦¦¦¦¦-¦--¦      * ")
   escreval("*   --¦--¦-¦¦¦¦¦¦¦¦¦¦¯¦¦¦¦¦¦¦¦¦¦-¦--¦                         5 - NOTA DE SATISFAÇÃO PARA O SISTEMA;                         --¦--¦-¦¦¦¦¦¦¦¦¦¦¯¦¦¦¦¦¦¦¦¦¦-¦--¦      * ")
   escreval("*   --¦--¦-¦¦¦¦¦¦¦¦¯¯¯¯¯¦¦¦¦¦¦¦¦-¦--¦                         6 - FAZER UM COMENTÁRIO;                                       --¦--¦-¦¦¦¦¦¦¦¦¯¯¯¯¯¦¦¦¦¦¦¦¦-¦--¦      * ")
   escreval("*   --¦--¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦--¦                         7 - MOSTRAR OS COMENTÁRIOS;                                    --¦--¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦--¦      * ")
   escreval("*   -_¦--¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦--¦_                        8 - CRÉDITOS.                                                  -_¦--¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦--¦_     * ")
   escreval("*   -¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦-¦¦¦¦¦                                                                                       -¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦-¦¦¦¦¦     * ")
   escreval("*   -¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦-¦¦¦¦                                                                                         -¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦-¦¦¦¦       * ")
   escreval("*   --¯¦¯¦--¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦---¦¯¦¯                                                                                        --¯¦¯¦--¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦---¦¯¦¯      * ")
   escreval("*   ---------¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦                                                                                                ---------¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦              * ")
   escreval("*   ----------¦¦¦¦¦¦--¦¦¦¦¦¦                                                                                                 ----------¦¦¦¦¦¦--¦¦¦¦¦¦               * ")
   escreval("*   ---------_¦¦¦¦¯----¯¦¦¦¦_                                                                                                ---------_¦¦¦¦¯----¯¦¦¦¦_              * ")
   escreval("===================================================================================================================================================================== ")
   leia (opcao)
   escolha opcao
   caso 1
      cadastro
   caso 2
      escolher
   caso 3
      indisponiveis
   caso 4
      disponiveis
   caso 5
      nota
   caso 6
      comentario
   caso 7
      mostrar
   caso 8
      creditos
   outrocaso
      escreval ("Opção invalida")
   fimescolha
ate (opcao = 0)
Fimalgoritmo