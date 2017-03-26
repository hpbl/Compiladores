package br.com.hpbl.analisadorlexico;

import java.io.IOException;
import java.io.StringReader;

public class LinguagemTeste {

    public static void main(String[] args) throws IOException {

        String expr = "012309 0 123";

        AnalisadorLexico lexical = new AnalisadorLexico(new StringReader(expr));
        lexical.yylex();

    }
}