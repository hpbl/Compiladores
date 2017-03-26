package br.com.hpbl.analisadorlexico;

%%

/* 
A linha atual pode ser acessada por yyline 
e a coluna atual com yycolumn. 
*/ 
%line
%column

%class AnalisadorLexico
%type void

/*-*
* PADROES NOMEADOS:
*/

Whitespace      = [\n\t\r\f ]
Letra           = [a-zA-Z_]
Digito          = [0-9]
Identificador   = {Letra}({Letra}|{Digito})*
Inteiro         = {Digito}+


%%


/**
* REGRAS LEXICAS:
*/

// Palavras reservadas
"boolean"              {System.out.println("Token boolean");}
"class"                {System.out.println("Token class");}
"public"               {System.out.println("Token public");}
"extends"              {System.out.println("Token extends");}
"static"               {System.out.println("Token static");}
"void"                 {System.out.println("Token void");}
"main"                 {System.out.println("Token main");}
"int"                  {System.out.println("Token int");}
"while"                {System.out.println("Token while");}
"if"                   {System.out.println("Token if");}
"else"                 {System.out.println("Token else");}
"return"               {System.out.println("Token return");}
"length"               {System.out.println("Token length");}
"true"                 {System.out.println("Token true");}
"false"                {System.out.println("Token false");}
"this"                 {System.out.println("Token false");}
"new"                  {System.out.println("Token false");}
"System.out.println"   {System.out.println("Token System.out.println");}

// Operadores
"&&"              {System.out.println("Token &&");}
"<"               {System.out.println("Token <");}
"=="              {System.out.println("Token ==");}
"!="              {System.out.println("Token !=");}
"+"               {System.out.println("Token +");}
"-"               {System.out.println("Token -");}
"*"               {System.out.println("Token *");}
"!"               {System.out.println("Token !");}

// Pontuacao
";"               {System.out.println("Token ;");}
"."               {System.out.println("Token .");}
","               {System.out.println("Token ,");}
"="               {System.out.println("Token =");}
"("               {System.out.println("Token (");}
")"               {System.out.println("Token )");}
"{"               {System.out.println("Token {");}
"}"               {System.out.println("Token }");}
"["               {System.out.println("Token [");}
"]"               {System.out.println("Token ]");}

{Whitespace}          {System.out.println("Whitespace");}
{Identificador}       {System.out.println("Identificador");}
{Inteiro}             {System.out.println("Literal Inteiro");}

. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }











