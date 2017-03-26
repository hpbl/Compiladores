package br.com.hpbl.analisadorlexico;

import java.io.IOException;
import java.io.StringReader;

public class LinguagemTeste {

    public static void main(String[] args) throws IOException {

        String expr = "2 + 3+ true loL3";

        AnalisadorLexico lexical = new AnalisadorLexico(new StringReader(expr));
        lexical.yylex();

    }
}