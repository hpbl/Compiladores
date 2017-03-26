package br.com.hpbl.analisadorlexico;

import java.io.File;
import java.nio.file.Paths;

public class Gerador {

    public static void main(String[] args) {

        String rootPath = Paths.get("").toAbsolutePath(). toString();
        String subPath = "/src/br/com/hpbl/analisadorlexico/";

        String file = rootPath + subPath + "hpbl.jflex";

        File sourceCode = new File(file);

        jflex.Main.generate(sourceCode);

    }
}
