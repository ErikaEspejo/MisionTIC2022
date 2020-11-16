[33mcommit d25dcc14f79db91187bda88f7765cd7b07a16689[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: ERIKA <erikaespejo95@gmail.com>
Date:   Mon Nov 16 15:47:05 2020 -0500

    Nuevo archivo?

[1mdiff --git a/test.txt b/test.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..8e332cd[m
[1m--- /dev/null[m
[1m+++ b/test.txt[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32meste es un nuevo archivo.[m
[32m+[m
[32m+[m[32mun cambio[m

[33mcommit 025642cba48701bf22c1ff7370fffe4ca6960d0c[m
Author: ERIKA <erikaespejo95@gmail.com>
Date:   Mon Nov 16 14:39:51 2020 -0500

    Primer commit

[1mdiff --git a/.gitattributes b/.gitattributes[m
[1mnew file mode 100644[m
[1mindex 0000000..dfe0770[m
[1m--- /dev/null[m
[1m+++ b/.gitattributes[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32m# Auto detect text files and perform LF normalization[m
[32m+[m[32m* text=auto[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..3f10044[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,10 @@[m
[32m+[m[32m/Ciclo2/Funciones/nbproject/private/[m
[32m+[m[32m/Ciclo2/Funciones/build/[m
[32m+[m[32m/Ciclo2/Ciclos/nbproject/private/[m
[32m+[m[32m/Ciclo2/Ciclos/build/[m
[32m+[m[32m/Ciclo2/Triki/nbproject/private/[m
[32m+[m[32m/Ciclo2/Triki/build/[m
[32m+[m[32m/Ciclo2/Promoción/nbproject/private/[m
[32m+[m[32m/Ciclo2/Promoción/build/[m
[32m+[m[32m/Ciclo2/Swing/HolaMundo1/nbproject/private/[m
[32m+[m[32m/Ciclo2/Swing/HolaMundo1/build/[m
\ No newline at end of file[m
[1mdiff --git a/Ciclo2/Carrito/Articulo.java b/Ciclo2/Carrito/Articulo.java[m
[1mnew file mode 100644[m
[1mindex 0000000..07e6525[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Carrito/Articulo.java[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32m//Erika Espejo[m
[32m+[m
[32m+[m[32mclass Articulo {[m
[32m+[m
[32m+[m[32m    String articleName;[m
[32m+[m[32m    int quantity;[m
[32m+[m[32m    double cost;[m
[32m+[m[41m    [m
[32m+[m[32m    public Articulo(String articleName, int quantity, double cost) {[m
[32m+[m[32m        this.articleName = articleName;[m
[32m+[m[32m        this.quantity = quantity;[m
[32m+[m[32m        this.cost = cost;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public double totalPerArticle() {[m
[32m+[m[32m        return this.quantity * this.cost;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public String toString() {[m
[32m+[m[32m        String article = articleName + " x" + quantity + " $" + (int)totalPerArticle();[m
[32m+[m[32m        return article;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Carrito/Carrito.java b/Ciclo2/Carrito/Carrito.java[m
[1mnew file mode 100644[m
[1mindex 0000000..d2b69a4[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Carrito/Carrito.java[m
[36m@@ -0,0 +1,89 @@[m
[32m+[m[32m//Erika Espejo[m
[32m+[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class Carrito {[m
[32m+[m
[32m+[m[32m    static Articulo[] articleList = new Articulo[20];[m
[32m+[m[32m    static int id = 0;[m
[32m+[m[32m    static String header = "Centro Comercial Unaleño\nCompra más y Gasta Menos\nNIT: 899.999.063";[m
[32m+[m[32m    static int totalArticleIndex = 0;[m
[32m+[m
[32m+[m[32m    //lee el comando y define que hacer de acuerdo a la opcion ingresada por el usuario[m
[32m+[m[32m    public static void commandProcessing(Scanner scan) {[m
[32m+[m[32m        boolean flag = true;[m
[32m+[m[41m        [m
[32m+[m[32m        while (flag) {[m
[32m+[m[32m            String[] data = scan.nextLine().split("&");[m
[32m+[m
[32m+[m[32m            switch(data[0]) {[m
[32m+[m[32m                case "1" :[m
[32m+[m[32m                    Articulo newArticle = new Articulo(data[1],Integer.parseInt(data[2]),Double.parseDouble(data[3]));[m
[32m+[m[32m                    articleAdd(newArticle);[m
[32m+[m[32m                    break;[m
[32m+[m[41m                [m
[32m+[m[32m                case "2" :[m[41m [m
[32m+[m[32m                    printTicket(data[1]);[m
[32m+[m[32m                    break;[m
[32m+[m
[32m+[m[32m                case "3" :[m
[32m+[m[32m                    flag = false;[m
[32m+[m[32m                    break;[m
[32m+[m[32m            }[m
[32m+[m[32m        }[m[41m      [m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    //Agrega el articulo nuevo en una nueva posición del arreglo ListaArticulos en base a un nuevo objeto article de la clase Articulo[m
[32m+[m[32m    public static void articleAdd(Articulo article) {[m
[32m+[m[32m        articleList[totalArticleIndex] = article;[m
[32m+[m[32m        totalArticleIndex++;[m[41m        [m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    //Calcula costo total del carrito sumando repetidamente el total por cada articulo mientras se recorre la lista de articulos[m
[32m+[m[32m    public static double totalPurchase(){[m
[32m+[m[32m        double total = 0;[m
[32m+[m[32m        for (int i = 0; i < totalArticleIndex; i++) {[m
[32m+[m[32m            total += articleList[i].totalPerArticle();[m
[32m+[m[32m        }[m
[32m+[m[32m        return total;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    //Calcula descuento en base al total del pedido[m
[32m+[m[32m    public static double discountComputation(double total) {[m
[32m+[m[32m        double totalDiscount = 0;[m
[32m+[m[32m        if (total <= 150_000) {[m
[32m+[m[32m            totalDiscount = 0;[m
[32m+[m[32m        } else if (total <= 300_000) {[m
[32m+[m[32m            totalDiscount = total * 0.1;[m
[32m+[m[32m        } else if (total <= 700_000) {[m
[32m+[m[32m            totalDiscount = total * 0.15;[m
[32m+[m[32m        } else {[m
[32m+[m[32m            totalDiscount = total * 0.2;[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        return totalDiscount;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    //Imprime la tirilla[m
[32m+[m[32m    public static void printTicket(String id) {[m
[32m+[m[32m        System.out.println(header);[m
[32m+[m[32m        System.out.println("Cliente: " + id);[m
[32m+[m[32m        System.out.println("Art Cant Precio");[m
[32m+[m
[32m+[m[32m        for (int i = 0; i < totalArticleIndex; i++) {[m
[32m+[m[32m            System.out.println(articleList[i]);[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        double totalCost = totalPurchase();[m
[32m+[m[32m        double discount = discountComputation(totalCost);[m
[32m+[m[32m        System.out.println("Total: $" + (int)Math.ceil(totalCost - discount));[m
[32m+[m[32m        System.out.println("En esta compra tu descuento fue: $" + (int)discount);[m
[32m+[m[32m        System.out.println("Gracias por tu compra\n---");[m
[32m+[m[32m        totalArticleIndex=0;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        Scanner scan = new Scanner(System.in);[m
[32m+[m[32m        commandProcessing(scan);[m[41m   [m
[32m+[m[32m    }[m[41m    [m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/Ciclo2/Ciclos/build.xml b/Ciclo2/Ciclos/build.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..1646d48[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Ciclos/build.xml[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!-- You may freely edit this file. See commented blocks below for -->[m
[32m+[m[32m<!-- some examples of how to customize the build. -->[m
[32m+[m[32m<!-- (If you delete it and reopen the project it will be recreated.) -->[m
[32m+[m[32m<!-- By default, only the Clean and Build commands use this build script. -->[m
[32m+[m[32m<!-- Commands such as Run, Debug, and Test only use this build script if -->[m
[32m+[m[32m<!-- the Compile on Save feature is turned off for the project. -->[m
[32m+[m[32m<!-- You can turn off the Compile on Save (or Deploy on Save) setting -->[m
[32m+[m[32m<!-- in the project's Project Properties dialog box.-->[m
[32m+[m[32m<project name="Ciclos" default="default" basedir=".">[m
[32m+[m[32m    <description>Builds, tests, and runs the project Ciclos.</description>[m
[32m+[m[32m    <import file="nbproject/build-impl.xml"/>[m
[32m+[m[32m    <!--[m
[32m+[m
[32m+[m[32m    There exist several targets which are by default empty and which can be[m[41m [m
[32m+[m[32m    used for execution of your tasks. These targets are usually executed[m[41m [m
[32m+[m[32m    before and after some main targets. They are:[m[41m [m
[32m+[m
[32m+[m[32m      -pre-init:                 called before initialization of project properties[m
[32m+[m[32m      -post-init:                called after initialization of project properties[m
[32m+[m[32m      -pre-compile:              called before javac compilation[m
[32m+[m[32m      -post-compile:             called after javac compilation[m
[32m+[m[32m      -pre-compile-single:       called before javac compilation of single file[m
[32m+[m[32m      -post-compile-single:      called after javac compilation of single file[m
[32m+[m[32m      -pre-compile-test:         called before javac compilation of JUnit tests[m
[32m+[m[32m      -post-compile-test:        called after javac compilation of JUnit tests[m
[32m+[m[32m      -pre-compile-test-single:  called before javac compilation of single JUnit test[m
[32m+[m[32m      -post-compile-test-single: called after javac compilation of single JUunit test[m
[32m+[m[32m      -pre-jar:                  called before JAR building[m
[32m+[m[32m      -post-jar:                 called after JAR building[m
[32m+[m[32m      -post-clean:               called after cleaning build products[m
[32m+[m
[32m+[m[32m    (Targets beginning with '-' are not intended to be called on their own.)[m
[32m+[m
[32m+[m[32m    Example of inserting an obfuscator after compilation could look like this:[m
[32m+[m
[32m+[m[32m        <target name="-post-compile">[m
[32m+[m[32m            <obfuscate>[m
[32m+[m[32m                <fileset dir="${build.classes.dir}"/>[m
[32m+[m[32m            </obfuscate>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    For list of available properties check the imported[m[41m [m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m
[32m+[m[32m    Another way to customize the build is by overriding existing main targets.[m
[32m+[m[32m    The targets of interest are:[m[41m [m
[32m+[m
[32m+[m[32m      -init-macrodef-javac:     defines macro for javac compilation[m
[32m+[m[32m      -init-macrodef-junit:     defines macro for junit execution[m
[32m+[m[32m      -init-macrodef-debug:     defines macro for class debugging[m
[32m+[m[32m      -init-macrodef-java:      defines macro for class execution[m
[32m+[m[32m      -do-jar:                  JAR building[m
[32m+[m[32m      run:                      execution of project[m[41m [m
[32m+[m[32m      -javadoc-build:           Javadoc generation[m
[32m+[m[32m      test-report:              JUnit report generation[m
[32m+[m
[32m+[m[32m    An example of overriding the target for project execution could look like this:[m
[32m+[m
[32m+[m[32m        <target name="run" depends="Ciclos-impl.jar">[m
[32m+[m[32m            <exec dir="bin" executable="launcher.exe">[m
[32m+[m[32m                <arg file="${dist.jar}"/>[m
[32m+[m[32m            </exec>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    Notice that the overridden target depends on the jar target and not only on[m[41m [m
[32m+[m[32m    the compile target as the regular run target does. Again, for a list of available[m[41m [m
[32m+[m[32m    properties which you can use, check the target you are overriding in the[m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m[32m    -->[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Ciclos/manifest.mf b/Ciclo2/Ciclos/manifest.mf[m
[1mnew file mode 100644[m
[1mindex 0000000..328e8e5[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Ciclos/manifest.mf[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mManifest-Version: 1.0[m
[32m+[m[32mX-COMMENT: Main-Class will be added automatically by build[m
[32m+[m
[1mdiff --git a/Ciclo2/Ciclos/nbproject/build-impl.xml b/Ciclo2/Ciclos/nbproject/build-impl.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..0958bbf[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Ciclos/nbproject/build-impl.xml[m
[36m@@ -0,0 +1,1420 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!--[m
[32m+[m[32m*** GENERATED FROM project.xml - DO NOT EDIT  ***[m
[32m+[m[32m***         EDIT ../build.xml INSTEAD         ***[m
[32m+[m
[32m+[m[32mFor the purpose of easier reading the script[m
[32m+[m[32mis divided into following sections:[m
[32m+[m
[32m+[m[32m  - initialization[m
[32m+[m[32m  - compilation[m
[32m+[m[32m  - jar[m
[32m+[m[32m  - execution[m
[32m+[m[32m  - debugging[m
[32m+[m[32m  - javadoc[m
[32m+[m[32m  - test compilation[m
[32m+[m[32m  - test execution[m
[32m+[m[32m  - test debugging[m
[32m+[m[32m  - applet[m
[32m+[m[32m  - cleanup[m
[32m+[m
[32m+[m[32m        -->[m
[32m+[m[32m<project xmlns:j2seproject1="http://www.netbeans.org/ns/j2se-project/1" xmlns:j2seproject3="http://www.netbeans.org/ns/j2se-project/3" xmlns:jaxrpc="http://www.netbeans.org/ns/j2se-project/jax-rpc" basedir=".." default="default" name="Ciclos-impl">[m
[32m+[m[32m    <fail message="Please build using Ant 1.8.0 or higher.">[m
[32m+[m[32m        <condition>[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <antversion atleast="1.8.0"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </fail>[m
[32m+[m[32m    <target depends="test,jar,javadoc" description="Build and test whole project." name="default"/>[m
[32m+[m[32m    <!--[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m                INITIALIZATION SECTION[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init" name="-init-private">[m
[32m+[m[32m        <property file="nbproject/private/config.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/private.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private" name="-init-user">[m
[32m+[m[32m        <property file="${user.properties.file}"/>[m
[32m+[m[32m        <!-- The two properties below are usually overridden -->[m
[32m+[m[32m        <!-- by the active platform. Just a fallback. -->[m
[32m+[m[32m        <property name="default.javac.source" value="1.6"/>[m
[32m+[m[32m        <property name="default.javac.target" value="1.6"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user" name="-init-project">[m
[32m+[m[32m        <property file="nbproject/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/project.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-init-macrodef-property" name="-do-init">[m
[32m+[m[32m        <property name="platform.java" value="${java.home}/bin/java"/>[m
[32m+[m[32m        <available file="${manifest.file}" property="manifest.available"/>[m
[32m+[m[32m        <condition property="splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${application.splash}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${application.splash}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${main.class}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javac.profile"/>[m
[32m+[m[32m                <length length="0" string="${javac.profile}" when="greater"/>[m
[32m+[m[32m                <matches pattern="((1\.[89])|9)(\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${jar.archive.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <istrue value="${not.archive.disabled}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.mkdist">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="do.archive"/>[m
[32m+[m[32m                <isset property="libs.CopyLibs.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${mkdist.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+manifest.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="manifest.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="splashscreen.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="profile.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.tests">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${test.src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.sources">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="netbeans.home+have.tests">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="netbeans.home"/>[m
[32m+[m[32m                <isset property="have.tests"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="no.javadoc.preview">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.preview"/>[m
[32m+[m[32m                <isfalse value="${javadoc.preview}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="run.jvmargs" value=""/>[m
[32m+[m[32m        <property name="run.jvmargs.ide" value=""/>[m
[32m+[m[32m        <property name="javac.compilerargs" value=""/>[m
[32m+[m[32m        <property name="work.dir" value="${basedir}"/>[m
[32m+[m[32m        <condition property="no.deps">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${no.dependencies}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javac.debug" value="true"/>[m
[32m+[m[32m        <property name="javadoc.preview" value="true"/>[m
[32m+[m[32m        <property name="application.args" value=""/>[m
[32m+[m[32m        <property name="source.encoding" value="${file.encoding}"/>[m
[32m+[m[32m        <property name="runtime.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="manifest.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <condition property="javadoc.encoding.used" value="${javadoc.encoding}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.encoding"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${javadoc.encoding}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javadoc.encoding.used" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="includes" value="**"/>[m
[32m+[m[32m        <property name="excludes" value=""/>[m
[32m+[m[32m        <property name="do.depend" value="false"/>[m
[32m+[m[32m        <condition property="do.depend.true">[m
[32m+[m[32m            <istrue value="${do.depend}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <path id="endorsed.classpath.path" path="${endorsed.classpath}"/>[m
[32m+[m[32m        <condition else="" property="endorsed.classpath.cmd.line.arg" value="-Xbootclasspath/p:'${toString:endorsed.classpath.path}'">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="javac.profile.cmd.line.arg" value="-profile ${javac.profile}">[m
[32m+[m[32m            <isset property="profile.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="jdkBug6558476">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <matches pattern="1\.[56]" string="${java.specification.version}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <os family="unix"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="javac.fork">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <istrue value="${jdkBug6558476}"/>[m
[32m+[m[32m                <istrue value="${javac.external.vm}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="jar.index" value="false"/>[m
[32m+[m[32m        <property name="jar.index.metainf" value="${jar.index}"/>[m
[32m+[m[32m        <property name="copylibs.rebase" value="true"/>[m
[32m+[m[32m        <available file="${meta.inf.dir}/persistence.xml" property="has.persistence.xml"/>[m
[32m+[m[32m        <condition property="junit.available">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available classname="org.junit.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m                <available classname="junit.framework.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="testng.available">[m
[32m+[m[32m            <available classname="org.testng.annotations.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="junit+testng.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <istrue value="${testng.available}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="testng" property="testng.mode" value="mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="testng.debug.mode" value="-mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="java.failonerror" value="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init" name="-init-check">[m
[32m+[m[32m        <fail unless="src.dir">Must set src.dir</fail>[m
[32m+[m[32m        <fail unless="test.src.dir">Must set test.src.dir</fail>[m
[32m+[m[32m        <fail unless="build.dir">Must set build.dir</fail>[m
[32m+[m[32m        <fail unless="dist.dir">Must set dist.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.dir">Must set build.classes.dir</fail>[m
[32m+[m[32m        <fail unless="dist.javadoc.dir">Must set dist.javadoc.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.classes.dir">Must set build.test.classes.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.results.dir">Must set build.test.results.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.excludes">Must set build.classes.excludes</fail>[m
[32m+[m[32m        <fail unless="dist.jar">Must set dist.jar</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-property">[m
[32m+[m[32m        <macrodef name="property" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-macrodef-javac-with-processors">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <mkdir dir="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <compilerarg value="-processorpath"/>[m
[32m+[m[32m                    <compilerarg path="@{processorpath}:${empty.dir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.processors.internal}"/>[m
[32m+[m[32m                    <compilerarg line="${annotation.processing.processor.options}"/>[m
[32m+[m[32m                    <compilerarg value="-s"/>[m
[32m+[m[32m                    <compilerarg path="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.proc.none.internal}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" name="-init-macrodef-javac-without-processors" unless="ap.supported.internal">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-javac-with-processors,-init-macrodef-javac-without-processors" name="-init-macrodef-javac">[m
[32m+[m[32m        <macrodef name="depend" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <depend cache="${build.dir}/depcache" destdir="@{destdir}" excludes="${excludes}" includes="${includes}" srcdir="@{srcdir}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </depend>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="force-recompile" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <fail unless="javac.includes">Must set javac.includes</fail>[m
[32m+[m[32m                <pathconvert pathsep="${line.separator}" property="javac.includes.binary">[m
[32m+[m[32m                    <path>[m
[32m+[m[32m                        <filelist dir="@{destdir}" files="${javac.includes}"/>[m
[32m+[m[32m                    </path>[m
[32m+[m[32m                    <globmapper from="*.java" to="*.class"/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <tempfile deleteonexit="true" property="javac.includesfile.binary"/>[m
[32m+[m[32m                <echo file="${javac.includesfile.binary}" message="${javac.includes.binary}"/>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <files includesfile="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <fileset file="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-init">[m
[32m+[m[32m        <condition else="false" property="nb.junit.batch" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="nb.junit.single" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <isset property="test.method"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-test-properties">[m
[32m+[m[32m        <property name="test.binaryincludes" value="&lt;nothing&gt;"/>[m
[32m+[m[32m        <property name="test.binarytestincludes" value=""/>[m
[32m+[m[32m        <property name="test.binaryexcludes" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${nb.junit.single}" name="-init-macrodef-junit-single" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-batch" unless="${nb.junit.single}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-init,-init-macrodef-junit-single, -init-macrodef-junit-batch" if="${junit.available}" name="-init-macrodef-junit"/>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng">[m
[32m+[m[32m        <macrodef name="testng" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="" property="testng.methods.arg" value="@{testincludes}.@{testmethods}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <union id="test.set">[m
[32m+[m[32m                    <fileset dir="${test.src.dir}" excludes="@{excludes},**/*.xml,${excludes}" includes="@{includes}">[m
[32m+[m[32m                        <filename name="@{testincludes}"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </union>[m
[32m+[m[32m                <taskdef classname="org.testng.TestNGAntTask" classpath="${run.test.classpath}" name="testng"/>[m
[32m+[m[32m                <testng classfilesetref="test.set" failureProperty="tests.failed" listeners="org.testng.reporters.VerboseReporter" methods="${testng.methods.arg}" mode="${testng.mode}" outputdir="${build.test.results.dir}" suitename="Ciclos" testname="TestNG tests" workingDir="${work.dir}">[m
[32m+[m[32m                    <xmlfileset dir="${build.test.classes.dir}" includes="@{testincludes}"/>[m
[32m+[m[32m                    <propertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </propertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-test-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <echo>No tests executed.</echo>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit" if="${junit.available}" name="-init-macrodef-junit-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng" if="${testng.available}" name="-init-macrodef-testng-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-impl,-init-macrodef-junit-impl,-init-macrodef-testng-impl" name="-init-macrodef-test">[m
[32m+[m[32m        <macrodef name="test" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-debug" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-debug-batch">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug,-init-macrodef-junit-debug-batch" if="${junit.available}" name="-init-macrodef-junit-debug-impl">[m
[32m+[m[32m        <macrodef name="test-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit-debug excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng-debug">[m
[32m+[m[32m        <macrodef name="testng-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="-testclass @{testClass}" property="test.class.or.method" value="-methods @{testClass}.@{testMethod}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <condition else="-suitename Ciclos -testname @{testClass} ${test.class.or.method}" property="testng.cmd.args" value="@{testClass}">[m
[32m+[m[32m                    <matches pattern=".*\.xml" string="@{testClass}"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <delete dir="${build.test.results.dir}" quiet="true"/>[m
[32m+[m[32m                <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m                <j2seproject3:debug classname="org.testng.TestNG" classpath="${debug.test.classpath}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <customize2/>[m
[32m+[m[32m                        <jvmarg value="-ea"/>[m
[32m+[m[32m                        <arg line="${testng.debug.mode}"/>[m
[32m+[m[32m                        <arg line="-d ${build.test.results.dir}"/>[m
[32m+[m[32m                        <arg line="-listener org.testng.reporters.VerboseReporter"/>[m
[32m+[m[32m                        <arg line="${testng.cmd.args}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug" if="${testng.available}" name="-init-macrodef-testng-debug-impl">[m
[32m+[m[32m        <macrodef name="testng-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element implicit="true" name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2/>[m
[32m+[m[32m                </j2seproject3:testng-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug-impl" if="${junit.available}" name="-init-macrodef-test-debug-junit">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-debug-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug-impl" if="${testng.available}" name="-init-macrodef-test-debug-testng">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug-impl testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2>[m
[32m+[m[32m                        <syspropertyset>[m
[32m+[m[32m                            <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                            <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                        </syspropertyset>[m
[32m+[m[32m                    </customize2>[m
[32m+[m[32m                </j2seproject3:testng-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-debug-junit,-init-macrodef-test-debug-testng" name="-init-macrodef-test-debug"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiling section; consider it deprecated[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile, -profile-init-check" if="profiler.info.jvmargs.agent" name="profile-init"/>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-init-macrodef-profile">[m
[32m+[m[32m        <macrodef name="resolve">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${env.@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="profile">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property environment="env"/>[m
[32m+[m[32m                <resolve name="profiler.current.path" value="${profiler.info.pathvar}"/>[m
[32m+[m[32m                <java classname="@{classname}" dir="${profiler.info.dir}" failonerror="${java.failonerror}" fork="true" jvm="${profiler.info.jvm}">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m                    <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m                    <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m                    <arg line="${application.args}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="${run.classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile" if="profiler.info.jvmargs.agent" name="-profile-init-check">[m
[32m+[m[32m        <fail unless="profiler.info.jvm">Must set JVM to use for profiling in profiler.info.jvm</fail>[m
[32m+[m[32m        <fail unless="profiler.info.jvmargs.agent">Must set profiler agent JVM arguments in profiler.info.jvmargs.agent</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB7.2 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-nbjpda">[m
[32m+[m[32m        <macrodef name="nbjpdastart" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="name"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="" name="stopclassname"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdastart addressproperty="jpda.address" name="@{name}" stopclassname="@{stopclassname}" transport="${debug-transport}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </nbjpdastart>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="nbjpdareload" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="dir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdareload>[m
[32m+[m[32m                    <fileset dir="@{dir}" includes="${fix.classes}">[m
[32m+[m[32m                        <include name="${fix.includes}*.class"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </nbjpdareload>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-debug-args">[m
[32m+[m[32m        <property name="version-output" value="java version &quot;${ant.java.version}"/>[m
[32m+[m[32m        <condition property="have-jdk-older-than-1.4">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.0"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.1"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.2"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.3"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="-Xdebug" property="debug-args-line" value="-Xdebug -Xnoagent -Djava.compiler=none">[m
[32m+[m[32m            <istrue value="${have-jdk-older-than-1.4}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="dt_socket" property="debug-transport-by-os" value="dt_shmem">[m
[32m+[m[32m            <os family="windows"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="${debug-transport-by-os}" property="debug-transport" value="${debug.transport}">[m
[32m+[m[32m            <isset property="debug.transport"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-debug">[m
[32m+[m[32m        <macrodef name="debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-java">[m
[32m+[m[32m        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${run.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="jvm" name="jvm"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-copylibs">[m
[32m+[m[32m        <macrodef name="copylibs" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${manifest.file}" name="manifest"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m                <pathconvert property="run.classpath.without.build.classes.dir">[m
[32m+[m[32m                    <path path="${run.classpath}"/>[m
[32m+[m[32m                    <map from="${build.classes.dir.resolved}" to=""/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <pathconvert pathsep=" " property="jar.classpath">[m
[32m+[m[32m                    <path path="${run.classpath.without.build.classes.dir}"/>[m
[32m+[m[32m                    <chainedmapper>[m
[32m+[m[32m                        <flattenmapper/>[m
[32m+[m[32m                        <filtermapper>[m
[32m+[m[32m                            <replacestring from=" " to="%20"/>[m
[32m+[m[32m                        </filtermapper>[m
[32m+[m[32m                        <globmapper from="*" to="lib/*"/>[m
[32m+[m[32m                    </chainedmapper>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <taskdef classname="org.netbeans.modules.java.j2seproject.copylibstask.CopyLibs" classpath="${libs.CopyLibs.classpath}" name="copylibs"/>[m
[32m+[m[32m                <copylibs compress="${jar.compress}" excludeFromCopy="${copylibs.excludes}" index="${jar.index}" indexMetaInf="${jar.index.metainf}" jarfile="${dist.jar}" manifest="@{manifest}" manifestencoding="UTF-8" rebase="${copylibs.rebase}" runtimeclasspath="${run.classpath.without.build.classes.dir}">[m
[32m+[m[32m                    <fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m                    <manifest>[m
[32m+[m[32m                        <attribute name="Class-Path" value="${jar.classpath}"/>[m
[32m+[m[32m                        <customize/>[m
[32m+[m[32m                    </manifest>[m
[32m+[m[32m                </copylibs>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-presetdef-jar">[m
[32m+[m[32m        <presetdef name="jar" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <jar compress="${jar.compress}" index="${jar.index}" jarfile="${dist.jar}" manifestencoding="UTF-8">[m
[32m+[m[32m                <j2seproject1:fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m            </jar>[m
[32m+[m[32m        </presetdef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-ap-cmdline-properties">[m
[32m+[m[32m        <property name="annotation.processing.enabled" value="true"/>[m
[32m+[m[32m        <property name="annotation.processing.processors.list" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.processor.options" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.run.all.processors" value="true"/>[m
[32m+[m[32m        <property name="javac.processorpath" value="${javac.classpath}"/>[m
[32m+[m[32m        <property name="javac.test.processorpath" value="${javac.test.classpath}"/>[m
[32m+[m[32m        <condition property="ap.supported.internal" value="true">[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <matches pattern="1\.[0-5](\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-ap-cmdline-supported">[m
[32m+[m[32m        <condition else="" property="ap.processors.internal" value="-processor ${annotation.processing.processors.list}">[m
[32m+[m[32m            <isfalse value="${annotation.processing.run.all.processors}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="ap.proc.none.internal" value="-proc:none">[m
[32m+[m[32m            <isfalse value="${annotation.processing.enabled}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties,-init-ap-cmdline-supported" name="-init-ap-cmdline">[m
[32m+[m[32m        <property name="ap.cmd.line.internal" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init,-post-init,-init-check,-init-macrodef-property,-init-macrodef-javac,-init-macrodef-test,-init-macrodef-test-debug,-init-macrodef-nbjpda,-init-macrodef-debug,-init-macrodef-java,-init-presetdef-jar,-init-ap-cmdline" name="init"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===================[m
[32m+[m[32m                COMPILATION SECTION[m
[32m+[m[32m                ===================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-jar-init" unless="built-jar.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-jar.properties" name="built-jar.properties"/>[m
[32m+[m[32m        <delete file="${built-jar.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.jar.${basedir}" name="-warn-already-built-jar">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: Ciclos was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-jar-init" name="deps-jar" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-jar.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-jar.properties}" prefix="already.built.jar."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-jar"/>[m
[32m+[m[32m        <propertyfile file="${built-jar.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-check-automatic-build,-clean-after-automatic-build" name="-verify-automatic-build"/>[m
[32m+[m[32m    <target depends="init" name="-check-automatic-build">[m
[32m+[m[32m        <available file="${build.classes.dir}/.netbeans_automatic_build" property="netbeans.automatic.build"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.automatic.build" name="-clean-after-automatic-build">[m
[32m+[m[32m        <antcall target="clean"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar" name="-pre-pre-compile">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-depend">[m
[32m+[m[32m        <pathconvert property="build.generated.subdirs">[m
[32m+[m[32m            <dirset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="*"/>[m
[32m+[m[32m            </dirset>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <j2seproject3:depend srcdir="${src.dir}:${build.generated.subdirs}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile,-pre-compile, -copy-persistence-xml,-compile-depend" if="have.sources" name="-do-compile">[m
[32m+[m[32m        <j2seproject3:javac gensrcdir="${build.generated.sources.dir}"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="has.persistence.xml" name="-copy-persistence-xml">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}/META-INF">[m
[32m+[m[32m            <fileset dir="${meta.inf.dir}" includes="persistence.xml orm.xml"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile,-do-compile,-post-compile" description="Compile project." name="compile"/>[m
[32m+[m[32m    <target name="-pre-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile" name="-do-compile-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile/>[m
[32m+[m[32m        <j2seproject3:javac excludes="" gensrcdir="${build.generated.sources.dir}" includes="${javac.includes}" sourcepath="${src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile-single,-do-compile-single,-post-compile-single" name="compile-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ====================[m
[32m+[m[32m                JAR BUILDING SECTION[m
[32m+[m[32m                ====================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" name="-pre-pre-jar">[m
[32m+[m[32m        <dirname file="${dist.jar}" property="dist.jar.dir"/>[m
[32m+[m[32m        <mkdir dir="${dist.jar.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive" name="-do-jar-create-manifest" unless="manifest.available">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <touch file="${tmp.manifest.file}" verbose="false"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive+manifest.available" name="-do-jar-copy-manifest">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <copy encoding="${manifest.encoding}" file="${manifest.file}" outputencoding="UTF-8" tofile="${tmp.manifest.file}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+main.class.available" name="-do-jar-set-mainclass">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Main-Class" value="${main.class}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+profile.available" name="-do-jar-set-profile">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Profile" value="${javac.profile}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+splashscreen.available" name="-do-jar-set-splashscreen">[m
[32m+[m[32m        <basename file="${application.splash}" property="splashscreen.basename"/>[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy failonerror="false" file="${application.splash}" todir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="SplashScreen-Image" value="META-INF/${splashscreen.basename}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-init-macrodef-copylibs,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.mkdist" name="-do-jar-copylibs">[m
[32m+[m[32m        <j2seproject3:copylibs manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <echo level="info">To run this application from the command line without Ant, try:</echo>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <echo level="info">java -jar "${dist.jar.resolved}"</echo>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.archive" name="-do-jar-jar" unless="do.mkdist">[m
[32m+[m[32m        <j2seproject1:jar manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <pathconvert property="run.classpath.with.dist.jar">[m
[32m+[m[32m            <path path="${run.classpath}"/>[m
[32m+[m[32m            <map from="${build.classes.dir.resolved}" to="${dist.jar.resolved}"/>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <condition else="" property="jar.usage.message" value="To run this application from the command line without Ant, try:${line.separator}${platform.java} -cp ${run.classpath.with.dist.jar} ${main.class}">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="debug" property="jar.usage.level" value="info">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <echo level="${jar.usage.level}" message="${jar.usage.message}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-do-jar-copylibs" if="do.archive" name="-do-jar-delete-manifest">[m
[32m+[m[32m        <delete>[m
[32m+[m[32m            <fileset file="${tmp.manifest.file}"/>[m
[32m+[m[32m        </delete>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-jar,-do-jar-delete-manifest" name="-do-jar-without-libraries"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-copylibs,-do-jar-delete-manifest" name="-do-jar-with-libraries"/>[m
[32m+[m[32m    <target name="-post-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar-without-libraries,-do-jar-with-libraries,-post-jar" name="-do-jar"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar,-post-jar" description="Build JAR." name="jar"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                EXECUTION SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" description="Run a main class." name="run">[m
[32m+[m[32m        <j2seproject1:java>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-do-not-recompile">[m
[32m+[m[32m        <property name="javac.includes.binary" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single" name="run-single">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single" name="run-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}" classpath="${run.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                DEBUGGING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger">[m
[32m+[m[32m        <j2seproject1:nbjpdastart name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-main-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile" name="-debug-start-debuggee">[m
[32m+[m[32m        <j2seproject3:debug>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger,-debug-start-debuggee" description="Debug project in IDE." if="netbeans.home" name="debug"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-stepinto">[m
[32m+[m[32m        <j2seproject1:nbjpdastart stopclassname="${main.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger-stepinto,-debug-start-debuggee" if="netbeans.home" name="debug-stepinto"/>[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-single">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-single" if="netbeans.home" name="debug-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single" if="netbeans.home" name="-debug-start-debuggee-main-test">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}" classpath="${debug.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-main-test,-debug-start-debuggee-main-test" if="netbeans.home" name="debug-test-with-main"/>[m
[32m+[m[32m    <target depends="init" name="-pre-debug-fix">[m
[32m+[m[32m        <fail unless="fix.includes">Must set fix.includes</fail>[m
[32m+[m[32m        <property name="javac.includes" value="${fix.includes}.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-single" if="netbeans.home" name="-do-debug-fix">[m
[32m+[m[32m        <j2seproject1:nbjpdareload/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix" if="netbeans.home" name="debug-fix"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                PROFILING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiler integration[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="profile-init,compile" description="Profile a project in the IDE." if="profiler.info.jvmargs.agent" name="-profile-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" description="Profile a selected class in the IDE." if="profiler.info.jvmargs.agent" name="-profile-single-pre72">[m
[32m+[m[32m        <fail unless="profile.class">Must select one file in the IDE or set profile.class</fail>[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="${profile.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" if="profiler.info.jvmargs.agent" name="-profile-applet-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </profile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-test-single" if="profiler.info.jvmargs.agent" name="-profile-test-single-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <junit dir="${profiler.info.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" jvm="${profiler.info.jvm}" showoutput="true">[m
[32m+[m[32m            <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m            <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m            <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m            <test name="${profile.class}"/>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <syspropertyset>[m
[32m+[m[32m                <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m            </syspropertyset>[m
[32m+[m[32m            <formatter type="brief" usefile="false"/>[m
[32m+[m[32m            <formatter type="xml"/>[m
[32m+[m[32m        </junit>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB72 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target if="netbeans.home" name="-profile-check">[m
[32m+[m[32m        <condition property="profiler.configured">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-agentpath:"/>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-javaagent:"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-pre72" description="Profile a project in the IDE." if="profiler.configured" name="profile" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-single-pre72" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-single" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-test-single-pre72" description="Profile a selected test in the IDE." name="profile-test-single"/>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected test in the IDE." if="profiler.configured" name="profile-test" unless="profiler.info.jvmargs">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="test-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-test-with-main"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-applet-pre72" if="profiler.configured" name="profile-applet" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-applet"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                JAVADOC SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.sources" name="-javadoc-build">[m
[32m+[m[32m        <mkdir dir="${dist.javadoc.dir}"/>[m
[32m+[m[32m        <condition else="" property="javadoc.endorsed.classpath.cmd.line.arg" value="-J${endorsed.classpath.cmd.line.arg}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath.cmd.line.arg"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath.cmd.line.arg}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="bug5101868workaround" value="*.java">[m
[32m+[m[32m            <matches pattern="1\.[56](\..*)?" string="${java.version}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <javadoc additionalparam="-J-Dfile.encoding=${file.encoding} ${javadoc.additionalparam}" author="${javadoc.author}" charset="UTF-8" destdir="${dist.javadoc.dir}" docencoding="UTF-8" encoding="${javadoc.encoding.used}" failonerror="true" noindex="${javadoc.noindex}" nonavbar="${javadoc.nonavbar}" notree="${javadoc.notree}" private="${javadoc.private}" source="${javac.source}" splitindex="${javadoc.splitindex}" use="${javadoc.use}" useexternalfile="true" version="${javadoc.version}" windowtitle="${javadoc.windowtitle}">[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${javac.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${bug5101868workaround},${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/*.java"/>[m
[32m+[m[32m                <exclude name="*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <arg line="${javadoc.endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m        </javadoc>[m
[32m+[m[32m        <copy todir="${dist.javadoc.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build" if="netbeans.home" name="-javadoc-browse" unless="no.javadoc.preview">[m
[32m+[m[32m        <nbbrowse file="${dist.javadoc.dir}/index.html"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build,-javadoc-browse" description="Build Javadoc." name="javadoc"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                TEST COMPILATION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" if="have.tests" name="-pre-pre-compile-test">[m
[32m+[m[32m        <mkdir dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-test-depend">[m
[32m+[m[32m        <j2seproject3:depend classpath="${javac.test.classpath}" destdir="${build.test.classes.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test,-compile-test-depend" if="have.tests" name="-do-compile-test">[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" processorpath="${javac.test.processorpath}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test,-do-compile-test,-post-compile-test" name="compile-test"/>[m
[32m+[m[32m    <target name="-pre-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test-single" if="have.tests" name="-do-compile-test-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile destdir="${build.test.classes.dir}"/>[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" excludes="" includes="${javac.includes}" processorpath="${javac.test.processorpath}" sourcepath="${test.src.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test-single,-do-compile-test-single,-post-compile-test-single" name="compile-test-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST EXECUTION SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run" if="have.tests" name="-do-test-run">[m
[32m+[m[32m        <j2seproject3:test includes="${includes}" testincludes="**/*Test.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run" if="have.tests" name="-post-test-run">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="test-report"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home+have.tests" name="-test-browse"/>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run,test-report,-post-test-run,-test-browse" description="Run unit tests." name="test"/>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run-single">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${test.includes}" testincludes="${test.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single" if="have.tests" name="-post-test-run-single">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single,-post-test-run-single" description="Run single unit test." name="test-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single-method">[m
[32m+[m[32m        <fail unless="test.class">Must select some files in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${javac.includes}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method" if="have.tests" name="-post-test-run-single-method">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method,-post-test-run-single-method" description="Run single unit test." name="test-single-method"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST DEBUGGING SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testincludes="${javac.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test-method">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testMethod="${test.method}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test" if="netbeans.home+have.tests" name="-debug-start-debugger-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${test.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test" name="debug-test"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test-method" name="debug-test-method"/>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-test-single" if="netbeans.home" name="-do-debug-fix-test">[m
[32m+[m[32m        <j2seproject1:nbjpdareload dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix-test" if="netbeans.home" name="debug-fix-test"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET EXECUTION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" name="run-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject1:java classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET DEBUGGING  SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-applet" if="netbeans.home" name="debug-applet"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                CLEANUP SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-clean-init" unless="built-clean.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-clean.properties" name="built-clean.properties"/>[m
[32m+[m[32m        <delete file="${built-clean.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.clean.${basedir}" name="-warn-already-built-clean">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: Ciclos was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-clean-init" name="deps-clean" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-clean.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-clean.properties}" prefix="already.built.clean."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-clean"/>[m
[32m+[m[32m        <propertyfile file="${built-clean.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" name="-do-clean">[m
[32m+[m[32m        <delete dir="${build.dir}"/>[m
[32m+[m[32m        <delete dir="${dist.dir}" followsymlinks="false" includeemptydirs="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-clean">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-clean,-do-clean,-post-clean" description="Clean build products." name="clean"/>[m
[32m+[m[32m    <target name="-check-call-dep">[m
[32m+[m[32m        <property file="${call.built.properties}" prefix="already.built."/>[m
[32m+[m[32m        <condition property="should.call.dep">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="already.built.${call.subproject}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${call.script}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-check-call-dep" if="should.call.dep" name="-maybe-call-dep">[m
[32m+[m[32m        <ant antfile="${call.script}" inheritall="false" target="${call.target}">[m
[32m+[m[32m            <propertyset>[m
[32m+[m[32m                <propertyref prefix="transfer."/>[m
[32m+[m[32m                <mapper from="transfer.*" to="*" type="glob"/>[m
[32m+[m[32m            </propertyset>[m
[32m+[m[32m        </ant>[m
[32m+[m[32m    </target>[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Ciclos/nbproject/genfiles.properties b/Ciclo2/Ciclos/nbproject/genfiles.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..0b86ec6[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Ciclos/nbproject/genfiles.properties[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32mbuild.xml.data.CRC32=64caf4b8[m
[32m+[m[32mbuild.xml.script.CRC32=6049d26f[m
[32m+[m[32mbuild.xml.stylesheet.CRC32=8064a381@1.80.1.48[m
[32m+[m[32m# This file is used by a NetBeans-based IDE to track changes in generated files such as build-impl.xml.[m
[32m+[m[32m# Do not edit this file. You may delete it but then the IDE will never regenerate such files for you.[m
[32m+[m[32mnbproject/build-impl.xml.data.CRC32=64caf4b8[m
[32m+[m[32mnbproject/build-impl.xml.script.CRC32=97a46336[m
[32m+[m[32mnbproject/build-impl.xml.stylesheet.CRC32=830a3534@1.80.1.48[m
[1mdiff --git a/Ciclo2/Ciclos/nbproject/project.properties b/Ciclo2/Ciclos/nbproject/project.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..0a66865[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Ciclos/nbproject/project.properties[m
[36m@@ -0,0 +1,74 @@[m
[32m+[m[32mannotation.processing.enabled=true[m
[32m+[m[32mannotation.processing.enabled.in.editor=false[m
[32m+[m[32mannotation.processing.processor.options=[m
[32m+[m[32mannotation.processing.processors.list=[m
[32m+[m[32mannotation.processing.run.all.processors=true[m
[32m+[m[32mannotation.processing.source.output=${build.generated.sources.dir}/ap-source-output[m
[32m+[m[32mbuild.classes.dir=${build.dir}/classes[m
[32m+[m[32mbuild.classes.excludes=**/*.java,**/*.form[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mbuild.dir=build[m
[32m+[m[32mbuild.generated.dir=${build.dir}/generated[m
[32m+[m[32mbuild.generated.sources.dir=${build.dir}/generated-sources[m
[32m+[m[32m# Only compile against the classpath explicitly listed here:[m
[32m+[m[32mbuild.sysclasspath=ignore[m
[32m+[m[32mbuild.test.classes.dir=${build.dir}/test/classes[m
[32m+[m[32mbuild.test.results.dir=${build.dir}/test/results[m
[32m+[m[32m# Uncomment to specify the preferred debugger connection transport:[m
[32m+[m[32m#debug.transport=dt_socket[m
[32m+[m[32mdebug.classpath=\[m
[32m+[m[32m    ${run.classpath}[m
[32m+[m[32mdebug.test.classpath=\[m
[32m+[m[32m    ${run.test.classpath}[m
[32m+[m[32m# Files in build.classes.dir which should be excluded from distribution jar[m
[32m+[m[32mdist.archive.excludes=[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mdist.dir=dist[m
[32m+[m[32mdist.jar=${dist.dir}/Ciclos.jar[m
[32m+[m[32mdist.javadoc.dir=${dist.dir}/javadoc[m
[32m+[m[32mexcludes=[m
[32m+[m[32mincludes=**[m
[32m+[m[32mjar.compress=false[m
[32m+[m[32mjavac.classpath=[m
[32m+[m[32m# Space-separated list of extra javac options[m
[32m+[m[32mjavac.compilerargs=[m
[32m+[m[32mjavac.deprecation=false[m
[32m+[m[32mjavac.external.vm=true[m
[32m+[m[32mjavac.processorpath=\[m
[32m+[m[32m    ${javac.classpath}[m
[32m+[m[32mjavac.source=1.8[m
[32m+[m[32mjavac.target=1.8[m
[32m+[m[32mjavac.test.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32mjavac.test.processorpath=\[m
[32m+[m[32m    ${javac.test.classpath}[m
[32m+[m[32mjavadoc.additionalparam=[m
[32m+[m[32mjavadoc.author=false[m
[32m+[m[32mjavadoc.encoding=${source.encoding}[m
[32m+[m[32mjavadoc.noindex=false[m
[32m+[m[32mjavadoc.nonavbar=false[m
[32m+[m[32mjavadoc.notree=false[m
[32m+[m[32mjavadoc.private=false[m
[32m+[m[32mjavadoc.splitindex=true[m
[32m+[m[32mjavadoc.use=true[m
[32m+[m[32mjavadoc.version=false[m
[32m+[m[32mjavadoc.windowtitle=[m
[32m+[m[32mmain.class=[m
[32m+[m[32mmanifest.file=manifest.mf[m
[32m+[m[32mmeta.inf.dir=${src.dir}/META-INF[m
[32m+[m[32mmkdist.disabled=false[m
[32m+[m[32mplatform.active=default_platform[m
[32m+[m[32mrun.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32m# Space-separated list of JVM arguments used when running the project.[m
[32m+[m[32m# You may also define separate properties like run-sys-prop.name=value instead of -Dname=value.[m
[32m+[m[32m# To set system properties for unit tests define test-sys-prop.name=value:[m
[32m+[m[32mrun.jvmargs=[m
[32m+[m[32mrun.test.classpath=\[m
[32m+[m[32m    ${javac.test.classpath}:\[m
[32m+[m[32m    ${build.test.classes.dir}[m
[32m+[m[32msource.encoding=UTF-8[m
[32m+[m[32msrc.dir=src[m
[32m+[m[32mtest.src.dir=test[m
[1mdiff --git a/Ciclo2/Ciclos/nbproject/project.xml b/Ciclo2/Ciclos/nbproject/project.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..5a09465[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Ciclos/nbproject/project.xml[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project xmlns="http://www.netbeans.org/ns/project/1">[m
[32m+[m[32m    <type>org.netbeans.modules.java.j2seproject</type>[m
[32m+[m[32m    <configuration>[m
[32m+[m[32m        <data xmlns="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <name>Ciclos</name>[m
[32m+[m[32m            <source-roots>[m
[32m+[m[32m                <root id="src.dir"/>[m
[32m+[m[32m            </source-roots>[m
[32m+[m[32m            <test-roots>[m
[32m+[m[32m                <root id="test.src.dir"/>[m
[32m+[m[32m            </test-roots>[m
[32m+[m[32m        </data>[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Ciclos/src/Ciclos/TablasMultiplicar.java b/Ciclo2/Ciclos/src/Ciclos/TablasMultiplicar.java[m
[1mnew file mode 100644[m
[1mindex 0000000..b19623b[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Ciclos/src/Ciclos/TablasMultiplicar.java[m
[36m@@ -0,0 +1,23 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m[32mpackage Ciclos;[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32mpublic class TablasMultiplicar {[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        for (int i = 1; i <= 9; i++) {[m
[32m+[m[32m            for (int j = 1; j <= 10; j++){[m
[32m+[m[32m                System.out.println(i + " x " + j + " = " + (i * j));[m[41m                [m
[32m+[m[32m            }[m
[32m+[m[32m            System.out.println(" ");[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m}[m
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/build.xml" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/build.xml"[m
[1mnew file mode 100644[m
[1mindex 0000000..1c2f0d7[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/build.xml"[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!-- You may freely edit this file. See commented blocks below for -->[m
[32m+[m[32m<!-- some examples of how to customize the build. -->[m
[32m+[m[32m<!-- (If you delete it and reopen the project it will be recreated.) -->[m
[32m+[m[32m<!-- By default, only the Clean and Build commands use this build script. -->[m
[32m+[m[32m<!-- Commands such as Run, Debug, and Test only use this build script if -->[m
[32m+[m[32m<!-- the Compile on Save feature is turned off for the project. -->[m
[32m+[m[32m<!-- You can turn off the Compile on Save (or Deploy on Save) setting -->[m
[32m+[m[32m<!-- in the project's Project Properties dialog box.-->[m
[32m+[m[32m<project name="Contraseña" default="default" basedir=".">[m
[32m+[m[32m    <description>Builds, tests, and runs the project Contraseña.</description>[m
[32m+[m[32m    <import file="nbproject/build-impl.xml"/>[m
[32m+[m[32m    <!--[m
[32m+[m
[32m+[m[32m    There exist several targets which are by default empty and which can be[m[41m [m
[32m+[m[32m    used for execution of your tasks. These targets are usually executed[m[41m [m
[32m+[m[32m    before and after some main targets. They are:[m[41m [m
[32m+[m
[32m+[m[32m      -pre-init:                 called before initialization of project properties[m
[32m+[m[32m      -post-init:                called after initialization of project properties[m
[32m+[m[32m      -pre-compile:              called before javac compilation[m
[32m+[m[32m      -post-compile:             called after javac compilation[m
[32m+[m[32m      -pre-compile-single:       called before javac compilation of single file[m
[32m+[m[32m      -post-compile-single:      called after javac compilation of single file[m
[32m+[m[32m      -pre-compile-test:         called before javac compilation of JUnit tests[m
[32m+[m[32m      -post-compile-test:        called after javac compilation of JUnit tests[m
[32m+[m[32m      -pre-compile-test-single:  called before javac compilation of single JUnit test[m
[32m+[m[32m      -post-compile-test-single: called after javac compilation of single JUunit test[m
[32m+[m[32m      -pre-jar:                  called before JAR building[m
[32m+[m[32m      -post-jar:                 called after JAR building[m
[32m+[m[32m      -post-clean:               called after cleaning build products[m
[32m+[m
[32m+[m[32m    (Targets beginning with '-' are not intended to be called on their own.)[m
[32m+[m
[32m+[m[32m    Example of inserting an obfuscator after compilation could look like this:[m
[32m+[m
[32m+[m[32m        <target name="-post-compile">[m
[32m+[m[32m            <obfuscate>[m
[32m+[m[32m                <fileset dir="${build.classes.dir}"/>[m
[32m+[m[32m            </obfuscate>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    For list of available properties check the imported[m[41m [m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m
[32m+[m[32m    Another way to customize the build is by overriding existing main targets.[m
[32m+[m[32m    The targets of interest are:[m[41m [m
[32m+[m
[32m+[m[32m      -init-macrodef-javac:     defines macro for javac compilation[m
[32m+[m[32m      -init-macrodef-junit:     defines macro for junit execution[m
[32m+[m[32m      -init-macrodef-debug:     defines macro for class debugging[m
[32m+[m[32m      -init-macrodef-java:      defines macro for class execution[m
[32m+[m[32m      -do-jar:                  JAR building[m
[32m+[m[32m      run:                      execution of project[m[41m [m
[32m+[m[32m      -javadoc-build:           Javadoc generation[m
[32m+[m[32m      test-report:              JUnit report generation[m
[32m+[m
[32m+[m[32m    An example of overriding the target for project execution could look like this:[m
[32m+[m
[32m+[m[32m        <target name="run" depends="Contraseña-impl.jar">[m
[32m+[m[32m            <exec dir="bin" executable="launcher.exe">[m
[32m+[m[32m                <arg file="${dist.jar}"/>[m
[32m+[m[32m            </exec>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    Notice that the overridden target depends on the jar target and not only on[m[41m [m
[32m+[m[32m    the compile target as the regular run target does. Again, for a list of available[m[41m [m
[32m+[m[32m    properties which you can use, check the target you are overriding in the[m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m[32m    -->[m
[32m+[m[32m</project>[m
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/build/classes/.netbeans_automatic_build" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/build/classes/.netbeans_automatic_build"[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/build/classes/.netbeans_update_resources" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/build/classes/.netbeans_update_resources"[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/build/classes/contrase\303\261a/Contrase\303\261a.class" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/build/classes/contrase\303\261a/Contrase\303\261a.class"[m
[1mnew file mode 100644[m
[1mindex 0000000..6705121[m
Binary files /dev/null and "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/build/classes/contrase\303\261a/Contrase\303\261a.class" differ
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/build/classes/contrase\303\261a/Main.class" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/build/classes/contrase\303\261a/Main.class"[m
[1mnew file mode 100644[m
[1mindex 0000000..a34ac3c[m
Binary files /dev/null and "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/build/classes/contrase\303\261a/Main.class" differ
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/manifest.mf" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/manifest.mf"[m
[1mnew file mode 100644[m
[1mindex 0000000..328e8e5[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/manifest.mf"[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mManifest-Version: 1.0[m
[32m+[m[32mX-COMMENT: Main-Class will be added automatically by build[m
[32m+[m
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/build-impl.xml" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/build-impl.xml"[m
[1mnew file mode 100644[m
[1mindex 0000000..9a411a0[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/build-impl.xml"[m
[36m@@ -0,0 +1,1420 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!--[m
[32m+[m[32m*** GENERATED FROM project.xml - DO NOT EDIT  ***[m
[32m+[m[32m***         EDIT ../build.xml INSTEAD         ***[m
[32m+[m
[32m+[m[32mFor the purpose of easier reading the script[m
[32m+[m[32mis divided into following sections:[m
[32m+[m
[32m+[m[32m  - initialization[m
[32m+[m[32m  - compilation[m
[32m+[m[32m  - jar[m
[32m+[m[32m  - execution[m
[32m+[m[32m  - debugging[m
[32m+[m[32m  - javadoc[m
[32m+[m[32m  - test compilation[m
[32m+[m[32m  - test execution[m
[32m+[m[32m  - test debugging[m
[32m+[m[32m  - applet[m
[32m+[m[32m  - cleanup[m
[32m+[m
[32m+[m[32m        -->[m
[32m+[m[32m<project xmlns:j2seproject1="http://www.netbeans.org/ns/j2se-project/1" xmlns:j2seproject3="http://www.netbeans.org/ns/j2se-project/3" xmlns:jaxrpc="http://www.netbeans.org/ns/j2se-project/jax-rpc" basedir=".." default="default" name="Contraseña-impl">[m
[32m+[m[32m    <fail message="Please build using Ant 1.8.0 or higher.">[m
[32m+[m[32m        <condition>[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <antversion atleast="1.8.0"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </fail>[m
[32m+[m[32m    <target depends="test,jar,javadoc" description="Build and test whole project." name="default"/>[m
[32m+[m[32m    <!--[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m                INITIALIZATION SECTION[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init" name="-init-private">[m
[32m+[m[32m        <property file="nbproject/private/config.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/private.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private" name="-init-user">[m
[32m+[m[32m        <property file="${user.properties.file}"/>[m
[32m+[m[32m        <!-- The two properties below are usually overridden -->[m
[32m+[m[32m        <!-- by the active platform. Just a fallback. -->[m
[32m+[m[32m        <property name="default.javac.source" value="1.6"/>[m
[32m+[m[32m        <property name="default.javac.target" value="1.6"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user" name="-init-project">[m
[32m+[m[32m        <property file="nbproject/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/project.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-init-macrodef-property" name="-do-init">[m
[32m+[m[32m        <property name="platform.java" value="${java.home}/bin/java"/>[m
[32m+[m[32m        <available file="${manifest.file}" property="manifest.available"/>[m
[32m+[m[32m        <condition property="splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${application.splash}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${application.splash}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${main.class}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javac.profile"/>[m
[32m+[m[32m                <length length="0" string="${javac.profile}" when="greater"/>[m
[32m+[m[32m                <matches pattern="((1\.[89])|9)(\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${jar.archive.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <istrue value="${not.archive.disabled}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.mkdist">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="do.archive"/>[m
[32m+[m[32m                <isset property="libs.CopyLibs.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${mkdist.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+manifest.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="manifest.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="splashscreen.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="profile.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.tests">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${test.src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.sources">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="netbeans.home+have.tests">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="netbeans.home"/>[m
[32m+[m[32m                <isset property="have.tests"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="no.javadoc.preview">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.preview"/>[m
[32m+[m[32m                <isfalse value="${javadoc.preview}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="run.jvmargs" value=""/>[m
[32m+[m[32m        <property name="run.jvmargs.ide" value=""/>[m
[32m+[m[32m        <property name="javac.compilerargs" value=""/>[m
[32m+[m[32m        <property name="work.dir" value="${basedir}"/>[m
[32m+[m[32m        <condition property="no.deps">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${no.dependencies}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javac.debug" value="true"/>[m
[32m+[m[32m        <property name="javadoc.preview" value="true"/>[m
[32m+[m[32m        <property name="application.args" value=""/>[m
[32m+[m[32m        <property name="source.encoding" value="${file.encoding}"/>[m
[32m+[m[32m        <property name="runtime.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="manifest.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <condition property="javadoc.encoding.used" value="${javadoc.encoding}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.encoding"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${javadoc.encoding}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javadoc.encoding.used" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="includes" value="**"/>[m
[32m+[m[32m        <property name="excludes" value=""/>[m
[32m+[m[32m        <property name="do.depend" value="false"/>[m
[32m+[m[32m        <condition property="do.depend.true">[m
[32m+[m[32m            <istrue value="${do.depend}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <path id="endorsed.classpath.path" path="${endorsed.classpath}"/>[m
[32m+[m[32m        <condition else="" property="endorsed.classpath.cmd.line.arg" value="-Xbootclasspath/p:'${toString:endorsed.classpath.path}'">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="javac.profile.cmd.line.arg" value="-profile ${javac.profile}">[m
[32m+[m[32m            <isset property="profile.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="jdkBug6558476">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <matches pattern="1\.[56]" string="${java.specification.version}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <os family="unix"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="javac.fork">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <istrue value="${jdkBug6558476}"/>[m
[32m+[m[32m                <istrue value="${javac.external.vm}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="jar.index" value="false"/>[m
[32m+[m[32m        <property name="jar.index.metainf" value="${jar.index}"/>[m
[32m+[m[32m        <property name="copylibs.rebase" value="true"/>[m
[32m+[m[32m        <available file="${meta.inf.dir}/persistence.xml" property="has.persistence.xml"/>[m
[32m+[m[32m        <condition property="junit.available">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available classname="org.junit.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m                <available classname="junit.framework.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="testng.available">[m
[32m+[m[32m            <available classname="org.testng.annotations.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="junit+testng.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <istrue value="${testng.available}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="testng" property="testng.mode" value="mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="testng.debug.mode" value="-mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="java.failonerror" value="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init" name="-init-check">[m
[32m+[m[32m        <fail unless="src.dir">Must set src.dir</fail>[m
[32m+[m[32m        <fail unless="test.src.dir">Must set test.src.dir</fail>[m
[32m+[m[32m        <fail unless="build.dir">Must set build.dir</fail>[m
[32m+[m[32m        <fail unless="dist.dir">Must set dist.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.dir">Must set build.classes.dir</fail>[m
[32m+[m[32m        <fail unless="dist.javadoc.dir">Must set dist.javadoc.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.classes.dir">Must set build.test.classes.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.results.dir">Must set build.test.results.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.excludes">Must set build.classes.excludes</fail>[m
[32m+[m[32m        <fail unless="dist.jar">Must set dist.jar</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-property">[m
[32m+[m[32m        <macrodef name="property" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-macrodef-javac-with-processors">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <mkdir dir="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <compilerarg value="-processorpath"/>[m
[32m+[m[32m                    <compilerarg path="@{processorpath}:${empty.dir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.processors.internal}"/>[m
[32m+[m[32m                    <compilerarg line="${annotation.processing.processor.options}"/>[m
[32m+[m[32m                    <compilerarg value="-s"/>[m
[32m+[m[32m                    <compilerarg path="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.proc.none.internal}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" name="-init-macrodef-javac-without-processors" unless="ap.supported.internal">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-javac-with-processors,-init-macrodef-javac-without-processors" name="-init-macrodef-javac">[m
[32m+[m[32m        <macrodef name="depend" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <depend cache="${build.dir}/depcache" destdir="@{destdir}" excludes="${excludes}" includes="${includes}" srcdir="@{srcdir}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </depend>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="force-recompile" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <fail unless="javac.includes">Must set javac.includes</fail>[m
[32m+[m[32m                <pathconvert pathsep="${line.separator}" property="javac.includes.binary">[m
[32m+[m[32m                    <path>[m
[32m+[m[32m                        <filelist dir="@{destdir}" files="${javac.includes}"/>[m
[32m+[m[32m                    </path>[m
[32m+[m[32m                    <globmapper from="*.java" to="*.class"/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <tempfile deleteonexit="true" property="javac.includesfile.binary"/>[m
[32m+[m[32m                <echo file="${javac.includesfile.binary}" message="${javac.includes.binary}"/>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <files includesfile="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <fileset file="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-init">[m
[32m+[m[32m        <condition else="false" property="nb.junit.batch" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="nb.junit.single" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <isset property="test.method"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-test-properties">[m
[32m+[m[32m        <property name="test.binaryincludes" value="&lt;nothing&gt;"/>[m
[32m+[m[32m        <property name="test.binarytestincludes" value=""/>[m
[32m+[m[32m        <property name="test.binaryexcludes" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${nb.junit.single}" name="-init-macrodef-junit-single" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-batch" unless="${nb.junit.single}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-init,-init-macrodef-junit-single, -init-macrodef-junit-batch" if="${junit.available}" name="-init-macrodef-junit"/>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng">[m
[32m+[m[32m        <macrodef name="testng" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="" property="testng.methods.arg" value="@{testincludes}.@{testmethods}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <union id="test.set">[m
[32m+[m[32m                    <fileset dir="${test.src.dir}" excludes="@{excludes},**/*.xml,${excludes}" includes="@{includes}">[m
[32m+[m[32m                        <filename name="@{testincludes}"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </union>[m
[32m+[m[32m                <taskdef classname="org.testng.TestNGAntTask" classpath="${run.test.classpath}" name="testng"/>[m
[32m+[m[32m                <testng classfilesetref="test.set" failureProperty="tests.failed" listeners="org.testng.reporters.VerboseReporter" methods="${testng.methods.arg}" mode="${testng.mode}" outputdir="${build.test.results.dir}" suitename="Contraseña" testname="TestNG tests" workingDir="${work.dir}">[m
[32m+[m[32m                    <xmlfileset dir="${build.test.classes.dir}" includes="@{testincludes}"/>[m
[32m+[m[32m                    <propertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </propertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-test-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <echo>No tests executed.</echo>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit" if="${junit.available}" name="-init-macrodef-junit-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng" if="${testng.available}" name="-init-macrodef-testng-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-impl,-init-macrodef-junit-impl,-init-macrodef-testng-impl" name="-init-macrodef-test">[m
[32m+[m[32m        <macrodef name="test" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-debug" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-debug-batch">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug,-init-macrodef-junit-debug-batch" if="${junit.available}" name="-init-macrodef-junit-debug-impl">[m
[32m+[m[32m        <macrodef name="test-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit-debug excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng-debug">[m
[32m+[m[32m        <macrodef name="testng-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="-testclass @{testClass}" property="test.class.or.method" value="-methods @{testClass}.@{testMethod}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <condition else="-suitename Contraseña -testname @{testClass} ${test.class.or.method}" property="testng.cmd.args" value="@{testClass}">[m
[32m+[m[32m                    <matches pattern=".*\.xml" string="@{testClass}"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <delete dir="${build.test.results.dir}" quiet="true"/>[m
[32m+[m[32m                <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m                <j2seproject3:debug classname="org.testng.TestNG" classpath="${debug.test.classpath}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <customize2/>[m
[32m+[m[32m                        <jvmarg value="-ea"/>[m
[32m+[m[32m                        <arg line="${testng.debug.mode}"/>[m
[32m+[m[32m                        <arg line="-d ${build.test.results.dir}"/>[m
[32m+[m[32m                        <arg line="-listener org.testng.reporters.VerboseReporter"/>[m
[32m+[m[32m                        <arg line="${testng.cmd.args}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug" if="${testng.available}" name="-init-macrodef-testng-debug-impl">[m
[32m+[m[32m        <macrodef name="testng-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element implicit="true" name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2/>[m
[32m+[m[32m                </j2seproject3:testng-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug-impl" if="${junit.available}" name="-init-macrodef-test-debug-junit">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-debug-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug-impl" if="${testng.available}" name="-init-macrodef-test-debug-testng">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug-impl testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2>[m
[32m+[m[32m                        <syspropertyset>[m
[32m+[m[32m                            <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                            <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                        </syspropertyset>[m
[32m+[m[32m                    </customize2>[m
[32m+[m[32m                </j2seproject3:testng-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-debug-junit,-init-macrodef-test-debug-testng" name="-init-macrodef-test-debug"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiling section; consider it deprecated[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile, -profile-init-check" if="profiler.info.jvmargs.agent" name="profile-init"/>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-init-macrodef-profile">[m
[32m+[m[32m        <macrodef name="resolve">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${env.@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="profile">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property environment="env"/>[m
[32m+[m[32m                <resolve name="profiler.current.path" value="${profiler.info.pathvar}"/>[m
[32m+[m[32m                <java classname="@{classname}" dir="${profiler.info.dir}" failonerror="${java.failonerror}" fork="true" jvm="${profiler.info.jvm}">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m                    <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m                    <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m                    <arg line="${application.args}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="${run.classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile" if="profiler.info.jvmargs.agent" name="-profile-init-check">[m
[32m+[m[32m        <fail unless="profiler.info.jvm">Must set JVM to use for profiling in profiler.info.jvm</fail>[m
[32m+[m[32m        <fail unless="profiler.info.jvmargs.agent">Must set profiler agent JVM arguments in profiler.info.jvmargs.agent</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB7.2 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-nbjpda">[m
[32m+[m[32m        <macrodef name="nbjpdastart" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="name"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="" name="stopclassname"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdastart addressproperty="jpda.address" name="@{name}" stopclassname="@{stopclassname}" transport="${debug-transport}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </nbjpdastart>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="nbjpdareload" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="dir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdareload>[m
[32m+[m[32m                    <fileset dir="@{dir}" includes="${fix.classes}">[m
[32m+[m[32m                        <include name="${fix.includes}*.class"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </nbjpdareload>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-debug-args">[m
[32m+[m[32m        <property name="version-output" value="java version &quot;${ant.java.version}"/>[m
[32m+[m[32m        <condition property="have-jdk-older-than-1.4">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.0"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.1"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.2"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.3"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="-Xdebug" property="debug-args-line" value="-Xdebug -Xnoagent -Djava.compiler=none">[m
[32m+[m[32m            <istrue value="${have-jdk-older-than-1.4}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="dt_socket" property="debug-transport-by-os" value="dt_shmem">[m
[32m+[m[32m            <os family="windows"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="${debug-transport-by-os}" property="debug-transport" value="${debug.transport}">[m
[32m+[m[32m            <isset property="debug.transport"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-debug">[m
[32m+[m[32m        <macrodef name="debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-java">[m
[32m+[m[32m        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${run.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="jvm" name="jvm"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-copylibs">[m
[32m+[m[32m        <macrodef name="copylibs" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${manifest.file}" name="manifest"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m                <pathconvert property="run.classpath.without.build.classes.dir">[m
[32m+[m[32m                    <path path="${run.classpath}"/>[m
[32m+[m[32m                    <map from="${build.classes.dir.resolved}" to=""/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <pathconvert pathsep=" " property="jar.classpath">[m
[32m+[m[32m                    <path path="${run.classpath.without.build.classes.dir}"/>[m
[32m+[m[32m                    <chainedmapper>[m
[32m+[m[32m                        <flattenmapper/>[m
[32m+[m[32m                        <filtermapper>[m
[32m+[m[32m                            <replacestring from=" " to="%20"/>[m
[32m+[m[32m                        </filtermapper>[m
[32m+[m[32m                        <globmapper from="*" to="lib/*"/>[m
[32m+[m[32m                    </chainedmapper>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <taskdef classname="org.netbeans.modules.java.j2seproject.copylibstask.CopyLibs" classpath="${libs.CopyLibs.classpath}" name="copylibs"/>[m
[32m+[m[32m                <copylibs compress="${jar.compress}" excludeFromCopy="${copylibs.excludes}" index="${jar.index}" indexMetaInf="${jar.index.metainf}" jarfile="${dist.jar}" manifest="@{manifest}" manifestencoding="UTF-8" rebase="${copylibs.rebase}" runtimeclasspath="${run.classpath.without.build.classes.dir}">[m
[32m+[m[32m                    <fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m                    <manifest>[m
[32m+[m[32m                        <attribute name="Class-Path" value="${jar.classpath}"/>[m
[32m+[m[32m                        <customize/>[m
[32m+[m[32m                    </manifest>[m
[32m+[m[32m                </copylibs>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-presetdef-jar">[m
[32m+[m[32m        <presetdef name="jar" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <jar compress="${jar.compress}" index="${jar.index}" jarfile="${dist.jar}" manifestencoding="UTF-8">[m
[32m+[m[32m                <j2seproject1:fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m            </jar>[m
[32m+[m[32m        </presetdef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-ap-cmdline-properties">[m
[32m+[m[32m        <property name="annotation.processing.enabled" value="true"/>[m
[32m+[m[32m        <property name="annotation.processing.processors.list" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.processor.options" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.run.all.processors" value="true"/>[m
[32m+[m[32m        <property name="javac.processorpath" value="${javac.classpath}"/>[m
[32m+[m[32m        <property name="javac.test.processorpath" value="${javac.test.classpath}"/>[m
[32m+[m[32m        <condition property="ap.supported.internal" value="true">[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <matches pattern="1\.[0-5](\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-ap-cmdline-supported">[m
[32m+[m[32m        <condition else="" property="ap.processors.internal" value="-processor ${annotation.processing.processors.list}">[m
[32m+[m[32m            <isfalse value="${annotation.processing.run.all.processors}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="ap.proc.none.internal" value="-proc:none">[m
[32m+[m[32m            <isfalse value="${annotation.processing.enabled}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties,-init-ap-cmdline-supported" name="-init-ap-cmdline">[m
[32m+[m[32m        <property name="ap.cmd.line.internal" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init,-post-init,-init-check,-init-macrodef-property,-init-macrodef-javac,-init-macrodef-test,-init-macrodef-test-debug,-init-macrodef-nbjpda,-init-macrodef-debug,-init-macrodef-java,-init-presetdef-jar,-init-ap-cmdline" name="init"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===================[m
[32m+[m[32m                COMPILATION SECTION[m
[32m+[m[32m                ===================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-jar-init" unless="built-jar.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-jar.properties" name="built-jar.properties"/>[m
[32m+[m[32m        <delete file="${built-jar.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.jar.${basedir}" name="-warn-already-built-jar">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: Contraseña was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-jar-init" name="deps-jar" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-jar.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-jar.properties}" prefix="already.built.jar."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-jar"/>[m
[32m+[m[32m        <propertyfile file="${built-jar.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-check-automatic-build,-clean-after-automatic-build" name="-verify-automatic-build"/>[m
[32m+[m[32m    <target depends="init" name="-check-automatic-build">[m
[32m+[m[32m        <available file="${build.classes.dir}/.netbeans_automatic_build" property="netbeans.automatic.build"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.automatic.build" name="-clean-after-automatic-build">[m
[32m+[m[32m        <antcall target="clean"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar" name="-pre-pre-compile">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-depend">[m
[32m+[m[32m        <pathconvert property="build.generated.subdirs">[m
[32m+[m[32m            <dirset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="*"/>[m
[32m+[m[32m            </dirset>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <j2seproject3:depend srcdir="${src.dir}:${build.generated.subdirs}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile,-pre-compile, -copy-persistence-xml,-compile-depend" if="have.sources" name="-do-compile">[m
[32m+[m[32m        <j2seproject3:javac gensrcdir="${build.generated.sources.dir}"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="has.persistence.xml" name="-copy-persistence-xml">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}/META-INF">[m
[32m+[m[32m            <fileset dir="${meta.inf.dir}" includes="persistence.xml orm.xml"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile,-do-compile,-post-compile" description="Compile project." name="compile"/>[m
[32m+[m[32m    <target name="-pre-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile" name="-do-compile-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile/>[m
[32m+[m[32m        <j2seproject3:javac excludes="" gensrcdir="${build.generated.sources.dir}" includes="${javac.includes}" sourcepath="${src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile-single,-do-compile-single,-post-compile-single" name="compile-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ====================[m
[32m+[m[32m                JAR BUILDING SECTION[m
[32m+[m[32m                ====================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" name="-pre-pre-jar">[m
[32m+[m[32m        <dirname file="${dist.jar}" property="dist.jar.dir"/>[m
[32m+[m[32m        <mkdir dir="${dist.jar.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive" name="-do-jar-create-manifest" unless="manifest.available">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <touch file="${tmp.manifest.file}" verbose="false"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive+manifest.available" name="-do-jar-copy-manifest">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <copy encoding="${manifest.encoding}" file="${manifest.file}" outputencoding="UTF-8" tofile="${tmp.manifest.file}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+main.class.available" name="-do-jar-set-mainclass">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Main-Class" value="${main.class}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+profile.available" name="-do-jar-set-profile">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Profile" value="${javac.profile}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+splashscreen.available" name="-do-jar-set-splashscreen">[m
[32m+[m[32m        <basename file="${application.splash}" property="splashscreen.basename"/>[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy failonerror="false" file="${application.splash}" todir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="SplashScreen-Image" value="META-INF/${splashscreen.basename}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-init-macrodef-copylibs,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.mkdist" name="-do-jar-copylibs">[m
[32m+[m[32m        <j2seproject3:copylibs manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <echo level="info">To run this application from the command line without Ant, try:</echo>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <echo level="info">java -jar "${dist.jar.resolved}"</echo>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.archive" name="-do-jar-jar" unless="do.mkdist">[m
[32m+[m[32m        <j2seproject1:jar manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <pathconvert property="run.classpath.with.dist.jar">[m
[32m+[m[32m            <path path="${run.classpath}"/>[m
[32m+[m[32m            <map from="${build.classes.dir.resolved}" to="${dist.jar.resolved}"/>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <condition else="" property="jar.usage.message" value="To run this application from the command line without Ant, try:${line.separator}${platform.java} -cp ${run.classpath.with.dist.jar} ${main.class}">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="debug" property="jar.usage.level" value="info">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <echo level="${jar.usage.level}" message="${jar.usage.message}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-do-jar-copylibs" if="do.archive" name="-do-jar-delete-manifest">[m
[32m+[m[32m        <delete>[m
[32m+[m[32m            <fileset file="${tmp.manifest.file}"/>[m
[32m+[m[32m        </delete>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-jar,-do-jar-delete-manifest" name="-do-jar-without-libraries"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-copylibs,-do-jar-delete-manifest" name="-do-jar-with-libraries"/>[m
[32m+[m[32m    <target name="-post-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar-without-libraries,-do-jar-with-libraries,-post-jar" name="-do-jar"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar,-post-jar" description="Build JAR." name="jar"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                EXECUTION SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" description="Run a main class." name="run">[m
[32m+[m[32m        <j2seproject1:java>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-do-not-recompile">[m
[32m+[m[32m        <property name="javac.includes.binary" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single" name="run-single">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single" name="run-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}" classpath="${run.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                DEBUGGING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger">[m
[32m+[m[32m        <j2seproject1:nbjpdastart name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-main-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile" name="-debug-start-debuggee">[m
[32m+[m[32m        <j2seproject3:debug>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger,-debug-start-debuggee" description="Debug project in IDE." if="netbeans.home" name="debug"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-stepinto">[m
[32m+[m[32m        <j2seproject1:nbjpdastart stopclassname="${main.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger-stepinto,-debug-start-debuggee" if="netbeans.home" name="debug-stepinto"/>[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-single">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-single" if="netbeans.home" name="debug-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single" if="netbeans.home" name="-debug-start-debuggee-main-test">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}" classpath="${debug.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-main-test,-debug-start-debuggee-main-test" if="netbeans.home" name="debug-test-with-main"/>[m
[32m+[m[32m    <target depends="init" name="-pre-debug-fix">[m
[32m+[m[32m        <fail unless="fix.includes">Must set fix.includes</fail>[m
[32m+[m[32m        <property name="javac.includes" value="${fix.includes}.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-single" if="netbeans.home" name="-do-debug-fix">[m
[32m+[m[32m        <j2seproject1:nbjpdareload/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix" if="netbeans.home" name="debug-fix"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                PROFILING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiler integration[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="profile-init,compile" description="Profile a project in the IDE." if="profiler.info.jvmargs.agent" name="-profile-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" description="Profile a selected class in the IDE." if="profiler.info.jvmargs.agent" name="-profile-single-pre72">[m
[32m+[m[32m        <fail unless="profile.class">Must select one file in the IDE or set profile.class</fail>[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="${profile.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" if="profiler.info.jvmargs.agent" name="-profile-applet-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </profile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-test-single" if="profiler.info.jvmargs.agent" name="-profile-test-single-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <junit dir="${profiler.info.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" jvm="${profiler.info.jvm}" showoutput="true">[m
[32m+[m[32m            <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m            <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m            <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m            <test name="${profile.class}"/>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <syspropertyset>[m
[32m+[m[32m                <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m            </syspropertyset>[m
[32m+[m[32m            <formatter type="brief" usefile="false"/>[m
[32m+[m[32m            <formatter type="xml"/>[m
[32m+[m[32m        </junit>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB72 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target if="netbeans.home" name="-profile-check">[m
[32m+[m[32m        <condition property="profiler.configured">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-agentpath:"/>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-javaagent:"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-pre72" description="Profile a project in the IDE." if="profiler.configured" name="profile" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-single-pre72" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-single" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-test-single-pre72" description="Profile a selected test in the IDE." name="profile-test-single"/>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected test in the IDE." if="profiler.configured" name="profile-test" unless="profiler.info.jvmargs">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="test-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-test-with-main"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-applet-pre72" if="profiler.configured" name="profile-applet" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-applet"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                JAVADOC SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.sources" name="-javadoc-build">[m
[32m+[m[32m        <mkdir dir="${dist.javadoc.dir}"/>[m
[32m+[m[32m        <condition else="" property="javadoc.endorsed.classpath.cmd.line.arg" value="-J${endorsed.classpath.cmd.line.arg}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath.cmd.line.arg"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath.cmd.line.arg}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="bug5101868workaround" value="*.java">[m
[32m+[m[32m            <matches pattern="1\.[56](\..*)?" string="${java.version}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <javadoc additionalparam="-J-Dfile.encoding=${file.encoding} ${javadoc.additionalparam}" author="${javadoc.author}" charset="UTF-8" destdir="${dist.javadoc.dir}" docencoding="UTF-8" encoding="${javadoc.encoding.used}" failonerror="true" noindex="${javadoc.noindex}" nonavbar="${javadoc.nonavbar}" notree="${javadoc.notree}" private="${javadoc.private}" source="${javac.source}" splitindex="${javadoc.splitindex}" use="${javadoc.use}" useexternalfile="true" version="${javadoc.version}" windowtitle="${javadoc.windowtitle}">[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${javac.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${bug5101868workaround},${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/*.java"/>[m
[32m+[m[32m                <exclude name="*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <arg line="${javadoc.endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m        </javadoc>[m
[32m+[m[32m        <copy todir="${dist.javadoc.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build" if="netbeans.home" name="-javadoc-browse" unless="no.javadoc.preview">[m
[32m+[m[32m        <nbbrowse file="${dist.javadoc.dir}/index.html"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build,-javadoc-browse" description="Build Javadoc." name="javadoc"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                TEST COMPILATION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" if="have.tests" name="-pre-pre-compile-test">[m
[32m+[m[32m        <mkdir dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-test-depend">[m
[32m+[m[32m        <j2seproject3:depend classpath="${javac.test.classpath}" destdir="${build.test.classes.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test,-compile-test-depend" if="have.tests" name="-do-compile-test">[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" processorpath="${javac.test.processorpath}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test,-do-compile-test,-post-compile-test" name="compile-test"/>[m
[32m+[m[32m    <target name="-pre-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test-single" if="have.tests" name="-do-compile-test-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile destdir="${build.test.classes.dir}"/>[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" excludes="" includes="${javac.includes}" processorpath="${javac.test.processorpath}" sourcepath="${test.src.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test-single,-do-compile-test-single,-post-compile-test-single" name="compile-test-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST EXECUTION SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run" if="have.tests" name="-do-test-run">[m
[32m+[m[32m        <j2seproject3:test includes="${includes}" testincludes="**/*Test.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run" if="have.tests" name="-post-test-run">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="test-report"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home+have.tests" name="-test-browse"/>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run,test-report,-post-test-run,-test-browse" description="Run unit tests." name="test"/>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run-single">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${test.includes}" testincludes="${test.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single" if="have.tests" name="-post-test-run-single">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single,-post-test-run-single" description="Run single unit test." name="test-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single-method">[m
[32m+[m[32m        <fail unless="test.class">Must select some files in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${javac.includes}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method" if="have.tests" name="-post-test-run-single-method">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method,-post-test-run-single-method" description="Run single unit test." name="test-single-method"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST DEBUGGING SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testincludes="${javac.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test-method">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testMethod="${test.method}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test" if="netbeans.home+have.tests" name="-debug-start-debugger-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${test.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test" name="debug-test"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test-method" name="debug-test-method"/>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-test-single" if="netbeans.home" name="-do-debug-fix-test">[m
[32m+[m[32m        <j2seproject1:nbjpdareload dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix-test" if="netbeans.home" name="debug-fix-test"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET EXECUTION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" name="run-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject1:java classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET DEBUGGING  SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-applet" if="netbeans.home" name="debug-applet"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                CLEANUP SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-clean-init" unless="built-clean.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-clean.properties" name="built-clean.properties"/>[m
[32m+[m[32m        <delete file="${built-clean.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.clean.${basedir}" name="-warn-already-built-clean">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: Contraseña was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-clean-init" name="deps-clean" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-clean.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-clean.properties}" prefix="already.built.clean."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-clean"/>[m
[32m+[m[32m        <propertyfile file="${built-clean.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" name="-do-clean">[m
[32m+[m[32m        <delete dir="${build.dir}"/>[m
[32m+[m[32m        <delete dir="${dist.dir}" followsymlinks="false" includeemptydirs="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-clean">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-clean,-do-clean,-post-clean" description="Clean build products." name="clean"/>[m
[32m+[m[32m    <target name="-check-call-dep">[m
[32m+[m[32m        <property file="${call.built.properties}" prefix="already.built."/>[m
[32m+[m[32m        <condition property="should.call.dep">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="already.built.${call.subproject}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${call.script}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-check-call-dep" if="should.call.dep" name="-maybe-call-dep">[m
[32m+[m[32m        <ant antfile="${call.script}" inheritall="false" target="${call.target}">[m
[32m+[m[32m            <propertyset>[m
[32m+[m[32m                <propertyref prefix="transfer."/>[m
[32m+[m[32m                <mapper from="transfer.*" to="*" type="glob"/>[m
[32m+[m[32m            </propertyset>[m
[32m+[m[32m        </ant>[m
[32m+[m[32m    </target>[m
[32m+[m[32m</project>[m
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/genfiles.properties" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/genfiles.properties"[m
[1mnew file mode 100644[m
[1mindex 0000000..5871f77[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/genfiles.properties"[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32mbuild.xml.data.CRC32=93bcbcaf[m
[32m+[m[32mbuild.xml.script.CRC32=fc9d9e7e[m
[32m+[m[32mbuild.xml.stylesheet.CRC32=8064a381@1.80.1.48[m
[32m+[m[32m# This file is used by a NetBeans-based IDE to track changes in generated files such as build-impl.xml.[m
[32m+[m[32m# Do not edit this file. You may delete it but then the IDE will never regenerate such files for you.[m
[32m+[m[32mnbproject/build-impl.xml.data.CRC32=93bcbcaf[m
[32m+[m[32mnbproject/build-impl.xml.script.CRC32=5e4881a0[m
[32m+[m[32mnbproject/build-impl.xml.stylesheet.CRC32=830a3534@1.80.1.48[m
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/private/private.properties" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/private/private.properties"[m
[1mnew file mode 100644[m
[1mindex 0000000..d06644e[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/private/private.properties"[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32mcompile.on.save=true[m
[32m+[m[32muser.properties.file=C:\\Users\\User\\AppData\\Roaming\\NetBeans\\8.2\\build.properties[m
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/private/private.xml" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/private/private.xml"[m
[1mnew file mode 100644[m
[1mindex 0000000..6807a2b[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/private/private.xml"[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project-private xmlns="http://www.netbeans.org/ns/project-private/1">[m
[32m+[m[32m    <editor-bookmarks xmlns="http://www.netbeans.org/ns/editor-bookmarks/2" lastBookmarkId="0"/>[m
[32m+[m[32m    <open-files xmlns="http://www.netbeans.org/ns/projectui-open-files/2">[m
[32m+[m[32m        <group/>[m
[32m+[m[32m    </open-files>[m
[32m+[m[32m</project-private>[m
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/project.properties" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/project.properties"[m
[1mnew file mode 100644[m
[1mindex 0000000..a0d5d9d[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/project.properties"[m
[36m@@ -0,0 +1,74 @@[m
[32m+[m[32mannotation.processing.enabled=true[m
[32m+[m[32mannotation.processing.enabled.in.editor=false[m
[32m+[m[32mannotation.processing.processor.options=[m
[32m+[m[32mannotation.processing.processors.list=[m
[32m+[m[32mannotation.processing.run.all.processors=true[m
[32m+[m[32mannotation.processing.source.output=${build.generated.sources.dir}/ap-source-output[m
[32m+[m[32mbuild.classes.dir=${build.dir}/classes[m
[32m+[m[32mbuild.classes.excludes=**/*.java,**/*.form[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mbuild.dir=build[m
[32m+[m[32mbuild.generated.dir=${build.dir}/generated[m
[32m+[m[32mbuild.generated.sources.dir=${build.dir}/generated-sources[m
[32m+[m[32m# Only compile against the classpath explicitly listed here:[m
[32m+[m[32mbuild.sysclasspath=ignore[m
[32m+[m[32mbuild.test.classes.dir=${build.dir}/test/classes[m
[32m+[m[32mbuild.test.results.dir=${build.dir}/test/results[m
[32m+[m[32m# Uncomment to specify the preferred debugger connection transport:[m
[32m+[m[32m#debug.transport=dt_socket[m
[32m+[m[32mdebug.classpath=\[m
[32m+[m[32m    ${run.classpath}[m
[32m+[m[32mdebug.test.classpath=\[m
[32m+[m[32m    ${run.test.classpath}[m
[32m+[m[32m# Files in build.classes.dir which should be excluded from distribution jar[m
[32m+[m[32mdist.archive.excludes=[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mdist.dir=dist[m
[32m+[m[32mdist.jar=${dist.dir}/Contrase_a.jar[m
[32m+[m[32mdist.javadoc.dir=${dist.dir}/javadoc[m
[32m+[m[32mexcludes=[m
[32m+[m[32mincludes=**[m
[32m+[m[32mjar.compress=false[m
[32m+[m[32mjavac.classpath=[m
[32m+[m[32m# Space-separated list of extra javac options[m
[32m+[m[32mjavac.compilerargs=[m
[32m+[m[32mjavac.deprecation=false[m
[32m+[m[32mjavac.external.vm=true[m
[32m+[m[32mjavac.processorpath=\[m
[32m+[m[32m    ${javac.classpath}[m
[32m+[m[32mjavac.source=1.8[m
[32m+[m[32mjavac.target=1.8[m
[32m+[m[32mjavac.test.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32mjavac.test.processorpath=\[m
[32m+[m[32m    ${javac.test.classpath}[m
[32m+[m[32mjavadoc.additionalparam=[m
[32m+[m[32mjavadoc.author=false[m
[32m+[m[32mjavadoc.encoding=${source.encoding}[m
[32m+[m[32mjavadoc.noindex=false[m
[32m+[m[32mjavadoc.nonavbar=false[m
[32m+[m[32mjavadoc.notree=false[m
[32m+[m[32mjavadoc.private=false[m
[32m+[m[32mjavadoc.splitindex=true[m
[32m+[m[32mjavadoc.use=true[m
[32m+[m[32mjavadoc.version=false[m
[32m+[m[32mjavadoc.windowtitle=[m
[32m+[m[32mmain.class=contrase\u00f1a.Main[m
[32m+[m[32mmanifest.file=manifest.mf[m
[32m+[m[32mmeta.inf.dir=${src.dir}/META-INF[m
[32m+[m[32mmkdist.disabled=false[m
[32m+[m[32mplatform.active=default_platform[m
[32m+[m[32mrun.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32m# Space-separated list of JVM arguments used when running the project.[m
[32m+[m[32m# You may also define separate properties like run-sys-prop.name=value instead of -Dname=value.[m
[32m+[m[32m# To set system properties for unit tests define test-sys-prop.name=value:[m
[32m+[m[32mrun.jvmargs=[m
[32m+[m[32mrun.test.classpath=\[m
[32m+[m[32m    ${javac.test.classpath}:\[m
[32m+[m[32m    ${build.test.classes.dir}[m
[32m+[m[32msource.encoding=UTF-8[m
[32m+[m[32msrc.dir=src[m
[32m+[m[32mtest.src.dir=test[m
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/project.xml" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/project.xml"[m
[1mnew file mode 100644[m
[1mindex 0000000..c14594a[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/nbproject/project.xml"[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project xmlns="http://www.netbeans.org/ns/project/1">[m
[32m+[m[32m    <type>org.netbeans.modules.java.j2seproject</type>[m
[32m+[m[32m    <configuration>[m
[32m+[m[32m        <data xmlns="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <name>Contraseña</name>[m
[32m+[m[32m            <source-roots>[m
[32m+[m[32m                <root id="src.dir"/>[m
[32m+[m[32m            </source-roots>[m
[32m+[m[32m            <test-roots>[m
[32m+[m[32m                <root id="test.src.dir"/>[m
[32m+[m[32m            </test-roots>[m
[32m+[m[32m        </data>[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m</project>[m
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/src/contrase\303\261a/Contrase\303\261a.java" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/src/contrase\303\261a/Contrase\303\261a.java"[m
[1mnew file mode 100644[m
[1mindex 0000000..c3b98b1[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/src/contrase\303\261a/Contrase\303\261a.java"[m
[36m@@ -0,0 +1,54 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m[32mpackage contraseña;[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m[32mpublic class Contraseña {[m[41m    [m
[32m+[m[32m    public String contraseña;[m
[32m+[m
[32m+[m[32m    public Contraseña(String contraseña) {[m[41m     [m
[32m+[m[32m        this.contraseña = contraseña;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public void esFuerte(){[m
[32m+[m[32m        int length;[m
[32m+[m[32m        length = contraseña.length();[m
[32m+[m[32m        int contadorMayusculas = 0, contadorMinusculas = 0, contadorNumeros = 0;[m
[32m+[m[32m        for (int i = 0; i < length; i++) {[m
[32m+[m[32m            if(contraseña.charAt(i)>64 && contraseña.charAt(i)<91){[m
[32m+[m[32m                contadorMayusculas++;[m
[32m+[m[32m            }[m
[32m+[m[32m            if(contraseña.charAt(i)>96 && contraseña.charAt(i)<123){[m
[32m+[m[32m                contadorMinusculas++;[m
[32m+[m[32m            }[m
[32m+[m[32m            if (contraseña.charAt(i)>47 && contraseña.charAt(i)<58){[m
[32m+[m[32m                contadorNumeros++;[m
[32m+[m[32m            }[m
[32m+[m[32m        }[m
[32m+[m[32m        if (contadorMayusculas >= 1 && contadorMinusculas >=1 && contadorNumeros > 5) {[m
[32m+[m[32m            System.out.println("Es fuerte");[m
[32m+[m[32m        } else {[m
[32m+[m[32m            System.out.println("No es fuerte");[m
[32m+[m[32m        }[m[41m        [m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public void cambiarContraseña(){[m
[32m+[m[32m        Scanner scan = new Scanner(System.in);[m
[32m+[m[32m        String newPassword = scan.nextLine();[m
[32m+[m[32m        contraseña = newPassword;[m
[32m+[m[41m        [m
[32m+[m[32m    }[m[41m        [m
[32m+[m[41m    [m
[32m+[m[32m    @Override[m
[32m+[m[32m    public String toString() {[m
[32m+[m[32m        String information = "Length: " + contraseña.length() + "; Password: " + contraseña;[m[41m        [m
[32m+[m[32m        return information;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git "a/Ciclo2/Contrase\303\261a/Contrase\303\261a/src/contrase\303\261a/Main.java" "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/src/contrase\303\261a/Main.java"[m
[1mnew file mode 100644[m
[1mindex 0000000..4b24adc[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Contrase\303\261a/Contrase\303\261a/src/contrase\303\261a/Main.java"[m
[36m@@ -0,0 +1,28 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m[32mpackage contraseña;[m
[32m+[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m[32mpublic class Main {[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * @param args the command line arguments[m
[32m+[m[32m     */[m
[32m+[m[41m    [m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        Scanner scan = new Scanner(System.in);[m
[32m+[m[32m        String passIngresada = scan.next();[m
[32m+[m[32m        Contraseña pass = new Contraseña(passIngresada);[m
[32m+[m[32m        pass.esFuerte();[m
[32m+[m[32m        pass.cambiarContraseña();[m
[32m+[m[32m        pass.esFuerte();[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/DivocErika.java b/Ciclo2/DivocErika.java[m
[1mnew file mode 100644[m
[1mindex 0000000..d0bb78c[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/DivocErika.java[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class DivocErika {[m
[32m+[m
[32m+[m[32m    public static Integer superaPoblacion(double pobA, double pobB) {[m
[32m+[m[32m        int i=1;[m
[32m+[m[32m        while (pobB<pobA){[m
[32m+[m[32m            pobA*=1.02;[m
[32m+[m[32m            pobB*=1.03;[m
[32m+[m[32m            i++;[m
[32m+[m[32m        }[m
[32m+[m[32m        return i;[m[41m [m
[32m+[m[32m    }[m[41m [m
[32m+[m
[32m+[m[32m  public static void main(String[] args) {[m
[32m+[m[32m    Scanner sc = new Scanner(System.in);[m
[32m+[m[32m    double n = Double.parseDouble(sc.nextLine());[m
[32m+[m[32m    double m = Double.parseDouble(sc.nextLine());[m
[32m+[m
[32m+[m[32m    System.out.println(superaPoblacion(n,m));[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/Ciclo2/Edades.java b/Ciclo2/Edades.java[m
[1mnew file mode 100644[m
[1mindex 0000000..d145337[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Edades.java[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class Edades {[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m
[32m+[m[32m        Scanner sc = new Scanner(System.in);[m
[32m+[m[32m        int edad = Integer.parseInt(sc.nextLine().trim());[m
[32m+[m[32m        int años = edad/365;[m
[32m+[m[32m        int meses = (edad%365)/30;[m
[32m+[m[32m        int dias = (edad%365)%30;[m
[32m+[m[32m        //int dias = Integer.parseInt(sc.nextLine())%365;[m[41m [m
[32m+[m[32m        System.out.println(" " + años + " años(s)");[m
[32m+[m[32m        System.out.println(meses + " mes(es)");[m
[32m+[m[32m        System.out.println(dias + " día(s)");[m
[32m+[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Funciones/build.xml b/Ciclo2/Funciones/build.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..51bfb13[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Funciones/build.xml[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!-- You may freely edit this file. See commented blocks below for -->[m
[32m+[m[32m<!-- some examples of how to customize the build. -->[m
[32m+[m[32m<!-- (If you delete it and reopen the project it will be recreated.) -->[m
[32m+[m[32m<!-- By default, only the Clean and Build commands use this build script. -->[m
[32m+[m[32m<!-- Commands such as Run, Debug, and Test only use this build script if -->[m
[32m+[m[32m<!-- the Compile on Save feature is turned off for the project. -->[m
[32m+[m[32m<!-- You can turn off the Compile on Save (or Deploy on Save) setting -->[m
[32m+[m[32m<!-- in the project's Project Properties dialog box.-->[m
[32m+[m[32m<project name="Funciones" default="default" basedir=".">[m
[32m+[m[32m    <description>Builds, tests, and runs the project Funciones.</description>[m
[32m+[m[32m    <import file="nbproject/build-impl.xml"/>[m
[32m+[m[32m    <!--[m
[32m+[m
[32m+[m[32m    There exist several targets which are by default empty and which can be[m[41m [m
[32m+[m[32m    used for execution of your tasks. These targets are usually executed[m[41m [m
[32m+[m[32m    before and after some main targets. They are:[m[41m [m
[32m+[m
[32m+[m[32m      -pre-init:                 called before initialization of project properties[m
[32m+[m[32m      -post-init:                called after initialization of project properties[m
[32m+[m[32m      -pre-compile:              called before javac compilation[m
[32m+[m[32m      -post-compile:             called after javac compilation[m
[32m+[m[32m      -pre-compile-single:       called before javac compilation of single file[m
[32m+[m[32m      -post-compile-single:      called after javac compilation of single file[m
[32m+[m[32m      -pre-compile-test:         called before javac compilation of JUnit tests[m
[32m+[m[32m      -post-compile-test:        called after javac compilation of JUnit tests[m
[32m+[m[32m      -pre-compile-test-single:  called before javac compilation of single JUnit test[m
[32m+[m[32m      -post-compile-test-single: called after javac compilation of single JUunit test[m
[32m+[m[32m      -pre-jar:                  called before JAR building[m
[32m+[m[32m      -post-jar:                 called after JAR building[m
[32m+[m[32m      -post-clean:               called after cleaning build products[m
[32m+[m
[32m+[m[32m    (Targets beginning with '-' are not intended to be called on their own.)[m
[32m+[m
[32m+[m[32m    Example of inserting an obfuscator after compilation could look like this:[m
[32m+[m
[32m+[m[32m        <target name="-post-compile">[m
[32m+[m[32m            <obfuscate>[m
[32m+[m[32m                <fileset dir="${build.classes.dir}"/>[m
[32m+[m[32m            </obfuscate>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    For list of available properties check the imported[m[41m [m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m
[32m+[m[32m    Another way to customize the build is by overriding existing main targets.[m
[32m+[m[32m    The targets of interest are:[m[41m [m
[32m+[m
[32m+[m[32m      -init-macrodef-javac:     defines macro for javac compilation[m
[32m+[m[32m      -init-macrodef-junit:     defines macro for junit execution[m
[32m+[m[32m      -init-macrodef-debug:     defines macro for class debugging[m
[32m+[m[32m      -init-macrodef-java:      defines macro for class execution[m
[32m+[m[32m      -do-jar:                  JAR building[m
[32m+[m[32m      run:                      execution of project[m[41m [m
[32m+[m[32m      -javadoc-build:           Javadoc generation[m
[32m+[m[32m      test-report:              JUnit report generation[m
[32m+[m
[32m+[m[32m    An example of overriding the target for project execution could look like this:[m
[32m+[m
[32m+[m[32m        <target name="run" depends="Funciones-impl.jar">[m
[32m+[m[32m            <exec dir="bin" executable="launcher.exe">[m
[32m+[m[32m                <arg file="${dist.jar}"/>[m
[32m+[m[32m            </exec>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    Notice that the overridden target depends on the jar target and not only on[m[41m [m
[32m+[m[32m    the compile target as the regular run target does. Again, for a list of available[m[41m [m
[32m+[m[32m    properties which you can use, check the target you are overriding in the[m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m[32m    -->[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Funciones/manifest.mf b/Ciclo2/Funciones/manifest.mf[m
[1mnew file mode 100644[m
[1mindex 0000000..328e8e5[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Funciones/manifest.mf[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mManifest-Version: 1.0[m
[32m+[m[32mX-COMMENT: Main-Class will be added automatically by build[m
[32m+[m
[1mdiff --git a/Ciclo2/Funciones/nbproject/build-impl.xml b/Ciclo2/Funciones/nbproject/build-impl.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..a372876[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Funciones/nbproject/build-impl.xml[m
[36m@@ -0,0 +1,1420 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!--[m
[32m+[m[32m*** GENERATED FROM project.xml - DO NOT EDIT  ***[m
[32m+[m[32m***         EDIT ../build.xml INSTEAD         ***[m
[32m+[m
[32m+[m[32mFor the purpose of easier reading the script[m
[32m+[m[32mis divided into following sections:[m
[32m+[m
[32m+[m[32m  - initialization[m
[32m+[m[32m  - compilation[m
[32m+[m[32m  - jar[m
[32m+[m[32m  - execution[m
[32m+[m[32m  - debugging[m
[32m+[m[32m  - javadoc[m
[32m+[m[32m  - test compilation[m
[32m+[m[32m  - test execution[m
[32m+[m[32m  - test debugging[m
[32m+[m[32m  - applet[m
[32m+[m[32m  - cleanup[m
[32m+[m
[32m+[m[32m        -->[m
[32m+[m[32m<project xmlns:j2seproject1="http://www.netbeans.org/ns/j2se-project/1" xmlns:j2seproject3="http://www.netbeans.org/ns/j2se-project/3" xmlns:jaxrpc="http://www.netbeans.org/ns/j2se-project/jax-rpc" basedir=".." default="default" name="Funciones-impl">[m
[32m+[m[32m    <fail message="Please build using Ant 1.8.0 or higher.">[m
[32m+[m[32m        <condition>[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <antversion atleast="1.8.0"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </fail>[m
[32m+[m[32m    <target depends="test,jar,javadoc" description="Build and test whole project." name="default"/>[m
[32m+[m[32m    <!--[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m                INITIALIZATION SECTION[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init" name="-init-private">[m
[32m+[m[32m        <property file="nbproject/private/config.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/private.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private" name="-init-user">[m
[32m+[m[32m        <property file="${user.properties.file}"/>[m
[32m+[m[32m        <!-- The two properties below are usually overridden -->[m
[32m+[m[32m        <!-- by the active platform. Just a fallback. -->[m
[32m+[m[32m        <property name="default.javac.source" value="1.6"/>[m
[32m+[m[32m        <property name="default.javac.target" value="1.6"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user" name="-init-project">[m
[32m+[m[32m        <property file="nbproject/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/project.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-init-macrodef-property" name="-do-init">[m
[32m+[m[32m        <property name="platform.java" value="${java.home}/bin/java"/>[m
[32m+[m[32m        <available file="${manifest.file}" property="manifest.available"/>[m
[32m+[m[32m        <condition property="splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${application.splash}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${application.splash}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${main.class}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javac.profile"/>[m
[32m+[m[32m                <length length="0" string="${javac.profile}" when="greater"/>[m
[32m+[m[32m                <matches pattern="((1\.[89])|9)(\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${jar.archive.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <istrue value="${not.archive.disabled}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.mkdist">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="do.archive"/>[m
[32m+[m[32m                <isset property="libs.CopyLibs.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${mkdist.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+manifest.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="manifest.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="splashscreen.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="profile.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.tests">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${test.src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.sources">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="netbeans.home+have.tests">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="netbeans.home"/>[m
[32m+[m[32m                <isset property="have.tests"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="no.javadoc.preview">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.preview"/>[m
[32m+[m[32m                <isfalse value="${javadoc.preview}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="run.jvmargs" value=""/>[m
[32m+[m[32m        <property name="run.jvmargs.ide" value=""/>[m
[32m+[m[32m        <property name="javac.compilerargs" value=""/>[m
[32m+[m[32m        <property name="work.dir" value="${basedir}"/>[m
[32m+[m[32m        <condition property="no.deps">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${no.dependencies}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javac.debug" value="true"/>[m
[32m+[m[32m        <property name="javadoc.preview" value="true"/>[m
[32m+[m[32m        <property name="application.args" value=""/>[m
[32m+[m[32m        <property name="source.encoding" value="${file.encoding}"/>[m
[32m+[m[32m        <property name="runtime.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="manifest.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <condition property="javadoc.encoding.used" value="${javadoc.encoding}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.encoding"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${javadoc.encoding}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javadoc.encoding.used" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="includes" value="**"/>[m
[32m+[m[32m        <property name="excludes" value=""/>[m
[32m+[m[32m        <property name="do.depend" value="false"/>[m
[32m+[m[32m        <condition property="do.depend.true">[m
[32m+[m[32m            <istrue value="${do.depend}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <path id="endorsed.classpath.path" path="${endorsed.classpath}"/>[m
[32m+[m[32m        <condition else="" property="endorsed.classpath.cmd.line.arg" value="-Xbootclasspath/p:'${toString:endorsed.classpath.path}'">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="javac.profile.cmd.line.arg" value="-profile ${javac.profile}">[m
[32m+[m[32m            <isset property="profile.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="jdkBug6558476">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <matches pattern="1\.[56]" string="${java.specification.version}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <os family="unix"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="javac.fork">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <istrue value="${jdkBug6558476}"/>[m
[32m+[m[32m                <istrue value="${javac.external.vm}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="jar.index" value="false"/>[m
[32m+[m[32m        <property name="jar.index.metainf" value="${jar.index}"/>[m
[32m+[m[32m        <property name="copylibs.rebase" value="true"/>[m
[32m+[m[32m        <available file="${meta.inf.dir}/persistence.xml" property="has.persistence.xml"/>[m
[32m+[m[32m        <condition property="junit.available">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available classname="org.junit.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m                <available classname="junit.framework.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="testng.available">[m
[32m+[m[32m            <available classname="org.testng.annotations.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="junit+testng.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <istrue value="${testng.available}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="testng" property="testng.mode" value="mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="testng.debug.mode" value="-mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="java.failonerror" value="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init" name="-init-check">[m
[32m+[m[32m        <fail unless="src.dir">Must set src.dir</fail>[m
[32m+[m[32m        <fail unless="test.src.dir">Must set test.src.dir</fail>[m
[32m+[m[32m        <fail unless="build.dir">Must set build.dir</fail>[m
[32m+[m[32m        <fail unless="dist.dir">Must set dist.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.dir">Must set build.classes.dir</fail>[m
[32m+[m[32m        <fail unless="dist.javadoc.dir">Must set dist.javadoc.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.classes.dir">Must set build.test.classes.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.results.dir">Must set build.test.results.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.excludes">Must set build.classes.excludes</fail>[m
[32m+[m[32m        <fail unless="dist.jar">Must set dist.jar</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-property">[m
[32m+[m[32m        <macrodef name="property" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-macrodef-javac-with-processors">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <mkdir dir="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <compilerarg value="-processorpath"/>[m
[32m+[m[32m                    <compilerarg path="@{processorpath}:${empty.dir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.processors.internal}"/>[m
[32m+[m[32m                    <compilerarg line="${annotation.processing.processor.options}"/>[m
[32m+[m[32m                    <compilerarg value="-s"/>[m
[32m+[m[32m                    <compilerarg path="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.proc.none.internal}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" name="-init-macrodef-javac-without-processors" unless="ap.supported.internal">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-javac-with-processors,-init-macrodef-javac-without-processors" name="-init-macrodef-javac">[m
[32m+[m[32m        <macrodef name="depend" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <depend cache="${build.dir}/depcache" destdir="@{destdir}" excludes="${excludes}" includes="${includes}" srcdir="@{srcdir}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </depend>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="force-recompile" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <fail unless="javac.includes">Must set javac.includes</fail>[m
[32m+[m[32m                <pathconvert pathsep="${line.separator}" property="javac.includes.binary">[m
[32m+[m[32m                    <path>[m
[32m+[m[32m                        <filelist dir="@{destdir}" files="${javac.includes}"/>[m
[32m+[m[32m                    </path>[m
[32m+[m[32m                    <globmapper from="*.java" to="*.class"/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <tempfile deleteonexit="true" property="javac.includesfile.binary"/>[m
[32m+[m[32m                <echo file="${javac.includesfile.binary}" message="${javac.includes.binary}"/>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <files includesfile="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <fileset file="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-init">[m
[32m+[m[32m        <condition else="false" property="nb.junit.batch" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="nb.junit.single" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <isset property="test.method"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-test-properties">[m
[32m+[m[32m        <property name="test.binaryincludes" value="&lt;nothing&gt;"/>[m
[32m+[m[32m        <property name="test.binarytestincludes" value=""/>[m
[32m+[m[32m        <property name="test.binaryexcludes" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${nb.junit.single}" name="-init-macrodef-junit-single" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-batch" unless="${nb.junit.single}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-init,-init-macrodef-junit-single, -init-macrodef-junit-batch" if="${junit.available}" name="-init-macrodef-junit"/>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng">[m
[32m+[m[32m        <macrodef name="testng" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="" property="testng.methods.arg" value="@{testincludes}.@{testmethods}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <union id="test.set">[m
[32m+[m[32m                    <fileset dir="${test.src.dir}" excludes="@{excludes},**/*.xml,${excludes}" includes="@{includes}">[m
[32m+[m[32m                        <filename name="@{testincludes}"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </union>[m
[32m+[m[32m                <taskdef classname="org.testng.TestNGAntTask" classpath="${run.test.classpath}" name="testng"/>[m
[32m+[m[32m                <testng classfilesetref="test.set" failureProperty="tests.failed" listeners="org.testng.reporters.VerboseReporter" methods="${testng.methods.arg}" mode="${testng.mode}" outputdir="${build.test.results.dir}" suitename="Funciones" testname="TestNG tests" workingDir="${work.dir}">[m
[32m+[m[32m                    <xmlfileset dir="${build.test.classes.dir}" includes="@{testincludes}"/>[m
[32m+[m[32m                    <propertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </propertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-test-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <echo>No tests executed.</echo>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit" if="${junit.available}" name="-init-macrodef-junit-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng" if="${testng.available}" name="-init-macrodef-testng-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-impl,-init-macrodef-junit-impl,-init-macrodef-testng-impl" name="-init-macrodef-test">[m
[32m+[m[32m        <macrodef name="test" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-debug" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-debug-batch">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug,-init-macrodef-junit-debug-batch" if="${junit.available}" name="-init-macrodef-junit-debug-impl">[m
[32m+[m[32m        <macrodef name="test-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit-debug excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng-debug">[m
[32m+[m[32m        <macrodef name="testng-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="-testclass @{testClass}" property="test.class.or.method" value="-methods @{testClass}.@{testMethod}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <condition else="-suitename Funciones -testname @{testClass} ${test.class.or.method}" property="testng.cmd.args" value="@{testClass}">[m
[32m+[m[32m                    <matches pattern=".*\.xml" string="@{testClass}"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <delete dir="${build.test.results.dir}" quiet="true"/>[m
[32m+[m[32m                <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m                <j2seproject3:debug classname="org.testng.TestNG" classpath="${debug.test.classpath}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <customize2/>[m
[32m+[m[32m                        <jvmarg value="-ea"/>[m
[32m+[m[32m                        <arg line="${testng.debug.mode}"/>[m
[32m+[m[32m                        <arg line="-d ${build.test.results.dir}"/>[m
[32m+[m[32m                        <arg line="-listener org.testng.reporters.VerboseReporter"/>[m
[32m+[m[32m                        <arg line="${testng.cmd.args}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug" if="${testng.available}" name="-init-macrodef-testng-debug-impl">[m
[32m+[m[32m        <macrodef name="testng-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element implicit="true" name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2/>[m
[32m+[m[32m                </j2seproject3:testng-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug-impl" if="${junit.available}" name="-init-macrodef-test-debug-junit">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-debug-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug-impl" if="${testng.available}" name="-init-macrodef-test-debug-testng">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug-impl testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2>[m
[32m+[m[32m                        <syspropertyset>[m
[32m+[m[32m                            <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                            <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                        </syspropertyset>[m
[32m+[m[32m                    </customize2>[m
[32m+[m[32m                </j2seproject3:testng-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-debug-junit,-init-macrodef-test-debug-testng" name="-init-macrodef-test-debug"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiling section; consider it deprecated[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile, -profile-init-check" if="profiler.info.jvmargs.agent" name="profile-init"/>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-init-macrodef-profile">[m
[32m+[m[32m        <macrodef name="resolve">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${env.@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="profile">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property environment="env"/>[m
[32m+[m[32m                <resolve name="profiler.current.path" value="${profiler.info.pathvar}"/>[m
[32m+[m[32m                <java classname="@{classname}" dir="${profiler.info.dir}" failonerror="${java.failonerror}" fork="true" jvm="${profiler.info.jvm}">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m                    <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m                    <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m                    <arg line="${application.args}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="${run.classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile" if="profiler.info.jvmargs.agent" name="-profile-init-check">[m
[32m+[m[32m        <fail unless="profiler.info.jvm">Must set JVM to use for profiling in profiler.info.jvm</fail>[m
[32m+[m[32m        <fail unless="profiler.info.jvmargs.agent">Must set profiler agent JVM arguments in profiler.info.jvmargs.agent</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB7.2 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-nbjpda">[m
[32m+[m[32m        <macrodef name="nbjpdastart" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="name"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="" name="stopclassname"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdastart addressproperty="jpda.address" name="@{name}" stopclassname="@{stopclassname}" transport="${debug-transport}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </nbjpdastart>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="nbjpdareload" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="dir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdareload>[m
[32m+[m[32m                    <fileset dir="@{dir}" includes="${fix.classes}">[m
[32m+[m[32m                        <include name="${fix.includes}*.class"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </nbjpdareload>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-debug-args">[m
[32m+[m[32m        <property name="version-output" value="java version &quot;${ant.java.version}"/>[m
[32m+[m[32m        <condition property="have-jdk-older-than-1.4">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.0"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.1"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.2"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.3"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="-Xdebug" property="debug-args-line" value="-Xdebug -Xnoagent -Djava.compiler=none">[m
[32m+[m[32m            <istrue value="${have-jdk-older-than-1.4}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="dt_socket" property="debug-transport-by-os" value="dt_shmem">[m
[32m+[m[32m            <os family="windows"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="${debug-transport-by-os}" property="debug-transport" value="${debug.transport}">[m
[32m+[m[32m            <isset property="debug.transport"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-debug">[m
[32m+[m[32m        <macrodef name="debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-java">[m
[32m+[m[32m        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${run.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="jvm" name="jvm"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-copylibs">[m
[32m+[m[32m        <macrodef name="copylibs" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${manifest.file}" name="manifest"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m                <pathconvert property="run.classpath.without.build.classes.dir">[m
[32m+[m[32m                    <path path="${run.classpath}"/>[m
[32m+[m[32m                    <map from="${build.classes.dir.resolved}" to=""/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <pathconvert pathsep=" " property="jar.classpath">[m
[32m+[m[32m                    <path path="${run.classpath.without.build.classes.dir}"/>[m
[32m+[m[32m                    <chainedmapper>[m
[32m+[m[32m                        <flattenmapper/>[m
[32m+[m[32m                        <filtermapper>[m
[32m+[m[32m                            <replacestring from=" " to="%20"/>[m
[32m+[m[32m                        </filtermapper>[m
[32m+[m[32m                        <globmapper from="*" to="lib/*"/>[m
[32m+[m[32m                    </chainedmapper>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <taskdef classname="org.netbeans.modules.java.j2seproject.copylibstask.CopyLibs" classpath="${libs.CopyLibs.classpath}" name="copylibs"/>[m
[32m+[m[32m                <copylibs compress="${jar.compress}" excludeFromCopy="${copylibs.excludes}" index="${jar.index}" indexMetaInf="${jar.index.metainf}" jarfile="${dist.jar}" manifest="@{manifest}" manifestencoding="UTF-8" rebase="${copylibs.rebase}" runtimeclasspath="${run.classpath.without.build.classes.dir}">[m
[32m+[m[32m                    <fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m                    <manifest>[m
[32m+[m[32m                        <attribute name="Class-Path" value="${jar.classpath}"/>[m
[32m+[m[32m                        <customize/>[m
[32m+[m[32m                    </manifest>[m
[32m+[m[32m                </copylibs>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-presetdef-jar">[m
[32m+[m[32m        <presetdef name="jar" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <jar compress="${jar.compress}" index="${jar.index}" jarfile="${dist.jar}" manifestencoding="UTF-8">[m
[32m+[m[32m                <j2seproject1:fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m            </jar>[m
[32m+[m[32m        </presetdef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-ap-cmdline-properties">[m
[32m+[m[32m        <property name="annotation.processing.enabled" value="true"/>[m
[32m+[m[32m        <property name="annotation.processing.processors.list" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.processor.options" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.run.all.processors" value="true"/>[m
[32m+[m[32m        <property name="javac.processorpath" value="${javac.classpath}"/>[m
[32m+[m[32m        <property name="javac.test.processorpath" value="${javac.test.classpath}"/>[m
[32m+[m[32m        <condition property="ap.supported.internal" value="true">[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <matches pattern="1\.[0-5](\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-ap-cmdline-supported">[m
[32m+[m[32m        <condition else="" property="ap.processors.internal" value="-processor ${annotation.processing.processors.list}">[m
[32m+[m[32m            <isfalse value="${annotation.processing.run.all.processors}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="ap.proc.none.internal" value="-proc:none">[m
[32m+[m[32m            <isfalse value="${annotation.processing.enabled}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties,-init-ap-cmdline-supported" name="-init-ap-cmdline">[m
[32m+[m[32m        <property name="ap.cmd.line.internal" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init,-post-init,-init-check,-init-macrodef-property,-init-macrodef-javac,-init-macrodef-test,-init-macrodef-test-debug,-init-macrodef-nbjpda,-init-macrodef-debug,-init-macrodef-java,-init-presetdef-jar,-init-ap-cmdline" name="init"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===================[m
[32m+[m[32m                COMPILATION SECTION[m
[32m+[m[32m                ===================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-jar-init" unless="built-jar.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-jar.properties" name="built-jar.properties"/>[m
[32m+[m[32m        <delete file="${built-jar.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.jar.${basedir}" name="-warn-already-built-jar">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: Funciones was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-jar-init" name="deps-jar" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-jar.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-jar.properties}" prefix="already.built.jar."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-jar"/>[m
[32m+[m[32m        <propertyfile file="${built-jar.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-check-automatic-build,-clean-after-automatic-build" name="-verify-automatic-build"/>[m
[32m+[m[32m    <target depends="init" name="-check-automatic-build">[m
[32m+[m[32m        <available file="${build.classes.dir}/.netbeans_automatic_build" property="netbeans.automatic.build"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.automatic.build" name="-clean-after-automatic-build">[m
[32m+[m[32m        <antcall target="clean"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar" name="-pre-pre-compile">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-depend">[m
[32m+[m[32m        <pathconvert property="build.generated.subdirs">[m
[32m+[m[32m            <dirset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="*"/>[m
[32m+[m[32m            </dirset>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <j2seproject3:depend srcdir="${src.dir}:${build.generated.subdirs}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile,-pre-compile, -copy-persistence-xml,-compile-depend" if="have.sources" name="-do-compile">[m
[32m+[m[32m        <j2seproject3:javac gensrcdir="${build.generated.sources.dir}"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="has.persistence.xml" name="-copy-persistence-xml">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}/META-INF">[m
[32m+[m[32m            <fileset dir="${meta.inf.dir}" includes="persistence.xml orm.xml"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile,-do-compile,-post-compile" description="Compile project." name="compile"/>[m
[32m+[m[32m    <target name="-pre-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile" name="-do-compile-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile/>[m
[32m+[m[32m        <j2seproject3:javac excludes="" gensrcdir="${build.generated.sources.dir}" includes="${javac.includes}" sourcepath="${src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile-single,-do-compile-single,-post-compile-single" name="compile-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ====================[m
[32m+[m[32m                JAR BUILDING SECTION[m
[32m+[m[32m                ====================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" name="-pre-pre-jar">[m
[32m+[m[32m        <dirname file="${dist.jar}" property="dist.jar.dir"/>[m
[32m+[m[32m        <mkdir dir="${dist.jar.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive" name="-do-jar-create-manifest" unless="manifest.available">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <touch file="${tmp.manifest.file}" verbose="false"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive+manifest.available" name="-do-jar-copy-manifest">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <copy encoding="${manifest.encoding}" file="${manifest.file}" outputencoding="UTF-8" tofile="${tmp.manifest.file}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+main.class.available" name="-do-jar-set-mainclass">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Main-Class" value="${main.class}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+profile.available" name="-do-jar-set-profile">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Profile" value="${javac.profile}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+splashscreen.available" name="-do-jar-set-splashscreen">[m
[32m+[m[32m        <basename file="${application.splash}" property="splashscreen.basename"/>[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy failonerror="false" file="${application.splash}" todir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="SplashScreen-Image" value="META-INF/${splashscreen.basename}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-init-macrodef-copylibs,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.mkdist" name="-do-jar-copylibs">[m
[32m+[m[32m        <j2seproject3:copylibs manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <echo level="info">To run this application from the command line without Ant, try:</echo>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <echo level="info">java -jar "${dist.jar.resolved}"</echo>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.archive" name="-do-jar-jar" unless="do.mkdist">[m
[32m+[m[32m        <j2seproject1:jar manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <pathconvert property="run.classpath.with.dist.jar">[m
[32m+[m[32m            <path path="${run.classpath}"/>[m
[32m+[m[32m            <map from="${build.classes.dir.resolved}" to="${dist.jar.resolved}"/>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <condition else="" property="jar.usage.message" value="To run this application from the command line without Ant, try:${line.separator}${platform.java} -cp ${run.classpath.with.dist.jar} ${main.class}">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="debug" property="jar.usage.level" value="info">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <echo level="${jar.usage.level}" message="${jar.usage.message}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-do-jar-copylibs" if="do.archive" name="-do-jar-delete-manifest">[m
[32m+[m[32m        <delete>[m
[32m+[m[32m            <fileset file="${tmp.manifest.file}"/>[m
[32m+[m[32m        </delete>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-jar,-do-jar-delete-manifest" name="-do-jar-without-libraries"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-copylibs,-do-jar-delete-manifest" name="-do-jar-with-libraries"/>[m
[32m+[m[32m    <target name="-post-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar-without-libraries,-do-jar-with-libraries,-post-jar" name="-do-jar"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar,-post-jar" description="Build JAR." name="jar"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                EXECUTION SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" description="Run a main class." name="run">[m
[32m+[m[32m        <j2seproject1:java>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-do-not-recompile">[m
[32m+[m[32m        <property name="javac.includes.binary" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single" name="run-single">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single" name="run-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}" classpath="${run.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                DEBUGGING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger">[m
[32m+[m[32m        <j2seproject1:nbjpdastart name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-main-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile" name="-debug-start-debuggee">[m
[32m+[m[32m        <j2seproject3:debug>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger,-debug-start-debuggee" description="Debug project in IDE." if="netbeans.home" name="debug"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-stepinto">[m
[32m+[m[32m        <j2seproject1:nbjpdastart stopclassname="${main.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger-stepinto,-debug-start-debuggee" if="netbeans.home" name="debug-stepinto"/>[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-single">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-single" if="netbeans.home" name="debug-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single" if="netbeans.home" name="-debug-start-debuggee-main-test">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}" classpath="${debug.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-main-test,-debug-start-debuggee-main-test" if="netbeans.home" name="debug-test-with-main"/>[m
[32m+[m[32m    <target depends="init" name="-pre-debug-fix">[m
[32m+[m[32m        <fail unless="fix.includes">Must set fix.includes</fail>[m
[32m+[m[32m        <property name="javac.includes" value="${fix.includes}.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-single" if="netbeans.home" name="-do-debug-fix">[m
[32m+[m[32m        <j2seproject1:nbjpdareload/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix" if="netbeans.home" name="debug-fix"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                PROFILING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiler integration[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="profile-init,compile" description="Profile a project in the IDE." if="profiler.info.jvmargs.agent" name="-profile-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" description="Profile a selected class in the IDE." if="profiler.info.jvmargs.agent" name="-profile-single-pre72">[m
[32m+[m[32m        <fail unless="profile.class">Must select one file in the IDE or set profile.class</fail>[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="${profile.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" if="profiler.info.jvmargs.agent" name="-profile-applet-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </profile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-test-single" if="profiler.info.jvmargs.agent" name="-profile-test-single-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <junit dir="${profiler.info.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" jvm="${profiler.info.jvm}" showoutput="true">[m
[32m+[m[32m            <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m            <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m            <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m            <test name="${profile.class}"/>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <syspropertyset>[m
[32m+[m[32m                <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m            </syspropertyset>[m
[32m+[m[32m            <formatter type="brief" usefile="false"/>[m
[32m+[m[32m            <formatter type="xml"/>[m
[32m+[m[32m        </junit>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB72 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target if="netbeans.home" name="-profile-check">[m
[32m+[m[32m        <condition property="profiler.configured">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-agentpath:"/>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-javaagent:"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-pre72" description="Profile a project in the IDE." if="profiler.configured" name="profile" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-single-pre72" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-single" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-test-single-pre72" description="Profile a selected test in the IDE." name="profile-test-single"/>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected test in the IDE." if="profiler.configured" name="profile-test" unless="profiler.info.jvmargs">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="test-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-test-with-main"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-applet-pre72" if="profiler.configured" name="profile-applet" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-applet"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                JAVADOC SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.sources" name="-javadoc-build">[m
[32m+[m[32m        <mkdir dir="${dist.javadoc.dir}"/>[m
[32m+[m[32m        <condition else="" property="javadoc.endorsed.classpath.cmd.line.arg" value="-J${endorsed.classpath.cmd.line.arg}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath.cmd.line.arg"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath.cmd.line.arg}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="bug5101868workaround" value="*.java">[m
[32m+[m[32m            <matches pattern="1\.[56](\..*)?" string="${java.version}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <javadoc additionalparam="-J-Dfile.encoding=${file.encoding} ${javadoc.additionalparam}" author="${javadoc.author}" charset="UTF-8" destdir="${dist.javadoc.dir}" docencoding="UTF-8" encoding="${javadoc.encoding.used}" failonerror="true" noindex="${javadoc.noindex}" nonavbar="${javadoc.nonavbar}" notree="${javadoc.notree}" private="${javadoc.private}" source="${javac.source}" splitindex="${javadoc.splitindex}" use="${javadoc.use}" useexternalfile="true" version="${javadoc.version}" windowtitle="${javadoc.windowtitle}">[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${javac.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${bug5101868workaround},${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/*.java"/>[m
[32m+[m[32m                <exclude name="*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <arg line="${javadoc.endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m        </javadoc>[m
[32m+[m[32m        <copy todir="${dist.javadoc.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build" if="netbeans.home" name="-javadoc-browse" unless="no.javadoc.preview">[m
[32m+[m[32m        <nbbrowse file="${dist.javadoc.dir}/index.html"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build,-javadoc-browse" description="Build Javadoc." name="javadoc"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                TEST COMPILATION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" if="have.tests" name="-pre-pre-compile-test">[m
[32m+[m[32m        <mkdir dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-test-depend">[m
[32m+[m[32m        <j2seproject3:depend classpath="${javac.test.classpath}" destdir="${build.test.classes.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test,-compile-test-depend" if="have.tests" name="-do-compile-test">[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" processorpath="${javac.test.processorpath}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test,-do-compile-test,-post-compile-test" name="compile-test"/>[m
[32m+[m[32m    <target name="-pre-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test-single" if="have.tests" name="-do-compile-test-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile destdir="${build.test.classes.dir}"/>[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" excludes="" includes="${javac.includes}" processorpath="${javac.test.processorpath}" sourcepath="${test.src.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test-single,-do-compile-test-single,-post-compile-test-single" name="compile-test-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST EXECUTION SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run" if="have.tests" name="-do-test-run">[m
[32m+[m[32m        <j2seproject3:test includes="${includes}" testincludes="**/*Test.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run" if="have.tests" name="-post-test-run">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="test-report"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home+have.tests" name="-test-browse"/>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run,test-report,-post-test-run,-test-browse" description="Run unit tests." name="test"/>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run-single">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${test.includes}" testincludes="${test.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single" if="have.tests" name="-post-test-run-single">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single,-post-test-run-single" description="Run single unit test." name="test-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single-method">[m
[32m+[m[32m        <fail unless="test.class">Must select some files in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${javac.includes}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method" if="have.tests" name="-post-test-run-single-method">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method,-post-test-run-single-method" description="Run single unit test." name="test-single-method"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST DEBUGGING SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testincludes="${javac.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test-method">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testMethod="${test.method}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test" if="netbeans.home+have.tests" name="-debug-start-debugger-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${test.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test" name="debug-test"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test-method" name="debug-test-method"/>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-test-single" if="netbeans.home" name="-do-debug-fix-test">[m
[32m+[m[32m        <j2seproject1:nbjpdareload dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix-test" if="netbeans.home" name="debug-fix-test"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET EXECUTION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" name="run-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject1:java classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET DEBUGGING  SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-applet" if="netbeans.home" name="debug-applet"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                CLEANUP SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-clean-init" unless="built-clean.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-clean.properties" name="built-clean.properties"/>[m
[32m+[m[32m        <delete file="${built-clean.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.clean.${basedir}" name="-warn-already-built-clean">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: Funciones was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-clean-init" name="deps-clean" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-clean.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-clean.properties}" prefix="already.built.clean."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-clean"/>[m
[32m+[m[32m        <propertyfile file="${built-clean.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" name="-do-clean">[m
[32m+[m[32m        <delete dir="${build.dir}"/>[m
[32m+[m[32m        <delete dir="${dist.dir}" followsymlinks="false" includeemptydirs="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-clean">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-clean,-do-clean,-post-clean" description="Clean build products." name="clean"/>[m
[32m+[m[32m    <target name="-check-call-dep">[m
[32m+[m[32m        <property file="${call.built.properties}" prefix="already.built."/>[m
[32m+[m[32m        <condition property="should.call.dep">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="already.built.${call.subproject}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${call.script}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-check-call-dep" if="should.call.dep" name="-maybe-call-dep">[m
[32m+[m[32m        <ant antfile="${call.script}" inheritall="false" target="${call.target}">[m
[32m+[m[32m            <propertyset>[m
[32m+[m[32m                <propertyref prefix="transfer."/>[m
[32m+[m[32m                <mapper from="transfer.*" to="*" type="glob"/>[m
[32m+[m[32m            </propertyset>[m
[32m+[m[32m        </ant>[m
[32m+[m[32m    </target>[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Funciones/nbproject/genfiles.properties b/Ciclo2/Funciones/nbproject/genfiles.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..e339976[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Funciones/nbproject/genfiles.properties[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32mbuild.xml.data.CRC32=77857e9b[m
[32m+[m[32mbuild.xml.script.CRC32=a2a10c2e[m
[32m+[m[32mbuild.xml.stylesheet.CRC32=8064a381@1.80.1.48[m
[32m+[m[32m# This file is used by a NetBeans-based IDE to track changes in generated files such as build-impl.xml.[m
[32m+[m[32m# Do not edit this file. You may delete it but then the IDE will never regenerate such files for you.[m
[32m+[m[32mnbproject/build-impl.xml.data.CRC32=77857e9b[m
[32m+[m[32mnbproject/build-impl.xml.script.CRC32=5271d6f5[m
[32m+[m[32mnbproject/build-impl.xml.stylesheet.CRC32=830a3534@1.80.1.48[m
[1mdiff --git a/Ciclo2/Funciones/nbproject/project.properties b/Ciclo2/Funciones/nbproject/project.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..5622821[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Funciones/nbproject/project.properties[m
[36m@@ -0,0 +1,74 @@[m
[32m+[m[32mannotation.processing.enabled=true[m
[32m+[m[32mannotation.processing.enabled.in.editor=false[m
[32m+[m[32mannotation.processing.processor.options=[m
[32m+[m[32mannotation.processing.processors.list=[m
[32m+[m[32mannotation.processing.run.all.processors=true[m
[32m+[m[32mannotation.processing.source.output=${build.generated.sources.dir}/ap-source-output[m
[32m+[m[32mbuild.classes.dir=${build.dir}/classes[m
[32m+[m[32mbuild.classes.excludes=**/*.java,**/*.form[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mbuild.dir=build[m
[32m+[m[32mbuild.generated.dir=${build.dir}/generated[m
[32m+[m[32mbuild.generated.sources.dir=${build.dir}/generated-sources[m
[32m+[m[32m# Only compile against the classpath explicitly listed here:[m
[32m+[m[32mbuild.sysclasspath=ignore[m
[32m+[m[32mbuild.test.classes.dir=${build.dir}/test/classes[m
[32m+[m[32mbuild.test.results.dir=${build.dir}/test/results[m
[32m+[m[32m# Uncomment to specify the preferred debugger connection transport:[m
[32m+[m[32m#debug.transport=dt_socket[m
[32m+[m[32mdebug.classpath=\[m
[32m+[m[32m    ${run.classpath}[m
[32m+[m[32mdebug.test.classpath=\[m
[32m+[m[32m    ${run.test.classpath}[m
[32m+[m[32m# Files in build.classes.dir which should be excluded from distribution jar[m
[32m+[m[32mdist.archive.excludes=[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mdist.dir=dist[m
[32m+[m[32mdist.jar=${dist.dir}/Funciones.jar[m
[32m+[m[32mdist.javadoc.dir=${dist.dir}/javadoc[m
[32m+[m[32mexcludes=[m
[32m+[m[32mincludes=**[m
[32m+[m[32mjar.compress=false[m
[32m+[m[32mjavac.classpath=[m
[32m+[m[32m# Space-separated list of extra javac options[m
[32m+[m[32mjavac.compilerargs=[m
[32m+[m[32mjavac.deprecation=false[m
[32m+[m[32mjavac.external.vm=true[m
[32m+[m[32mjavac.processorpath=\[m
[32m+[m[32m    ${javac.classpath}[m
[32m+[m[32mjavac.source=1.8[m
[32m+[m[32mjavac.target=1.8[m
[32m+[m[32mjavac.test.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32mjavac.test.processorpath=\[m
[32m+[m[32m    ${javac.test.classpath}[m
[32m+[m[32mjavadoc.additionalparam=[m
[32m+[m[32mjavadoc.author=false[m
[32m+[m[32mjavadoc.encoding=${source.encoding}[m
[32m+[m[32mjavadoc.noindex=false[m
[32m+[m[32mjavadoc.nonavbar=false[m
[32m+[m[32mjavadoc.notree=false[m
[32m+[m[32mjavadoc.private=false[m
[32m+[m[32mjavadoc.splitindex=true[m
[32m+[m[32mjavadoc.use=true[m
[32m+[m[32mjavadoc.version=false[m
[32m+[m[32mjavadoc.windowtitle=[m
[32m+[m[32mmain.class=Volumen[m
[32m+[m[32mmanifest.file=manifest.mf[m
[32m+[m[32mmeta.inf.dir=${src.dir}/META-INF[m
[32m+[m[32mmkdist.disabled=false[m
[32m+[m[32mplatform.active=default_platform[m
[32m+[m[32mrun.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32m# Space-separated list of JVM arguments used when running the project.[m
[32m+[m[32m# You may also define separate properties like run-sys-prop.name=value instead of -Dname=value.[m
[32m+[m[32m# To set system properties for unit tests define test-sys-prop.name=value:[m
[32m+[m[32mrun.jvmargs=[m
[32m+[m[32mrun.test.classpath=\[m
[32m+[m[32m    ${javac.test.classpath}:\[m
[32m+[m[32m    ${build.test.classes.dir}[m
[32m+[m[32msource.encoding=UTF-8[m
[32m+[m[32msrc.dir=src[m
[32m+[m[32mtest.src.dir=test[m
[1mdiff --git a/Ciclo2/Funciones/nbproject/project.xml b/Ciclo2/Funciones/nbproject/project.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..021f2aa[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Funciones/nbproject/project.xml[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project xmlns="http://www.netbeans.org/ns/project/1">[m
[32m+[m[32m    <type>org.netbeans.modules.java.j2seproject</type>[m
[32m+[m[32m    <configuration>[m
[32m+[m[32m        <data xmlns="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <name>Funciones</name>[m
[32m+[m[32m            <source-roots>[m
[32m+[m[32m                <root id="src.dir"/>[m
[32m+[m[32m            </source-roots>[m
[32m+[m[32m            <test-roots>[m
[32m+[m[32m                <root id="test.src.dir"/>[m
[32m+[m[32m            </test-roots>[m
[32m+[m[32m        </data>[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Funciones/src/AreaVagon.java b/Ciclo2/Funciones/src/AreaVagon.java[m
[1mnew file mode 100644[m
[1mindex 0000000..66e8676[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Funciones/src/AreaVagon.java[m
[36m@@ -0,0 +1,84 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class AreaVagon {[m
[32m+[m[32m    public static double calcularAreaCirculo(Scanner scan){[m
[32m+[m[32m        System.out.println("\nIngrese radio de la rueda: ");[m
[32m+[m[32m        double radio = scan.nextDouble();[m
[32m+[m[32m        double areaCirculo = Math.PI*Math.pow(radio, 2);[m
[32m+[m[32m        return areaCirculo;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static double calcularAreaCoche(Scanner scan){[m[41m        [m
[32m+[m[32m        System.out.println("\nIngrese base del coche de pasajeros:");[m
[32m+[m[32m        double base = scan.nextDouble();[m
[32m+[m[32m        System.out.println("Ingrese altura del coche de pasajeros:");[m
[32m+[m[32m        double height = scan.nextDouble();[m
[32m+[m[32m        double areaRectangulo = base*height;[m
[32m+[m[32m        return areaRectangulo;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static double areaRuedas (Scanner scan){[m
[32m+[m[32m        System.out.println("\nIngrese numero de ruedas: ");[m[41m                                      [m
[32m+[m[32m        int numeroRuedas = scan.nextInt();[m
[32m+[m[41m                    [m
[32m+[m[32m        System.out.println("¿Las ruedas son iguales? Escriba \"SI\" en ese caso, sino escriba cualquier otra cosa.");[m
[32m+[m[32m        String verificacionRuedas = scan.next();[m
[32m+[m[41m                    [m
[32m+[m[32m        double areaTotalRuedas = 0;[m
[32m+[m[32m        if (verificacionRuedas.equalsIgnoreCase("SI")) {[m
[32m+[m[32m            areaTotalRuedas = numeroRuedas * calcularAreaCirculo(scan);[m
[32m+[m[32m        } else {[m
[32m+[m[32m            for (int i = 1; i <= numeroRuedas; i++) {[m
[32m+[m[32m                double areaRuedai = calcularAreaCirculo(scan);[m
[32m+[m[32m                System.out.println("El área de la rueda " + i + " es " + areaRuedai);[m
[32m+[m[32m                areaTotalRuedas += areaRuedai;[m[41m                    [m
[32m+[m[32m            }[m
[32m+[m[32m        }[m
[32m+[m[32m        return areaTotalRuedas;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static void procesamientoComando(Scanner scan) {[m
[32m+[m[32m        boolean flag = true;[m
[32m+[m[32m        while (flag) {[m[41m            [m
[32m+[m[32m            int option = scan.nextInt();[m
[32m+[m[32m            switch (option) {[m
[32m+[m[32m                case 1:[m
[32m+[m[32m                    System.out.println("\nEl area de la rueda es: " + calcularAreaCirculo(scan));[m
[32m+[m[32m                    break;[m
[32m+[m[32m                case 2:[m
[32m+[m[32m                    System.out.println("\nEl area del coche de pasajeros es: " + calcularAreaCoche(scan));[m
[32m+[m[32m                    break;[m
[32m+[m[32m                case 3:[m[41m                                                       [m
[32m+[m[32m                    double areaTotal = calcularAreaCoche(scan) + areaRuedas(scan);[m[41m                    [m
[32m+[m[32m                    System.out.println("\nEl area del vagón es: " + areaTotal);[m
[32m+[m[32m                    break;[m
[32m+[m[32m                case 4:[m
[32m+[m[32m                    flag = false;[m
[32m+[m[32m                    System.out.println("\n\nHasta luego.");[m
[32m+[m[32m                    break;[m
[32m+[m[32m            }[m[41m            [m
[32m+[m[32m        }[m[41m        [m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        Scanner scan = new Scanner(System.in);[m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("Escoja una opción: ");[m
[32m+[m[32m        System.out.println("1. Calcular area de una rueda.");[m
[32m+[m[32m        System.out.println("2. Calcular area del coche de pasajeros.");[m
[32m+[m[32m        System.out.println("3. Calcular total del vagon.");[m
[32m+[m[32m        System.out.println("4. Salir");[m
[32m+[m[41m        [m
[32m+[m[32m        procesamientoComando(scan);[m[41m              [m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Funciones/src/Carne.java b/Ciclo2/Funciones/src/Carne.java[m
[1mnew file mode 100644[m
[1mindex 0000000..c3f0437[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Funciones/src/Carne.java[m
[36m@@ -0,0 +1,54 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m[32mpublic class Carne {[m
[32m+[m[41m    [m
[32m+[m[32m    public static int pesoTotalPorCarne(Scanner scan){[m
[32m+[m[32m        System.out.println("\nIngrese tipo de carne: ");[m
[32m+[m[32m        String tipoCarne = scan.next();[m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("\nIngrese número de " + tipoCarne + "s :");[m
[32m+[m[32m        int numUnidades = scan.nextInt();[m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("\n¿Todas las(os) " + tipoCarne + "s pesan lo mismo?\nEsciba \"SI\" en ese caso, en caso contrario escriba cualquier otra cosa.");[m
[32m+[m[32m        String validacionPesoUnidades = scan.next();[m
[32m+[m[41m        [m
[32m+[m[32m        int pesoTotalCarne =0;[m
[32m+[m[32m        if (validacionPesoUnidades.equalsIgnoreCase("si")){[m
[32m+[m[32m            System.out.println("\nIngrese peso de los " + tipoCarne + "s en kg");[m
[32m+[m[32m            int pesoCadaUnidad = scan.nextInt();[m
[32m+[m[32m            pesoTotalCarne = numUnidades * pesoCadaUnidad;[m[41m            [m
[32m+[m[32m        } else {[m
[32m+[m[32m            for (int i = 1; i <= numUnidades; i++) {[m
[32m+[m[32m                System.out.println("\nIngrese peso de la(el) " + tipoCarne + " número " + i);[m
[32m+[m[32m                int pesoGallina_i = scan.nextInt();[m
[32m+[m[32m                pesoTotalCarne += pesoGallina_i;[m
[32m+[m[32m            }[m
[32m+[m[32m        }[m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("El peso total de " + tipoCarne + "s es de: " + pesoTotalCarne);[m[41m                [m
[32m+[m[32m        return pesoTotalCarne;[m[41m          [m
[32m+[m[32m    }[m[41m  [m
[32m+[m[41m       [m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m      Scanner scan = new Scanner(System.in);[m
[32m+[m[41m      [m
[32m+[m[32m        System.out.println("Ingrese el numero de carnes: ");[m
[32m+[m[32m        int numCarnes = scan.nextInt();[m
[32m+[m[41m        [m
[32m+[m[32m        int pesoTotalCarnes = 0;[m
[32m+[m[32m        for (int i = 1; i <= numCarnes; i++) {[m
[32m+[m[32m            int totalPorCarne = pesoTotalPorCarne(scan);[m
[32m+[m[32m            pesoTotalCarnes += totalPorCarne;[m[41m             [m
[32m+[m[32m        }[m
[32m+[m[32m        System.out.println("El peso total de carne  es de: " + pesoTotalCarnes);[m
[32m+[m[32m    }[m[41m         [m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Funciones/src/Covid19.java b/Ciclo2/Funciones/src/Covid19.java[m
[1mnew file mode 100644[m
[1mindex 0000000..0b8b8f2[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Funciones/src/Covid19.java[m
[36m@@ -0,0 +1,29 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class Covid19 {[m
[32m+[m[32m    public static int calculoContagiados(int contagiados, int tiempo) {[m
[32m+[m[32m        return (contagiados * (int) Math.pow(2,tiempo));[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        Scanner scan = new Scanner(System.in);[m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("Ingrese el numero de contagiados actuales: ");[m
[32m+[m[32m        int contagiados = scan.nextInt();[m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("Ingrese el numero de días para el que quiere conocer la cantidad de contagiados, a partir de hoy: ");[m
[32m+[m[32m        int tiempo = scan.nextInt();[m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("El numero de contagiados en " + tiempo + "días, será de: " + calculoContagiados(contagiados, tiempo) + " contagiados.");[m[41m                             [m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Funciones/src/Prestamo.java b/Ciclo2/Funciones/src/Prestamo.java[m
[1mnew file mode 100644[m
[1mindex 0000000..cf854b0[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Funciones/src/Prestamo.java[m
[36m@@ -0,0 +1,34 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class Prestamo {[m
[32m+[m[41m    [m
[32m+[m[32m    public static double capitalFinal(int capitalInicial, int tiempo , double interes) {[m
[32m+[m[32m        return (capitalInicial * Math.pow(1 + (interes/100.0), tiempo));[m[41m        [m
[32m+[m[32m    }[m[41m    [m
[32m+[m[41m    [m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[41m        [m
[32m+[m[32m        Scanner scan = new Scanner(System.in);[m
[32m+[m[32m        System.out.println("Porfavor ingrese el capital que fue prestado: ");[m
[32m+[m[32m        int capitalInicial = scan.nextInt();[m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("Porfavor ingrese el tiempo en que deberá pagarse en meses:");[m
[32m+[m[32m        int tiempo = scan.nextInt();[m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("Porfavor ingrese el interés compuesto mensual:");[m
[32m+[m[32m        double interes = scan.nextDouble();[m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("Al cabo de " + tiempo + " meses, usted deberá pagar $" + capitalFinal(capitalInicial, tiempo, interes));[m
[32m+[m[41m        [m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Funciones/src/Volumen.java b/Ciclo2/Funciones/src/Volumen.java[m
[1mnew file mode 100644[m
[1mindex 0000000..39c9116[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Funciones/src/Volumen.java[m
[36m@@ -0,0 +1,63 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class Volumen {[m
[32m+[m[32m    public static double calcularVolumenEsfera(Scanner scan){[m
[32m+[m[32m        System.out.println("Ingrese radio de la esfera:");[m
[32m+[m[32m        double radio = scan.nextDouble();[m
[32m+[m[32m        double volumenEsfera = (4.0/3.0)*Math.PI*Math.pow(radio, 3);[m
[32m+[m[32m        return volumenEsfera;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static double calcularVolumenCono(Scanner scan){[m
[32m+[m[32m        System.out.println("Ingrese radio del cono:");[m
[32m+[m[32m        double radio = scan.nextDouble();[m
[32m+[m[32m        System.out.println("Ingrese altura del cono:");[m
[32m+[m[32m        double height = scan.nextDouble();[m
[32m+[m[32m        double volumenCono = (Math.PI*Math.pow(radio,2)*height)/3.0;[m
[32m+[m[32m        return volumenCono;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static void procesamientoComando(Scanner scan) {[m
[32m+[m[32m        boolean flag = true;[m
[32m+[m[32m        while (flag) {[m[41m            [m
[32m+[m[32m            int option = scan.nextInt();[m
[32m+[m[32m            switch (option) {[m
[32m+[m[32m                case 1:[m
[32m+[m[32m                    System.out.println("El volumen de la esfera es: " + calcularVolumenEsfera(scan));[m
[32m+[m[32m                    break;[m
[32m+[m[32m                case 2:[m
[32m+[m[32m                    System.out.println("El volumen del cono es: " + calcularVolumenCono(scan));[m
[32m+[m[32m                    break;[m
[32m+[m[32m                case 3:[m
[32m+[m[32m                    double volumenTotal = calcularVolumenCono(scan) + calcularVolumenEsfera(scan);[m
[32m+[m[32m                    System.out.println("El volumen de la figura es: " + volumenTotal);[m
[32m+[m[32m                    break;[m
[32m+[m[32m                case 4:[m
[32m+[m[32m                    flag = false;[m
[32m+[m[32m                    System.out.println("Hasta luego.");[m
[32m+[m[32m                    break;[m
[32m+[m[32m            }[m[41m            [m
[32m+[m[32m        }[m[41m        [m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        Scanner scan = new Scanner(System.in);[m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("Escoja una opción: ");[m
[32m+[m[32m        System.out.println("1. Calcular volumen de esfera");[m
[32m+[m[32m        System.out.println("2. Calcular volumen de cono");[m
[32m+[m[32m        System.out.println("3. Calcular volumen total");[m
[32m+[m[32m        System.out.println("4. Salir");[m
[32m+[m[32m        procesamientoComando(scan);[m[41m              [m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Funciones/src/Vueltas.java b/Ciclo2/Funciones/src/Vueltas.java[m
[1mnew file mode 100644[m
[1mindex 0000000..4f8e6c8[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Funciones/src/Vueltas.java[m
[36m@@ -0,0 +1,62 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m[32mpublic class Vueltas {[m
[32m+[m[41m    [m
[32m+[m[32m    public static int costoProducto(Scanner scan){[m
[32m+[m[32m        System.out.println("\nIngrese el producto: ");[m
[32m+[m[32m        String producto = scan.next();[m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("\nIngrese número de productos: ");[m
[32m+[m[32m        int numUnidades = scan.nextInt();[m[41m     [m
[32m+[m[41m        [m
[32m+[m[32m        System.out.println("Ingrese el costo de l producto: ");[m
[32m+[m[32m        int costoProducto = scan.nextInt();[m
[32m+[m[41m        [m
[32m+[m[32m        int costoTotalProducto = costoProducto * numUnidades ;[m
[32m+[m[32m        System.out.println("El costo total del producto \"" + producto + "\" es de $: " + costoTotalProducto);[m[41m    [m
[32m+[m[32m        return costoTotalProducto;[m
[32m+[m[41m            [m
[32m+[m[32m    }[m[41m  [m
[32m+[m[41m    [m
[32m+[m[32m    public static int calculoCostoTotal(Scanner scan) {[m
[32m+[m[32m        System.out.println("Ingrese el numero de productos diferentes: ");[m
[32m+[m[32m        int numProductosDiferentes = scan.nextInt();[m
[32m+[m[41m        [m
[32m+[m[32m        int costoTotal = 0;[m
[32m+[m[32m        for (int i = 1; i <= numProductosDiferentes; i++) {[m
[32m+[m[32m            int totalPorProducto = costoProducto(scan);[m[41m            [m
[32m+[m[32m            costoTotal += totalPorProducto;[m[41m             [m
[32m+[m[32m        }[m
[32m+[m[32m        System.out.println("El costo total de los productos es de: " + costoTotal);[m
[32m+[m[32m        return costoTotal;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static void calculoVueltas(Scanner scan, int costoTotal) {[m
[32m+[m[32m        System.out.println("\nPor favor ingrese el valor del billete: ");[m
[32m+[m[32m        int billete = scan.nextInt();[m
[32m+[m[41m        [m
[32m+[m[32m        if (billete > costoTotal) {[m
[32m+[m[32m            System.out.println("Sus vueltas son: $" + (billete - costoTotal));[m
[32m+[m[32m        } else if (billete < costoTotal) {[m
[32m+[m[32m            System.out.println("El dinero no es suficiente. Queda debiendo $" + (costoTotal - billete));[m
[32m+[m[32m        } else {[m
[32m+[m[32m            System.out.println("Ha pagado el valor exacto, no debe ni tiene vueltas.");[m
[32m+[m[32m        }[m[41m        [m
[32m+[m[32m        System.out.println("Gracias por usar nuestro servicio. Feliz día.");[m
[32m+[m[32m    }[m
[32m+[m[41m       [m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m      Scanner scan = new Scanner(System.in);[m
[32m+[m[32m        int total = calculoCostoTotal(scan);[m
[32m+[m[32m        calculoVueltas(scan, total);[m[41m                  [m
[32m+[m[32m    }[m[41m         [m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Inventario/build.xml b/Ciclo2/Inventario/build.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..ea7133d[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Inventario/build.xml[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!-- You may freely edit this file. See commented blocks below for -->[m
[32m+[m[32m<!-- some examples of how to customize the build. -->[m
[32m+[m[32m<!-- (If you delete it and reopen the project it will be recreated.) -->[m
[32m+[m[32m<!-- By default, only the Clean and Build commands use this build script. -->[m
[32m+[m[32m<!-- Commands such as Run, Debug, and Test only use this build script if -->[m
[32m+[m[32m<!-- the Compile on Save feature is turned off for the project. -->[m
[32m+[m[32m<!-- You can turn off the Compile on Save (or Deploy on Save) setting -->[m
[32m+[m[32m<!-- in the project's Project Properties dialog box.-->[m
[32m+[m[32m<project name="Inventario" default="default" basedir=".">[m
[32m+[m[32m    <description>Builds, tests, and runs the project Inventario.</description>[m
[32m+[m[32m    <import file="nbproject/build-impl.xml"/>[m
[32m+[m[32m    <!--[m
[32m+[m
[32m+[m[32m    There exist several targets which are by default empty and which can be[m[41m [m
[32m+[m[32m    used for execution of your tasks. These targets are usually executed[m[41m [m
[32m+[m[32m    before and after some main targets. They are:[m[41m [m
[32m+[m
[32m+[m[32m      -pre-init:                 called before initialization of project properties[m
[32m+[m[32m      -post-init:                called after initialization of project properties[m
[32m+[m[32m      -pre-compile:              called before javac compilation[m
[32m+[m[32m      -post-compile:             called after javac compilation[m
[32m+[m[32m      -pre-compile-single:       called before javac compilation of single file[m
[32m+[m[32m      -post-compile-single:      called after javac compilation of single file[m
[32m+[m[32m      -pre-compile-test:         called before javac compilation of JUnit tests[m
[32m+[m[32m      -post-compile-test:        called after javac compilation of JUnit tests[m
[32m+[m[32m      -pre-compile-test-single:  called before javac compilation of single JUnit test[m
[32m+[m[32m      -post-compile-test-single: called after javac compilation of single JUunit test[m
[32m+[m[32m      -pre-jar:                  called before JAR building[m
[32m+[m[32m      -post-jar:                 called after JAR building[m
[32m+[m[32m      -post-clean:               called after cleaning build products[m
[32m+[m
[32m+[m[32m    (Targets beginning with '-' are not intended to be called on their own.)[m
[32m+[m
[32m+[m[32m    Example of inserting an obfuscator after compilation could look like this:[m
[32m+[m
[32m+[m[32m        <target name="-post-compile">[m
[32m+[m[32m            <obfuscate>[m
[32m+[m[32m                <fileset dir="${build.classes.dir}"/>[m
[32m+[m[32m            </obfuscate>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    For list of available properties check the imported[m[41m [m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m
[32m+[m[32m    Another way to customize the build is by overriding existing main targets.[m
[32m+[m[32m    The targets of interest are:[m[41m [m
[32m+[m
[32m+[m[32m      -init-macrodef-javac:     defines macro for javac compilation[m
[32m+[m[32m      -init-macrodef-junit:     defines macro for junit execution[m
[32m+[m[32m      -init-macrodef-debug:     defines macro for class debugging[m
[32m+[m[32m      -init-macrodef-java:      defines macro for class execution[m
[32m+[m[32m      -do-jar:                  JAR building[m
[32m+[m[32m      run:                      execution of project[m[41m [m
[32m+[m[32m      -javadoc-build:           Javadoc generation[m
[32m+[m[32m      test-report:              JUnit report generation[m
[32m+[m
[32m+[m[32m    An example of overriding the target for project execution could look like this:[m
[32m+[m
[32m+[m[32m        <target name="run" depends="Inventario-impl.jar">[m
[32m+[m[32m            <exec dir="bin" executable="launcher.exe">[m
[32m+[m[32m                <arg file="${dist.jar}"/>[m
[32m+[m[32m            </exec>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    Notice that the overridden target depends on the jar target and not only on[m[41m [m
[32m+[m[32m    the compile target as the regular run target does. Again, for a list of available[m[41m [m
[32m+[m[32m    properties which you can use, check the target you are overriding in the[m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m[32m    -->[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Inventario/build/classes/.netbeans_automatic_build b/Ciclo2/Inventario/build/classes/.netbeans_automatic_build[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/Ciclo2/Inventario/build/classes/.netbeans_update_resources b/Ciclo2/Inventario/build/classes/.netbeans_update_resources[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/Ciclo2/Inventario/build/classes/inventario/Comercial.class b/Ciclo2/Inventario/build/classes/inventario/Comercial.class[m
[1mnew file mode 100644[m
[1mindex 0000000..eef8306[m
Binary files /dev/null and b/Ciclo2/Inventario/build/classes/inventario/Comercial.class differ
[1mdiff --git a/Ciclo2/Inventario/build/classes/inventario/Inventario.class b/Ciclo2/Inventario/build/classes/inventario/Inventario.class[m
[1mnew file mode 100644[m
[1mindex 0000000..6ac132c[m
Binary files /dev/null and b/Ciclo2/Inventario/build/classes/inventario/Inventario.class differ
[1mdiff --git a/Ciclo2/Inventario/build/classes/inventario/Particular.class b/Ciclo2/Inventario/build/classes/inventario/Particular.class[m
[1mnew file mode 100644[m
[1mindex 0000000..1f431bb[m
Binary files /dev/null and b/Ciclo2/Inventario/build/classes/inventario/Particular.class differ
[1mdiff --git a/Ciclo2/Inventario/build/classes/inventario/Vehiculo.class b/Ciclo2/Inventario/build/classes/inventario/Vehiculo.class[m
[1mnew file mode 100644[m
[1mindex 0000000..29e3665[m
Binary files /dev/null and b/Ciclo2/Inventario/build/classes/inventario/Vehiculo.class differ
[1mdiff --git a/Ciclo2/Inventario/manifest.mf b/Ciclo2/Inventario/manifest.mf[m
[1mnew file mode 100644[m
[1mindex 0000000..328e8e5[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Inventario/manifest.mf[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mManifest-Version: 1.0[m
[32m+[m[32mX-COMMENT: Main-Class will be added automatically by build[m
[32m+[m
[1mdiff --git a/Ciclo2/Inventario/nbproject/build-impl.xml b/Ciclo2/Inventario/nbproject/build-impl.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..ea1f30c[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Inventario/nbproject/build-impl.xml[m
[36m@@ -0,0 +1,1420 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!--[m
[32m+[m[32m*** GENERATED FROM project.xml - DO NOT EDIT  ***[m
[32m+[m[32m***         EDIT ../build.xml INSTEAD         ***[m
[32m+[m
[32m+[m[32mFor the purpose of easier reading the script[m
[32m+[m[32mis divided into following sections:[m
[32m+[m
[32m+[m[32m  - initialization[m
[32m+[m[32m  - compilation[m
[32m+[m[32m  - jar[m
[32m+[m[32m  - execution[m
[32m+[m[32m  - debugging[m
[32m+[m[32m  - javadoc[m
[32m+[m[32m  - test compilation[m
[32m+[m[32m  - test execution[m
[32m+[m[32m  - test debugging[m
[32m+[m[32m  - applet[m
[32m+[m[32m  - cleanup[m
[32m+[m
[32m+[m[32m        -->[m
[32m+[m[32m<project xmlns:j2seproject1="http://www.netbeans.org/ns/j2se-project/1" xmlns:j2seproject3="http://www.netbeans.org/ns/j2se-project/3" xmlns:jaxrpc="http://www.netbeans.org/ns/j2se-project/jax-rpc" basedir=".." default="default" name="Inventario-impl">[m
[32m+[m[32m    <fail message="Please build using Ant 1.8.0 or higher.">[m
[32m+[m[32m        <condition>[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <antversion atleast="1.8.0"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </fail>[m
[32m+[m[32m    <target depends="test,jar,javadoc" description="Build and test whole project." name="default"/>[m
[32m+[m[32m    <!--[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m                INITIALIZATION SECTION[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init" name="-init-private">[m
[32m+[m[32m        <property file="nbproject/private/config.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/private.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private" name="-init-user">[m
[32m+[m[32m        <property file="${user.properties.file}"/>[m
[32m+[m[32m        <!-- The two properties below are usually overridden -->[m
[32m+[m[32m        <!-- by the active platform. Just a fallback. -->[m
[32m+[m[32m        <property name="default.javac.source" value="1.6"/>[m
[32m+[m[32m        <property name="default.javac.target" value="1.6"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user" name="-init-project">[m
[32m+[m[32m        <property file="nbproject/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/project.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-init-macrodef-property" name="-do-init">[m
[32m+[m[32m        <property name="platform.java" value="${java.home}/bin/java"/>[m
[32m+[m[32m        <available file="${manifest.file}" property="manifest.available"/>[m
[32m+[m[32m        <condition property="splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${application.splash}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${application.splash}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${main.class}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javac.profile"/>[m
[32m+[m[32m                <length length="0" string="${javac.profile}" when="greater"/>[m
[32m+[m[32m                <matches pattern="((1\.[89])|9)(\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${jar.archive.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <istrue value="${not.archive.disabled}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.mkdist">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="do.archive"/>[m
[32m+[m[32m                <isset property="libs.CopyLibs.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${mkdist.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+manifest.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="manifest.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="splashscreen.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="profile.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.tests">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${test.src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.sources">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="netbeans.home+have.tests">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="netbeans.home"/>[m
[32m+[m[32m                <isset property="have.tests"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="no.javadoc.preview">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.preview"/>[m
[32m+[m[32m                <isfalse value="${javadoc.preview}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="run.jvmargs" value=""/>[m
[32m+[m[32m        <property name="run.jvmargs.ide" value=""/>[m
[32m+[m[32m        <property name="javac.compilerargs" value=""/>[m
[32m+[m[32m        <property name="work.dir" value="${basedir}"/>[m
[32m+[m[32m        <condition property="no.deps">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${no.dependencies}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javac.debug" value="true"/>[m
[32m+[m[32m        <property name="javadoc.preview" value="true"/>[m
[32m+[m[32m        <property name="application.args" value=""/>[m
[32m+[m[32m        <property name="source.encoding" value="${file.encoding}"/>[m
[32m+[m[32m        <property name="runtime.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="manifest.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <condition property="javadoc.encoding.used" value="${javadoc.encoding}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.encoding"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${javadoc.encoding}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javadoc.encoding.used" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="includes" value="**"/>[m
[32m+[m[32m        <property name="excludes" value=""/>[m
[32m+[m[32m        <property name="do.depend" value="false"/>[m
[32m+[m[32m        <condition property="do.depend.true">[m
[32m+[m[32m            <istrue value="${do.depend}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <path id="endorsed.classpath.path" path="${endorsed.classpath}"/>[m
[32m+[m[32m        <condition else="" property="endorsed.classpath.cmd.line.arg" value="-Xbootclasspath/p:'${toString:endorsed.classpath.path}'">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="javac.profile.cmd.line.arg" value="-profile ${javac.profile}">[m
[32m+[m[32m            <isset property="profile.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="jdkBug6558476">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <matches pattern="1\.[56]" string="${java.specification.version}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <os family="unix"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="javac.fork">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <istrue value="${jdkBug6558476}"/>[m
[32m+[m[32m                <istrue value="${javac.external.vm}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="jar.index" value="false"/>[m
[32m+[m[32m        <property name="jar.index.metainf" value="${jar.index}"/>[m
[32m+[m[32m        <property name="copylibs.rebase" value="true"/>[m
[32m+[m[32m        <available file="${meta.inf.dir}/persistence.xml" property="has.persistence.xml"/>[m
[32m+[m[32m        <condition property="junit.available">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available classname="org.junit.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m                <available classname="junit.framework.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="testng.available">[m
[32m+[m[32m            <available classname="org.testng.annotations.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="junit+testng.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <istrue value="${testng.available}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="testng" property="testng.mode" value="mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="testng.debug.mode" value="-mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="java.failonerror" value="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init" name="-init-check">[m
[32m+[m[32m        <fail unless="src.dir">Must set src.dir</fail>[m
[32m+[m[32m        <fail unless="test.src.dir">Must set test.src.dir</fail>[m
[32m+[m[32m        <fail unless="build.dir">Must set build.dir</fail>[m
[32m+[m[32m        <fail unless="dist.dir">Must set dist.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.dir">Must set build.classes.dir</fail>[m
[32m+[m[32m        <fail unless="dist.javadoc.dir">Must set dist.javadoc.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.classes.dir">Must set build.test.classes.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.results.dir">Must set build.test.results.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.excludes">Must set build.classes.excludes</fail>[m
[32m+[m[32m        <fail unless="dist.jar">Must set dist.jar</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-property">[m
[32m+[m[32m        <macrodef name="property" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-macrodef-javac-with-processors">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <mkdir dir="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <compilerarg value="-processorpath"/>[m
[32m+[m[32m                    <compilerarg path="@{processorpath}:${empty.dir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.processors.internal}"/>[m
[32m+[m[32m                    <compilerarg line="${annotation.processing.processor.options}"/>[m
[32m+[m[32m                    <compilerarg value="-s"/>[m
[32m+[m[32m                    <compilerarg path="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.proc.none.internal}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" name="-init-macrodef-javac-without-processors" unless="ap.supported.internal">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-javac-with-processors,-init-macrodef-javac-without-processors" name="-init-macrodef-javac">[m
[32m+[m[32m        <macrodef name="depend" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <depend cache="${build.dir}/depcache" destdir="@{destdir}" excludes="${excludes}" includes="${includes}" srcdir="@{srcdir}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </depend>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="force-recompile" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <fail unless="javac.includes">Must set javac.includes</fail>[m
[32m+[m[32m                <pathconvert pathsep="${line.separator}" property="javac.includes.binary">[m
[32m+[m[32m                    <path>[m
[32m+[m[32m                        <filelist dir="@{destdir}" files="${javac.includes}"/>[m
[32m+[m[32m                    </path>[m
[32m+[m[32m                    <globmapper from="*.java" to="*.class"/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <tempfile deleteonexit="true" property="javac.includesfile.binary"/>[m
[32m+[m[32m                <echo file="${javac.includesfile.binary}" message="${javac.includes.binary}"/>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <files includesfile="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <fileset file="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-init">[m
[32m+[m[32m        <condition else="false" property="nb.junit.batch" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="nb.junit.single" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <isset property="test.method"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-test-properties">[m
[32m+[m[32m        <property name="test.binaryincludes" value="&lt;nothing&gt;"/>[m
[32m+[m[32m        <property name="test.binarytestincludes" value=""/>[m
[32m+[m[32m        <property name="test.binaryexcludes" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${nb.junit.single}" name="-init-macrodef-junit-single" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-batch" unless="${nb.junit.single}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-init,-init-macrodef-junit-single, -init-macrodef-junit-batch" if="${junit.available}" name="-init-macrodef-junit"/>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng">[m
[32m+[m[32m        <macrodef name="testng" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="" property="testng.methods.arg" value="@{testincludes}.@{testmethods}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <union id="test.set">[m
[32m+[m[32m                    <fileset dir="${test.src.dir}" excludes="@{excludes},**/*.xml,${excludes}" includes="@{includes}">[m
[32m+[m[32m                        <filename name="@{testincludes}"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </union>[m
[32m+[m[32m                <taskdef classname="org.testng.TestNGAntTask" classpath="${run.test.classpath}" name="testng"/>[m
[32m+[m[32m                <testng classfilesetref="test.set" failureProperty="tests.failed" listeners="org.testng.reporters.VerboseReporter" methods="${testng.methods.arg}" mode="${testng.mode}" outputdir="${build.test.results.dir}" suitename="Inventario" testname="TestNG tests" workingDir="${work.dir}">[m
[32m+[m[32m                    <xmlfileset dir="${build.test.classes.dir}" includes="@{testincludes}"/>[m
[32m+[m[32m                    <propertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </propertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-test-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <echo>No tests executed.</echo>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit" if="${junit.available}" name="-init-macrodef-junit-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng" if="${testng.available}" name="-init-macrodef-testng-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-impl,-init-macrodef-junit-impl,-init-macrodef-testng-impl" name="-init-macrodef-test">[m
[32m+[m[32m        <macrodef name="test" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-debug" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-debug-batch">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug,-init-macrodef-junit-debug-batch" if="${junit.available}" name="-init-macrodef-junit-debug-impl">[m
[32m+[m[32m        <macrodef name="test-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit-debug excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng-debug">[m
[32m+[m[32m        <macrodef name="testng-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="-testclass @{testClass}" property="test.class.or.method" value="-methods @{testClass}.@{testMethod}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <condition else="-suitename Inventario -testname @{testClass} ${test.class.or.method}" property="testng.cmd.args" value="@{testClass}">[m
[32m+[m[32m                    <matches pattern=".*\.xml" string="@{testClass}"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <delete dir="${build.test.results.dir}" quiet="true"/>[m
[32m+[m[32m                <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m                <j2seproject3:debug classname="org.testng.TestNG" classpath="${debug.test.classpath}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <customize2/>[m
[32m+[m[32m                        <jvmarg value="-ea"/>[m
[32m+[m[32m                        <arg line="${testng.debug.mode}"/>[m
[32m+[m[32m                        <arg line="-d ${build.test.results.dir}"/>[m
[32m+[m[32m                        <arg line="-listener org.testng.reporters.VerboseReporter"/>[m
[32m+[m[32m                        <arg line="${testng.cmd.args}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug" if="${testng.available}" name="-init-macrodef-testng-debug-impl">[m
[32m+[m[32m        <macrodef name="testng-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element implicit="true" name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2/>[m
[32m+[m[32m                </j2seproject3:testng-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug-impl" if="${junit.available}" name="-init-macrodef-test-debug-junit">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-debug-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug-impl" if="${testng.available}" name="-init-macrodef-test-debug-testng">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug-impl testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2>[m
[32m+[m[32m                        <syspropertyset>[m
[32m+[m[32m                            <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                            <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                        </syspropertyset>[m
[32m+[m[32m                    </customize2>[m
[32m+[m[32m                </j2seproject3:testng-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-debug-junit,-init-macrodef-test-debug-testng" name="-init-macrodef-test-debug"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiling section; consider it deprecated[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile, -profile-init-check" if="profiler.info.jvmargs.agent" name="profile-init"/>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-init-macrodef-profile">[m
[32m+[m[32m        <macrodef name="resolve">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${env.@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="profile">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property environment="env"/>[m
[32m+[m[32m                <resolve name="profiler.current.path" value="${profiler.info.pathvar}"/>[m
[32m+[m[32m                <java classname="@{classname}" dir="${profiler.info.dir}" failonerror="${java.failonerror}" fork="true" jvm="${profiler.info.jvm}">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m                    <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m                    <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m                    <arg line="${application.args}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="${run.classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile" if="profiler.info.jvmargs.agent" name="-profile-init-check">[m
[32m+[m[32m        <fail unless="profiler.info.jvm">Must set JVM to use for profiling in profiler.info.jvm</fail>[m
[32m+[m[32m        <fail unless="profiler.info.jvmargs.agent">Must set profiler agent JVM arguments in profiler.info.jvmargs.agent</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB7.2 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-nbjpda">[m
[32m+[m[32m        <macrodef name="nbjpdastart" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="name"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="" name="stopclassname"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdastart addressproperty="jpda.address" name="@{name}" stopclassname="@{stopclassname}" transport="${debug-transport}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </nbjpdastart>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="nbjpdareload" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="dir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdareload>[m
[32m+[m[32m                    <fileset dir="@{dir}" includes="${fix.classes}">[m
[32m+[m[32m                        <include name="${fix.includes}*.class"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </nbjpdareload>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-debug-args">[m
[32m+[m[32m        <property name="version-output" value="java version &quot;${ant.java.version}"/>[m
[32m+[m[32m        <condition property="have-jdk-older-than-1.4">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.0"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.1"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.2"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.3"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="-Xdebug" property="debug-args-line" value="-Xdebug -Xnoagent -Djava.compiler=none">[m
[32m+[m[32m            <istrue value="${have-jdk-older-than-1.4}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="dt_socket" property="debug-transport-by-os" value="dt_shmem">[m
[32m+[m[32m            <os family="windows"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="${debug-transport-by-os}" property="debug-transport" value="${debug.transport}">[m
[32m+[m[32m            <isset property="debug.transport"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-debug">[m
[32m+[m[32m        <macrodef name="debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-java">[m
[32m+[m[32m        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${run.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="jvm" name="jvm"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-copylibs">[m
[32m+[m[32m        <macrodef name="copylibs" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${manifest.file}" name="manifest"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m                <pathconvert property="run.classpath.without.build.classes.dir">[m
[32m+[m[32m                    <path path="${run.classpath}"/>[m
[32m+[m[32m                    <map from="${build.classes.dir.resolved}" to=""/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <pathconvert pathsep=" " property="jar.classpath">[m
[32m+[m[32m                    <path path="${run.classpath.without.build.classes.dir}"/>[m
[32m+[m[32m                    <chainedmapper>[m
[32m+[m[32m                        <flattenmapper/>[m
[32m+[m[32m                        <filtermapper>[m
[32m+[m[32m                            <replacestring from=" " to="%20"/>[m
[32m+[m[32m                        </filtermapper>[m
[32m+[m[32m                        <globmapper from="*" to="lib/*"/>[m
[32m+[m[32m                    </chainedmapper>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <taskdef classname="org.netbeans.modules.java.j2seproject.copylibstask.CopyLibs" classpath="${libs.CopyLibs.classpath}" name="copylibs"/>[m
[32m+[m[32m                <copylibs compress="${jar.compress}" excludeFromCopy="${copylibs.excludes}" index="${jar.index}" indexMetaInf="${jar.index.metainf}" jarfile="${dist.jar}" manifest="@{manifest}" manifestencoding="UTF-8" rebase="${copylibs.rebase}" runtimeclasspath="${run.classpath.without.build.classes.dir}">[m
[32m+[m[32m                    <fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m                    <manifest>[m
[32m+[m[32m                        <attribute name="Class-Path" value="${jar.classpath}"/>[m
[32m+[m[32m                        <customize/>[m
[32m+[m[32m                    </manifest>[m
[32m+[m[32m                </copylibs>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-presetdef-jar">[m
[32m+[m[32m        <presetdef name="jar" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <jar compress="${jar.compress}" index="${jar.index}" jarfile="${dist.jar}" manifestencoding="UTF-8">[m
[32m+[m[32m                <j2seproject1:fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m            </jar>[m
[32m+[m[32m        </presetdef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-ap-cmdline-properties">[m
[32m+[m[32m        <property name="annotation.processing.enabled" value="true"/>[m
[32m+[m[32m        <property name="annotation.processing.processors.list" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.processor.options" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.run.all.processors" value="true"/>[m
[32m+[m[32m        <property name="javac.processorpath" value="${javac.classpath}"/>[m
[32m+[m[32m        <property name="javac.test.processorpath" value="${javac.test.classpath}"/>[m
[32m+[m[32m        <condition property="ap.supported.internal" value="true">[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <matches pattern="1\.[0-5](\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-ap-cmdline-supported">[m
[32m+[m[32m        <condition else="" property="ap.processors.internal" value="-processor ${annotation.processing.processors.list}">[m
[32m+[m[32m            <isfalse value="${annotation.processing.run.all.processors}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="ap.proc.none.internal" value="-proc:none">[m
[32m+[m[32m            <isfalse value="${annotation.processing.enabled}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties,-init-ap-cmdline-supported" name="-init-ap-cmdline">[m
[32m+[m[32m        <property name="ap.cmd.line.internal" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init,-post-init,-init-check,-init-macrodef-property,-init-macrodef-javac,-init-macrodef-test,-init-macrodef-test-debug,-init-macrodef-nbjpda,-init-macrodef-debug,-init-macrodef-java,-init-presetdef-jar,-init-ap-cmdline" name="init"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===================[m
[32m+[m[32m                COMPILATION SECTION[m
[32m+[m[32m                ===================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-jar-init" unless="built-jar.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-jar.properties" name="built-jar.properties"/>[m
[32m+[m[32m        <delete file="${built-jar.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.jar.${basedir}" name="-warn-already-built-jar">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: Inventario was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-jar-init" name="deps-jar" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-jar.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-jar.properties}" prefix="already.built.jar."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-jar"/>[m
[32m+[m[32m        <propertyfile file="${built-jar.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-check-automatic-build,-clean-after-automatic-build" name="-verify-automatic-build"/>[m
[32m+[m[32m    <target depends="init" name="-check-automatic-build">[m
[32m+[m[32m        <available file="${build.classes.dir}/.netbeans_automatic_build" property="netbeans.automatic.build"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.automatic.build" name="-clean-after-automatic-build">[m
[32m+[m[32m        <antcall target="clean"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar" name="-pre-pre-compile">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-depend">[m
[32m+[m[32m        <pathconvert property="build.generated.subdirs">[m
[32m+[m[32m            <dirset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="*"/>[m
[32m+[m[32m            </dirset>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <j2seproject3:depend srcdir="${src.dir}:${build.generated.subdirs}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile,-pre-compile, -copy-persistence-xml,-compile-depend" if="have.sources" name="-do-compile">[m
[32m+[m[32m        <j2seproject3:javac gensrcdir="${build.generated.sources.dir}"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="has.persistence.xml" name="-copy-persistence-xml">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}/META-INF">[m
[32m+[m[32m            <fileset dir="${meta.inf.dir}" includes="persistence.xml orm.xml"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile,-do-compile,-post-compile" description="Compile project." name="compile"/>[m
[32m+[m[32m    <target name="-pre-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile" name="-do-compile-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile/>[m
[32m+[m[32m        <j2seproject3:javac excludes="" gensrcdir="${build.generated.sources.dir}" includes="${javac.includes}" sourcepath="${src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile-single,-do-compile-single,-post-compile-single" name="compile-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ====================[m
[32m+[m[32m                JAR BUILDING SECTION[m
[32m+[m[32m                ====================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" name="-pre-pre-jar">[m
[32m+[m[32m        <dirname file="${dist.jar}" property="dist.jar.dir"/>[m
[32m+[m[32m        <mkdir dir="${dist.jar.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive" name="-do-jar-create-manifest" unless="manifest.available">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <touch file="${tmp.manifest.file}" verbose="false"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive+manifest.available" name="-do-jar-copy-manifest">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <copy encoding="${manifest.encoding}" file="${manifest.file}" outputencoding="UTF-8" tofile="${tmp.manifest.file}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+main.class.available" name="-do-jar-set-mainclass">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Main-Class" value="${main.class}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+profile.available" name="-do-jar-set-profile">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Profile" value="${javac.profile}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+splashscreen.available" name="-do-jar-set-splashscreen">[m
[32m+[m[32m        <basename file="${application.splash}" property="splashscreen.basename"/>[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy failonerror="false" file="${application.splash}" todir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="SplashScreen-Image" value="META-INF/${splashscreen.basename}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-init-macrodef-copylibs,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.mkdist" name="-do-jar-copylibs">[m
[32m+[m[32m        <j2seproject3:copylibs manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <echo level="info">To run this application from the command line without Ant, try:</echo>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <echo level="info">java -jar "${dist.jar.resolved}"</echo>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.archive" name="-do-jar-jar" unless="do.mkdist">[m
[32m+[m[32m        <j2seproject1:jar manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <pathconvert property="run.classpath.with.dist.jar">[m
[32m+[m[32m            <path path="${run.classpath}"/>[m
[32m+[m[32m            <map from="${build.classes.dir.resolved}" to="${dist.jar.resolved}"/>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <condition else="" property="jar.usage.message" value="To run this application from the command line without Ant, try:${line.separator}${platform.java} -cp ${run.classpath.with.dist.jar} ${main.class}">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="debug" property="jar.usage.level" value="info">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <echo level="${jar.usage.level}" message="${jar.usage.message}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-do-jar-copylibs" if="do.archive" name="-do-jar-delete-manifest">[m
[32m+[m[32m        <delete>[m
[32m+[m[32m            <fileset file="${tmp.manifest.file}"/>[m
[32m+[m[32m        </delete>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-jar,-do-jar-delete-manifest" name="-do-jar-without-libraries"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-copylibs,-do-jar-delete-manifest" name="-do-jar-with-libraries"/>[m
[32m+[m[32m    <target name="-post-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar-without-libraries,-do-jar-with-libraries,-post-jar" name="-do-jar"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar,-post-jar" description="Build JAR." name="jar"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                EXECUTION SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" description="Run a main class." name="run">[m
[32m+[m[32m        <j2seproject1:java>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-do-not-recompile">[m
[32m+[m[32m        <property name="javac.includes.binary" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single" name="run-single">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single" name="run-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}" classpath="${run.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                DEBUGGING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger">[m
[32m+[m[32m        <j2seproject1:nbjpdastart name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-main-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile" name="-debug-start-debuggee">[m
[32m+[m[32m        <j2seproject3:debug>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger,-debug-start-debuggee" description="Debug project in IDE." if="netbeans.home" name="debug"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-stepinto">[m
[32m+[m[32m        <j2seproject1:nbjpdastart stopclassname="${main.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger-stepinto,-debug-start-debuggee" if="netbeans.home" name="debug-stepinto"/>[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-single">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-single" if="netbeans.home" name="debug-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single" if="netbeans.home" name="-debug-start-debuggee-main-test">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}" classpath="${debug.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-main-test,-debug-start-debuggee-main-test" if="netbeans.home" name="debug-test-with-main"/>[m
[32m+[m[32m    <target depends="init" name="-pre-debug-fix">[m
[32m+[m[32m        <fail unless="fix.includes">Must set fix.includes</fail>[m
[32m+[m[32m        <property name="javac.includes" value="${fix.includes}.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-single" if="netbeans.home" name="-do-debug-fix">[m
[32m+[m[32m        <j2seproject1:nbjpdareload/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix" if="netbeans.home" name="debug-fix"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                PROFILING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiler integration[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="profile-init,compile" description="Profile a project in the IDE." if="profiler.info.jvmargs.agent" name="-profile-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" description="Profile a selected class in the IDE." if="profiler.info.jvmargs.agent" name="-profile-single-pre72">[m
[32m+[m[32m        <fail unless="profile.class">Must select one file in the IDE or set profile.class</fail>[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="${profile.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" if="profiler.info.jvmargs.agent" name="-profile-applet-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </profile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-test-single" if="profiler.info.jvmargs.agent" name="-profile-test-single-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <junit dir="${profiler.info.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" jvm="${profiler.info.jvm}" showoutput="true">[m
[32m+[m[32m            <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m            <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m            <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m            <test name="${profile.class}"/>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <syspropertyset>[m
[32m+[m[32m                <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m            </syspropertyset>[m
[32m+[m[32m            <formatter type="brief" usefile="false"/>[m
[32m+[m[32m            <formatter type="xml"/>[m
[32m+[m[32m        </junit>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB72 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target if="netbeans.home" name="-profile-check">[m
[32m+[m[32m        <condition property="profiler.configured">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-agentpath:"/>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-javaagent:"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-pre72" description="Profile a project in the IDE." if="profiler.configured" name="profile" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-single-pre72" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-single" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-test-single-pre72" description="Profile a selected test in the IDE." name="profile-test-single"/>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected test in the IDE." if="profiler.configured" name="profile-test" unless="profiler.info.jvmargs">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="test-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-test-with-main"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-applet-pre72" if="profiler.configured" name="profile-applet" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-applet"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                JAVADOC SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.sources" name="-javadoc-build">[m
[32m+[m[32m        <mkdir dir="${dist.javadoc.dir}"/>[m
[32m+[m[32m        <condition else="" property="javadoc.endorsed.classpath.cmd.line.arg" value="-J${endorsed.classpath.cmd.line.arg}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath.cmd.line.arg"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath.cmd.line.arg}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="bug5101868workaround" value="*.java">[m
[32m+[m[32m            <matches pattern="1\.[56](\..*)?" string="${java.version}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <javadoc additionalparam="-J-Dfile.encoding=${file.encoding} ${javadoc.additionalparam}" author="${javadoc.author}" charset="UTF-8" destdir="${dist.javadoc.dir}" docencoding="UTF-8" encoding="${javadoc.encoding.used}" failonerror="true" noindex="${javadoc.noindex}" nonavbar="${javadoc.nonavbar}" notree="${javadoc.notree}" private="${javadoc.private}" source="${javac.source}" splitindex="${javadoc.splitindex}" use="${javadoc.use}" useexternalfile="true" version="${javadoc.version}" windowtitle="${javadoc.windowtitle}">[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${javac.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${bug5101868workaround},${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/*.java"/>[m
[32m+[m[32m                <exclude name="*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <arg line="${javadoc.endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m        </javadoc>[m
[32m+[m[32m        <copy todir="${dist.javadoc.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build" if="netbeans.home" name="-javadoc-browse" unless="no.javadoc.preview">[m
[32m+[m[32m        <nbbrowse file="${dist.javadoc.dir}/index.html"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build,-javadoc-browse" description="Build Javadoc." name="javadoc"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                TEST COMPILATION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" if="have.tests" name="-pre-pre-compile-test">[m
[32m+[m[32m        <mkdir dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-test-depend">[m
[32m+[m[32m        <j2seproject3:depend classpath="${javac.test.classpath}" destdir="${build.test.classes.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test,-compile-test-depend" if="have.tests" name="-do-compile-test">[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" processorpath="${javac.test.processorpath}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test,-do-compile-test,-post-compile-test" name="compile-test"/>[m
[32m+[m[32m    <target name="-pre-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test-single" if="have.tests" name="-do-compile-test-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile destdir="${build.test.classes.dir}"/>[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" excludes="" includes="${javac.includes}" processorpath="${javac.test.processorpath}" sourcepath="${test.src.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test-single,-do-compile-test-single,-post-compile-test-single" name="compile-test-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST EXECUTION SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run" if="have.tests" name="-do-test-run">[m
[32m+[m[32m        <j2seproject3:test includes="${includes}" testincludes="**/*Test.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run" if="have.tests" name="-post-test-run">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="test-report"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home+have.tests" name="-test-browse"/>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run,test-report,-post-test-run,-test-browse" description="Run unit tests." name="test"/>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run-single">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${test.includes}" testincludes="${test.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single" if="have.tests" name="-post-test-run-single">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single,-post-test-run-single" description="Run single unit test." name="test-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single-method">[m
[32m+[m[32m        <fail unless="test.class">Must select some files in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${javac.includes}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method" if="have.tests" name="-post-test-run-single-method">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method,-post-test-run-single-method" description="Run single unit test." name="test-single-method"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST DEBUGGING SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testincludes="${javac.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test-method">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testMethod="${test.method}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test" if="netbeans.home+have.tests" name="-debug-start-debugger-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${test.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test" name="debug-test"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test-method" name="debug-test-method"/>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-test-single" if="netbeans.home" name="-do-debug-fix-test">[m
[32m+[m[32m        <j2seproject1:nbjpdareload dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix-test" if="netbeans.home" name="debug-fix-test"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET EXECUTION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" name="run-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject1:java classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET DEBUGGING  SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-applet" if="netbeans.home" name="debug-applet"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                CLEANUP SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-clean-init" unless="built-clean.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-clean.properties" name="built-clean.properties"/>[m
[32m+[m[32m        <delete file="${built-clean.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.clean.${basedir}" name="-warn-already-built-clean">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: Inventario was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-clean-init" name="deps-clean" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-clean.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-clean.properties}" prefix="already.built.clean."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-clean"/>[m
[32m+[m[32m        <propertyfile file="${built-clean.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" name="-do-clean">[m
[32m+[m[32m        <delete dir="${build.dir}"/>[m
[32m+[m[32m        <delete dir="${dist.dir}" followsymlinks="false" includeemptydirs="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-clean">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-clean,-do-clean,-post-clean" description="Clean build products." name="clean"/>[m
[32m+[m[32m    <target name="-check-call-dep">[m
[32m+[m[32m        <property file="${call.built.properties}" prefix="already.built."/>[m
[32m+[m[32m        <condition property="should.call.dep">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="already.built.${call.subproject}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${call.script}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-check-call-dep" if="should.call.dep" name="-maybe-call-dep">[m
[32m+[m[32m        <ant antfile="${call.script}" inheritall="false" target="${call.target}">[m
[32m+[m[32m            <propertyset>[m
[32m+[m[32m                <propertyref prefix="transfer."/>[m
[32m+[m[32m                <mapper from="transfer.*" to="*" type="glob"/>[m
[32m+[m[32m            </propertyset>[m
[32m+[m[32m        </ant>[m
[32m+[m[32m    </target>[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Inventario/nbproject/genfiles.properties b/Ciclo2/Inventario/nbproject/genfiles.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..7346214[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Inventario/nbproject/genfiles.properties[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32mbuild.xml.data.CRC32=c808fe06[m
[32m+[m[32mbuild.xml.script.CRC32=e6bdf94d[m
[32m+[m[32mbuild.xml.stylesheet.CRC32=8064a381@1.80.1.48[m
[32m+[m[32m# This file is used by a NetBeans-based IDE to track changes in generated files such as build-impl.xml.[m
[32m+[m[32m# Do not edit this file. You may delete it but then the IDE will never regenerate such files for you.[m
[32m+[m[32mnbproject/build-impl.xml.data.CRC32=c808fe06[m
[32m+[m[32mnbproject/build-impl.xml.script.CRC32=bd02416d[m
[32m+[m[32mnbproject/build-impl.xml.stylesheet.CRC32=830a3534@1.80.1.48[m
[1mdiff --git a/Ciclo2/Inventario/nbproject/private/private.properties b/Ciclo2/Inventario/nbproject/private/private.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..d06644e[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Inventario/nbproject/private/private.properties[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32mcompile.on.save=true[m
[32m+[m[32muser.properties.file=C:\\Users\\User\\AppData\\Roaming\\NetBeans\\8.2\\build.properties[m
[1mdiff --git a/Ciclo2/Inventario/nbproject/private/private.xml b/Ciclo2/Inventario/nbproject/private/private.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..5ed8448[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Inventario/nbproject/private/private.xml[m
[36m@@ -0,0 +1,12 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project-private xmlns="http://www.netbeans.org/ns/project-private/1">[m
[32m+[m[32m    <editor-bookmarks xmlns="http://www.netbeans.org/ns/editor-bookmarks/2" lastBookmarkId="0"/>[m
[32m+[m[32m    <open-files xmlns="http://www.netbeans.org/ns/projectui-open-files/2">[m
[32m+[m[32m        <group>[m
[32m+[m[32m            <file>file:/E:/02.Estudio/05.MisionTIC2022/Ejercicios/MisionTIC2022/Ciclo2/Inventario/src/inventario/Vehiculo.java</file>[m
[32m+[m[32m            <file>file:/E:/02.Estudio/05.MisionTIC2022/Ejercicios/MisionTIC2022/Ciclo2/Inventario/src/inventario/Inventario.java</file>[m
[32m+[m[32m            <file>file:/E:/02.Estudio/05.MisionTIC2022/Ejercicios/MisionTIC2022/Ciclo2/Inventario/src/inventario/Particular.java</file>[m
[32m+[m[32m            <file>file:/E:/02.Estudio/05.MisionTIC2022/Ejercicios/MisionTIC2022/Ciclo2/Inventario/src/inventario/Comercial.java</file>[m
[32m+[m[32m        </group>[m
[32m+[m[32m    </open-files>[m
[32m+[m[32m</project-private>[m
[1mdiff --git a/Ciclo2/Inventario/nbproject/project.properties b/Ciclo2/Inventario/nbproject/project.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..d1d383f[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Inventario/nbproject/project.properties[m
[36m@@ -0,0 +1,74 @@[m
[32m+[m[32mannotation.processing.enabled=true[m
[32m+[m[32mannotation.processing.enabled.in.editor=false[m
[32m+[m[32mannotation.processing.processor.options=[m
[32m+[m[32mannotation.processing.processors.list=[m
[32m+[m[32mannotation.processing.run.all.processors=true[m
[32m+[m[32mannotation.processing.source.output=${build.generated.sources.dir}/ap-source-output[m
[32m+[m[32mbuild.classes.dir=${build.dir}/classes[m
[32m+[m[32mbuild.classes.excludes=**/*.java,**/*.form[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mbuild.dir=build[m
[32m+[m[32mbuild.generated.dir=${build.dir}/generated[m
[32m+[m[32mbuild.generated.sources.dir=${build.dir}/generated-sources[m
[32m+[m[32m# Only compile against the classpath explicitly listed here:[m
[32m+[m[32mbuild.sysclasspath=ignore[m
[32m+[m[32mbuild.test.classes.dir=${build.dir}/test/classes[m
[32m+[m[32mbuild.test.results.dir=${build.dir}/test/results[m
[32m+[m[32m# Uncomment to specify the preferred debugger connection transport:[m
[32m+[m[32m#debug.transport=dt_socket[m
[32m+[m[32mdebug.classpath=\[m
[32m+[m[32m    ${run.classpath}[m
[32m+[m[32mdebug.test.classpath=\[m
[32m+[m[32m    ${run.test.classpath}[m
[32m+[m[32m# Files in build.classes.dir which should be excluded from distribution jar[m
[32m+[m[32mdist.archive.excludes=[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mdist.dir=dist[m
[32m+[m[32mdist.jar=${dist.dir}/Inventario.jar[m
[32m+[m[32mdist.javadoc.dir=${dist.dir}/javadoc[m
[32m+[m[32mexcludes=[m
[32m+[m[32mincludes=**[m
[32m+[m[32mjar.compress=false[m
[32m+[m[32mjavac.classpath=[m
[32m+[m[32m# Space-separated list of extra javac options[m
[32m+[m[32mjavac.compilerargs=[m
[32m+[m[32mjavac.deprecation=false[m
[32m+[m[32mjavac.external.vm=true[m
[32m+[m[32mjavac.processorpath=\[m
[32m+[m[32m    ${javac.classpath}[m
[32m+[m[32mjavac.source=1.8[m
[32m+[m[32mjavac.target=1.8[m
[32m+[m[32mjavac.test.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32mjavac.test.processorpath=\[m
[32m+[m[32m    ${javac.test.classpath}[m
[32m+[m[32mjavadoc.additionalparam=[m
[32m+[m[32mjavadoc.author=false[m
[32m+[m[32mjavadoc.encoding=${source.encoding}[m
[32m+[m[32mjavadoc.noindex=false[m
[32m+[m[32mjavadoc.nonavbar=false[m
[32m+[m[32mjavadoc.notree=false[m
[32m+[m[32mjavadoc.private=false[m
[32m+[m[32mjavadoc.splitindex=true[m
[32m+[m[32mjavadoc.use=true[m
[32m+[m[32mjavadoc.version=false[m
[32m+[m[32mjavadoc.windowtitle=[m
[32m+[m[32mmain.class=inventario.Inventario[m
[32m+[m[32mmanifest.file=manifest.mf[m
[32m+[m[32mmeta.inf.dir=${src.dir}/META-INF[m
[32m+[m[32mmkdist.disabled=false[m
[32m+[m[32mplatform.active=default_platform[m
[32m+[m[32mrun.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32m# Space-separated list of JVM arguments used when running the project.[m
[32m+[m[32m# You may also define separate properties like run-sys-prop.name=value instead of -Dname=value.[m
[32m+[m[32m# To set system properties for unit tests define test-sys-prop.name=value:[m
[32m+[m[32mrun.jvmargs=[m
[32m+[m[32mrun.test.classpath=\[m
[32m+[m[32m    ${javac.test.classpath}:\[m
[32m+[m[32m    ${build.test.classes.dir}[m
[32m+[m[32msource.encoding=UTF-8[m
[32m+[m[32msrc.dir=src[m
[32m+[m[32mtest.src.dir=test[m
[1mdiff --git a/Ciclo2/Inventario/nbproject/project.xml b/Ciclo2/Inventario/nbproject/project.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..c21ac17[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Inventario/nbproject/project.xml[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project xmlns="http://www.netbeans.org/ns/project/1">[m
[32m+[m[32m    <type>org.netbeans.modules.java.j2seproject</type>[m
[32m+[m[32m    <configuration>[m
[32m+[m[32m        <data xmlns="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <name>Inventario</name>[m
[32m+[m[32m            <source-roots>[m
[32m+[m[32m                <root id="src.dir"/>[m
[32m+[m[32m            </source-roots>[m
[32m+[m[32m            <test-roots>[m
[32m+[m[32m                <root id="test.src.dir"/>[m
[32m+[m[32m            </test-roots>[m
[32m+[m[32m        </data>[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Inventario/src/inventario/Comercial.java b/Ciclo2/Inventario/src/inventario/Comercial.java[m
[1mnew file mode 100644[m
[1mindex 0000000..2d1397d[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Inventario/src/inventario/Comercial.java[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m[32mpackage inventario;[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author ErikaEspejo[m
[32m+[m[32m */[m
[32m+[m[32mpublic class Comercial extends Vehiculo{[m
[32m+[m[32m    public int cargaMaxima;[m
[32m+[m[41m    [m
[32m+[m[32m    public Comercial(String tipo,int pasajeros,int velocidad,  String placa,int cargaMaxima) {[m
[32m+[m[32m        super(tipo,pasajeros,velocidad,placa);[m
[32m+[m[32m        this.cargaMaxima = cargaMaxima;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    @Override[m
[32m+[m[32m    public String toString() {[m
[32m+[m[32m        String information = "Vehículo " + tipo + " - Placa: " + placa +"\nVelocidad: " + velocidad + " km/h\npasajeros: " + pasajeros + "\nCarga máxima: " + cargaMaxima + "kg";[m
[32m+[m[32m        return information;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Inventario/src/inventario/Inventario.java b/Ciclo2/Inventario/src/inventario/Inventario.java[m
[1mnew file mode 100644[m
[1mindex 0000000..9e6a60a[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Inventario/src/inventario/Inventario.java[m
[36m@@ -0,0 +1,114 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m[32mpackage inventario;[m
[32m+[m[32mimport java.util.ArrayList;[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author ErikaEspejo[m
[32m+[m[32m */[m
[32m+[m[32mpublic class Inventario {[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * @param args the command line arguments[m
[32m+[m[32m     */[m
[32m+[m[41m    [m
[32m+[m[32m    static ArrayList<Vehiculo> vehicleList = new ArrayList<>();[m
[32m+[m[32m    static String header = "***Inventario de vehículos***";[m
[32m+[m[32m    static int stockParticulares = 100;[m
[32m+[m[32m    static int stockComerciales = 100;[m
[32m+[m[32m    static long particularPrice = 30_000_000;[m
[32m+[m[32m    static long comercialPrice = 40_000_000;[m
[32m+[m[41m    [m
[32m+[m[41m    [m
[32m+[m[32m    public static double ivaComputation (int particularQuantity, int comercialQuantity){[m
[32m+[m[32m        int totalVehicles = particularQuantity + comercialQuantity;[m
[32m+[m[32m        double iva = 0.2;[m
[32m+[m[32m        if (totalVehicles <= 20) {[m
[32m+[m[32m            for (int i = 2; i <= totalVehicles ; i++){[m
[32m+[m[32m                iva -= 0.01;[m
[32m+[m[32m            }[m[41m    [m
[32m+[m[32m        } else {[m
[32m+[m[32m            iva = 0;[m
[32m+[m[32m        }[m
[32m+[m[32m        return iva;[m[41m        [m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static  long totalWithoutIVA (int particularQuantity, int comercialQuantity){[m
[32m+[m[32m        long total = particularQuantity * particularPrice + comercialQuantity * comercialPrice;[m
[32m+[m[32m        return total;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static void printTicket (int particularQuantity, int comercialQuantity, String idBuyer) {[m
[32m+[m[32m        if (stockComerciales<comercialQuantity || stockParticulares < particularQuantity){[m
[32m+[m[32m            System.out.println("Lo sentimos no tenemos stock suficiente\n---");[m[41m            [m
[32m+[m[32m        } else {[m
[32m+[m[32m            System.out.println("CONCESIONARIO UNCAR");[m
[32m+[m[32m            System.out.println("UNCAR - UNIVA");[m
[32m+[m[32m            System.out.println("NIT: 899.999.063");[m
[32m+[m[32m            System.out.println("Cliente: " + idBuyer);[m
[32m+[m[32m            System.out.println("Vehículo Cant Precio");[m
[32m+[m[32m            System.out.println("Particular x" + particularQuantity + " $" + particularPrice);[m
[32m+[m[32m            System.out.println("Comercial x" + comercialQuantity + " $" + comercialPrice);[m
[32m+[m[32m            long totalIVA = (long) Math.ceil(totalWithoutIVA(particularQuantity, comercialQuantity) * ivaComputation(particularQuantity, comercialQuantity));[m[41m                    [m
[32m+[m[32m            System.out.println("Iva: " + totalIVA);[m[41m [m
[32m+[m[32m            long total = totalWithoutIVA(particularQuantity, comercialQuantity) + totalIVA;[m
[32m+[m[32m            System.out.println("Total: " + total);[m
[32m+[m[32m            System.out.println("---");[m[41m         [m
[32m+[m[32m            stockComerciales -= comercialQuantity;[m
[32m+[m[32m            stockParticulares -= particularQuantity;[m
[32m+[m[32m        }[m[41m        [m
[32m+[m[32m    }[m
[32m+[m[41m            [m
[32m+[m[32m    public static void processCommands(Scanner scan){[m
[32m+[m[32m        boolean flag = true;[m
[32m+[m[41m        [m
[32m+[m[32m        while (flag){[m
[32m+[m[32m            String[] data = scan.nextLine().split("&");[m
[32m+[m[32m            switch(data[0]) {[m
[32m+[m[32m                case "1":[m
[32m+[m[32m                    if (data[1].equalsIgnoreCase("Particular")) {[m
[32m+[m[32m                        //String tipo,int pasajeros,int velocidad,  String placa, String color[m
[32m+[m[32m                        Particular newParticular = new Particular(data[1],Integer.parseInt(data[2]),Integer.parseInt(data[3]),data[4],data[5]);[m
[32m+[m[32m                        vehicleList.add(newParticular);[m
[32m+[m[32m                    } else if (data[1].equalsIgnoreCase("Comercial")){[m
[32m+[m[32m                        Comercial newComercial = new Comercial(data[1],Integer.parseInt(data[2]),Integer.parseInt(data[3]),data[4],Integer.parseInt(data[5]));[m
[32m+[m[32m                        vehicleList.add(newComercial);[m
[32m+[m[32m                    }[m
[32m+[m[32m                    break;[m
[32m+[m[41m                    [m
[32m+[m[32m                case "2":[m
[32m+[m[32m                    System.out.println(header);[m
[32m+[m[32m                    for (int i = 0; i < vehicleList.size();i++){[m
[32m+[m[32m                        System.out.println(vehicleList.get(i));[m
[32m+[m[32m                    }[m
[32m+[m[41m                    [m
[32m+[m[32m                    break;[m
[32m+[m[41m                [m
[32m+[m[32m                case "3":[m
[32m+[m[32m                    printTicket(Integer.parseInt(data[2]),Integer.parseInt( data[4]), data[5]);[m[41m           [m
[32m+[m[41m                    [m
[32m+[m[32m                    break;[m
[32m+[m[41m                    [m
[32m+[m[32m                case "4":[m
[32m+[m[32m                    System.out.println("Particular: " + stockParticulares);[m
[32m+[m[32m                    System.out.println("Comercial: " + stockComerciales);[m
[32m+[m[41m                    [m
[32m+[m[32m                    break;[m
[32m+[m[41m                    [m
[32m+[m[32m                case "5":[m
[32m+[m[32m                    flag = false;[m
[32m+[m[32m                    break;[m
[32m+[m[32m            }[m[41m            [m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[41m        [m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        Scanner scan = new Scanner(System.in);[m
[32m+[m[32m        processCommands(scan);[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Inventario/src/inventario/Particular.java b/Ciclo2/Inventario/src/inventario/Particular.java[m
[1mnew file mode 100644[m
[1mindex 0000000..cbbcaf9[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Inventario/src/inventario/Particular.java[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m[32mpackage inventario;[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author ErikaEspejo[m
[32m+[m[32m */[m
[32m+[m[32mpublic class Particular extends Vehiculo{[m
[32m+[m[32m    public String color;[m
[32m+[m[41m    [m
[32m+[m[32m    public Particular(String tipo,int pasajeros,int velocidad,  String placa, String color) {[m
[32m+[m[32m        super(tipo,pasajeros,velocidad,placa);[m
[32m+[m[32m        this.color = color;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    @Override[m
[32m+[m[32m    public String toString() {[m
[32m+[m[32m        String information = "Vehículo " + tipo + " - Placa: " + placa +"\nVelocidad: " + velocidad + " km/h\npasajeros: " + pasajeros + "\ncolor: " + color;[m
[32m+[m[32m        return information;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Inventario/src/inventario/Vehiculo.java b/Ciclo2/Inventario/src/inventario/Vehiculo.java[m
[1mnew file mode 100644[m
[1mindex 0000000..643bb47[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Inventario/src/inventario/Vehiculo.java[m
[36m@@ -0,0 +1,31 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m[32mpackage inventario;[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author ErikaEspejo[m
[32m+[m[32m */[m
[32m+[m[32mpublic class Vehiculo {[m
[32m+[m[32m    public int velocidad;[m
[32m+[m[32m    public int pasajeros;[m
[32m+[m[32m    public String placa;[m
[32m+[m[32m    public String tipo;[m
[32m+[m[41m    [m
[32m+[m[32m    public Vehiculo(String tipo,int pasajeros,int velocidad,  String placa) {[m
[32m+[m[32m        this.velocidad = velocidad;[m
[32m+[m[32m        this.pasajeros = pasajeros;[m
[32m+[m[32m        this.placa = placa;[m
[32m+[m[32m        this.tipo = tipo;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m   @Override[m
[32m+[m[32m    public String toString() {[m
[32m+[m[32m        String information = "Vehículo " + tipo + " - Placa: " + placa +"\nVelocidad: " + velocidad + " km/h\npasajeros: " + pasajeros ;[m
[32m+[m[32m        return information;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Persona/Main.java b/Ciclo2/Persona/Main.java[m
[1mnew file mode 100644[m
[1mindex 0000000..ede95fa[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Persona/Main.java[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class Main {[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        Scanner scan = new Scanner(System.in);[m
[32m+[m[41m        [m
[32m+[m[32m        String[] data = new String[5];[m
[32m+[m[32m        data = scan.nextLine().split(",");[m
[32m+[m
[32m+[m[32m        Persona persona = new Persona(data[0], Integer.parseInt(data[1]), data[2], Double.parseDouble(data[3]), Double.parseDouble(data[4]));[m
[32m+[m[32m        persona.calcularIMC();[m
[32m+[m[32m        persona.esMayorDeEdad();[m
[32m+[m[32m        System.out.println(persona);[m
[32m+[m[41m    [m
[32m+[m
[32m+[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m[32mScanner scan = new Scanner(System.in);[m
[32m+[m[41m        [m
[32m+[m[32m        String[] passIngresada = scan.next().split(",");[m
[32m+[m
[32m+[m[32m        Contrasena pass = new Contrasena(passIngresada[0],passIngresada[1]);[m
[32m+[m[32m        password.esFuerte();[m
\ No newline at end of file[m
[1mdiff --git a/Ciclo2/Persona/Persona.java b/Ciclo2/Persona/Persona.java[m
[1mnew file mode 100644[m
[1mindex 0000000..99b759f[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Persona/Persona.java[m
[36m@@ -0,0 +1,36 @@[m
[32m+[m[32mclass Persona {[m
[32m+[m[32m    public String name;[m
[32m+[m[32m    public int age;[m
[32m+[m[32m    public String gender;[m
[32m+[m[32m    public double weight;[m
[32m+[m[32m    public double height;[m
[32m+[m
[32m+[m[32m    public Persona(String name, int age, String gender, double weight, double height) {[m
[32m+[m[32m        this.name = name;[m
[32m+[m[32m        this.age = age;[m
[32m+[m[32m        this.gender = gender;[m
[32m+[m[32m        this.weight = weight;[m
[32m+[m[32m        this.height = height;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public void calcularIMC() {[m
[32m+[m[32m        double imc = weight/Math.pow(height, 2);[m
[32m+[m[32m        System.out.println(imc);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void esMayorDeEdad() {[m
[32m+[m[32m        if (age >= 18) {[m
[32m+[m[32m            System.out.println("Es mayor de edad.");[m
[32m+[m[32m        } else {[m
[32m+[m[32m            System.out.println("No es mayor de edad");[m
[32m+[m[32m        }[m
[32m+[m[41m    [m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public String toString() {[m
[32m+[m[32m        String information = "Name: " + name + "; Age: " + age + "; Gender: " + gender + "; Weight: " + weight + "; Height: " + height;[m[41m        [m
[32m+[m[32m        return information;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git "a/Ciclo2/Promoci\303\263n/build.xml" "b/Ciclo2/Promoci\303\263n/build.xml"[m
[1mnew file mode 100644[m
[1mindex 0000000..34d91fc[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Promoci\303\263n/build.xml"[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!-- You may freely edit this file. See commented blocks below for -->[m
[32m+[m[32m<!-- some examples of how to customize the build. -->[m
[32m+[m[32m<!-- (If you delete it and reopen the project it will be recreated.) -->[m
[32m+[m[32m<!-- By default, only the Clean and Build commands use this build script. -->[m
[32m+[m[32m<!-- Commands such as Run, Debug, and Test only use this build script if -->[m
[32m+[m[32m<!-- the Compile on Save feature is turned off for the project. -->[m
[32m+[m[32m<!-- You can turn off the Compile on Save (or Deploy on Save) setting -->[m
[32m+[m[32m<!-- in the project's Project Properties dialog box.-->[m
[32m+[m[32m<project name="Promoción" default="default" basedir=".">[m
[32m+[m[32m    <description>Builds, tests, and runs the project Promoción.</description>[m
[32m+[m[32m    <import file="nbproject/build-impl.xml"/>[m
[32m+[m[32m    <!--[m
[32m+[m
[32m+[m[32m    There exist several targets which are by default empty and which can be[m[41m [m
[32m+[m[32m    used for execution of your tasks. These targets are usually executed[m[41m [m
[32m+[m[32m    before and after some main targets. They are:[m[41m [m
[32m+[m
[32m+[m[32m      -pre-init:                 called before initialization of project properties[m
[32m+[m[32m      -post-init:                called after initialization of project properties[m
[32m+[m[32m      -pre-compile:              called before javac compilation[m
[32m+[m[32m      -post-compile:             called after javac compilation[m
[32m+[m[32m      -pre-compile-single:       called before javac compilation of single file[m
[32m+[m[32m      -post-compile-single:      called after javac compilation of single file[m
[32m+[m[32m      -pre-compile-test:         called before javac compilation of JUnit tests[m
[32m+[m[32m      -post-compile-test:        called after javac compilation of JUnit tests[m
[32m+[m[32m      -pre-compile-test-single:  called before javac compilation of single JUnit test[m
[32m+[m[32m      -post-compile-test-single: called after javac compilation of single JUunit test[m
[32m+[m[32m      -pre-jar:                  called before JAR building[m
[32m+[m[32m      -post-jar:                 called after JAR building[m
[32m+[m[32m      -post-clean:               called after cleaning build products[m
[32m+[m
[32m+[m[32m    (Targets beginning with '-' are not intended to be called on their own.)[m
[32m+[m
[32m+[m[32m    Example of inserting an obfuscator after compilation could look like this:[m
[32m+[m
[32m+[m[32m        <target name="-post-compile">[m
[32m+[m[32m            <obfuscate>[m
[32m+[m[32m                <fileset dir="${build.classes.dir}"/>[m
[32m+[m[32m            </obfuscate>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    For list of available properties check the imported[m[41m [m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m
[32m+[m[32m    Another way to customize the build is by overriding existing main targets.[m
[32m+[m[32m    The targets of interest are:[m[41m [m
[32m+[m
[32m+[m[32m      -init-macrodef-javac:     defines macro for javac compilation[m
[32m+[m[32m      -init-macrodef-junit:     defines macro for junit execution[m
[32m+[m[32m      -init-macrodef-debug:     defines macro for class debugging[m
[32m+[m[32m      -init-macrodef-java:      defines macro for class execution[m
[32m+[m[32m      -do-jar:                  JAR building[m
[32m+[m[32m      run:                      execution of project[m[41m [m
[32m+[m[32m      -javadoc-build:           Javadoc generation[m
[32m+[m[32m      test-report:              JUnit report generation[m
[32m+[m
[32m+[m[32m    An example of overriding the target for project execution could look like this:[m
[32m+[m
[32m+[m[32m        <target name="run" depends="Promoción-impl.jar">[m
[32m+[m[32m            <exec dir="bin" executable="launcher.exe">[m
[32m+[m[32m                <arg file="${dist.jar}"/>[m
[32m+[m[32m            </exec>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    Notice that the overridden target depends on the jar target and not only on[m[41m [m
[32m+[m[32m    the compile target as the regular run target does. Again, for a list of available[m[41m [m
[32m+[m[32m    properties which you can use, check the target you are overriding in the[m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m[32m    -->[m
[32m+[m[32m</project>[m
[1mdiff --git "a/Ciclo2/Promoci\303\263n/manifest.mf" "b/Ciclo2/Promoci\303\263n/manifest.mf"[m
[1mnew file mode 100644[m
[1mindex 0000000..328e8e5[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Promoci\303\263n/manifest.mf"[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mManifest-Version: 1.0[m
[32m+[m[32mX-COMMENT: Main-Class will be added automatically by build[m
[32m+[m
[1mdiff --git "a/Ciclo2/Promoci\303\263n/nbproject/build-impl.xml" "b/Ciclo2/Promoci\303\263n/nbproject/build-impl.xml"[m
[1mnew file mode 100644[m
[1mindex 0000000..ad6307a[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Promoci\303\263n/nbproject/build-impl.xml"[m
[36m@@ -0,0 +1,1420 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!--[m
[32m+[m[32m*** GENERATED FROM project.xml - DO NOT EDIT  ***[m
[32m+[m[32m***         EDIT ../build.xml INSTEAD         ***[m
[32m+[m
[32m+[m[32mFor the purpose of easier reading the script[m
[32m+[m[32mis divided into following sections:[m
[32m+[m
[32m+[m[32m  - initialization[m
[32m+[m[32m  - compilation[m
[32m+[m[32m  - jar[m
[32m+[m[32m  - execution[m
[32m+[m[32m  - debugging[m
[32m+[m[32m  - javadoc[m
[32m+[m[32m  - test compilation[m
[32m+[m[32m  - test execution[m
[32m+[m[32m  - test debugging[m
[32m+[m[32m  - applet[m
[32m+[m[32m  - cleanup[m
[32m+[m
[32m+[m[32m        -->[m
[32m+[m[32m<project xmlns:j2seproject1="http://www.netbeans.org/ns/j2se-project/1" xmlns:j2seproject3="http://www.netbeans.org/ns/j2se-project/3" xmlns:jaxrpc="http://www.netbeans.org/ns/j2se-project/jax-rpc" basedir=".." default="default" name="Promoción-impl">[m
[32m+[m[32m    <fail message="Please build using Ant 1.8.0 or higher.">[m
[32m+[m[32m        <condition>[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <antversion atleast="1.8.0"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </fail>[m
[32m+[m[32m    <target depends="test,jar,javadoc" description="Build and test whole project." name="default"/>[m
[32m+[m[32m    <!--[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m                INITIALIZATION SECTION[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init" name="-init-private">[m
[32m+[m[32m        <property file="nbproject/private/config.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/private.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private" name="-init-user">[m
[32m+[m[32m        <property file="${user.properties.file}"/>[m
[32m+[m[32m        <!-- The two properties below are usually overridden -->[m
[32m+[m[32m        <!-- by the active platform. Just a fallback. -->[m
[32m+[m[32m        <property name="default.javac.source" value="1.6"/>[m
[32m+[m[32m        <property name="default.javac.target" value="1.6"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user" name="-init-project">[m
[32m+[m[32m        <property file="nbproject/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/project.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-init-macrodef-property" name="-do-init">[m
[32m+[m[32m        <property name="platform.java" value="${java.home}/bin/java"/>[m
[32m+[m[32m        <available file="${manifest.file}" property="manifest.available"/>[m
[32m+[m[32m        <condition property="splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${application.splash}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${application.splash}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${main.class}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javac.profile"/>[m
[32m+[m[32m                <length length="0" string="${javac.profile}" when="greater"/>[m
[32m+[m[32m                <matches pattern="((1\.[89])|9)(\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${jar.archive.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <istrue value="${not.archive.disabled}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.mkdist">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="do.archive"/>[m
[32m+[m[32m                <isset property="libs.CopyLibs.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${mkdist.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+manifest.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="manifest.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="splashscreen.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="profile.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.tests">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${test.src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.sources">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="netbeans.home+have.tests">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="netbeans.home"/>[m
[32m+[m[32m                <isset property="have.tests"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="no.javadoc.preview">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.preview"/>[m
[32m+[m[32m                <isfalse value="${javadoc.preview}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="run.jvmargs" value=""/>[m
[32m+[m[32m        <property name="run.jvmargs.ide" value=""/>[m
[32m+[m[32m        <property name="javac.compilerargs" value=""/>[m
[32m+[m[32m        <property name="work.dir" value="${basedir}"/>[m
[32m+[m[32m        <condition property="no.deps">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${no.dependencies}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javac.debug" value="true"/>[m
[32m+[m[32m        <property name="javadoc.preview" value="true"/>[m
[32m+[m[32m        <property name="application.args" value=""/>[m
[32m+[m[32m        <property name="source.encoding" value="${file.encoding}"/>[m
[32m+[m[32m        <property name="runtime.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="manifest.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <condition property="javadoc.encoding.used" value="${javadoc.encoding}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.encoding"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${javadoc.encoding}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javadoc.encoding.used" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="includes" value="**"/>[m
[32m+[m[32m        <property name="excludes" value=""/>[m
[32m+[m[32m        <property name="do.depend" value="false"/>[m
[32m+[m[32m        <condition property="do.depend.true">[m
[32m+[m[32m            <istrue value="${do.depend}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <path id="endorsed.classpath.path" path="${endorsed.classpath}"/>[m
[32m+[m[32m        <condition else="" property="endorsed.classpath.cmd.line.arg" value="-Xbootclasspath/p:'${toString:endorsed.classpath.path}'">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="javac.profile.cmd.line.arg" value="-profile ${javac.profile}">[m
[32m+[m[32m            <isset property="profile.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="jdkBug6558476">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <matches pattern="1\.[56]" string="${java.specification.version}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <os family="unix"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="javac.fork">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <istrue value="${jdkBug6558476}"/>[m
[32m+[m[32m                <istrue value="${javac.external.vm}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="jar.index" value="false"/>[m
[32m+[m[32m        <property name="jar.index.metainf" value="${jar.index}"/>[m
[32m+[m[32m        <property name="copylibs.rebase" value="true"/>[m
[32m+[m[32m        <available file="${meta.inf.dir}/persistence.xml" property="has.persistence.xml"/>[m
[32m+[m[32m        <condition property="junit.available">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available classname="org.junit.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m                <available classname="junit.framework.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="testng.available">[m
[32m+[m[32m            <available classname="org.testng.annotations.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="junit+testng.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <istrue value="${testng.available}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="testng" property="testng.mode" value="mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="testng.debug.mode" value="-mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="java.failonerror" value="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init" name="-init-check">[m
[32m+[m[32m        <fail unless="src.dir">Must set src.dir</fail>[m
[32m+[m[32m        <fail unless="test.src.dir">Must set test.src.dir</fail>[m
[32m+[m[32m        <fail unless="build.dir">Must set build.dir</fail>[m
[32m+[m[32m        <fail unless="dist.dir">Must set dist.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.dir">Must set build.classes.dir</fail>[m
[32m+[m[32m        <fail unless="dist.javadoc.dir">Must set dist.javadoc.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.classes.dir">Must set build.test.classes.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.results.dir">Must set build.test.results.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.excludes">Must set build.classes.excludes</fail>[m
[32m+[m[32m        <fail unless="dist.jar">Must set dist.jar</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-property">[m
[32m+[m[32m        <macrodef name="property" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-macrodef-javac-with-processors">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <mkdir dir="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <compilerarg value="-processorpath"/>[m
[32m+[m[32m                    <compilerarg path="@{processorpath}:${empty.dir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.processors.internal}"/>[m
[32m+[m[32m                    <compilerarg line="${annotation.processing.processor.options}"/>[m
[32m+[m[32m                    <compilerarg value="-s"/>[m
[32m+[m[32m                    <compilerarg path="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.proc.none.internal}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" name="-init-macrodef-javac-without-processors" unless="ap.supported.internal">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-javac-with-processors,-init-macrodef-javac-without-processors" name="-init-macrodef-javac">[m
[32m+[m[32m        <macrodef name="depend" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <depend cache="${build.dir}/depcache" destdir="@{destdir}" excludes="${excludes}" includes="${includes}" srcdir="@{srcdir}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </depend>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="force-recompile" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <fail unless="javac.includes">Must set javac.includes</fail>[m
[32m+[m[32m                <pathconvert pathsep="${line.separator}" property="javac.includes.binary">[m
[32m+[m[32m                    <path>[m
[32m+[m[32m                        <filelist dir="@{destdir}" files="${javac.includes}"/>[m
[32m+[m[32m                    </path>[m
[32m+[m[32m                    <globmapper from="*.java" to="*.class"/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <tempfile deleteonexit="true" property="javac.includesfile.binary"/>[m
[32m+[m[32m                <echo file="${javac.includesfile.binary}" message="${javac.includes.binary}"/>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <files includesfile="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <fileset file="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-init">[m
[32m+[m[32m        <condition else="false" property="nb.junit.batch" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="nb.junit.single" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <isset property="test.method"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-test-properties">[m
[32m+[m[32m        <property name="test.binaryincludes" value="&lt;nothing&gt;"/>[m
[32m+[m[32m        <property name="test.binarytestincludes" value=""/>[m
[32m+[m[32m        <property name="test.binaryexcludes" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${nb.junit.single}" name="-init-macrodef-junit-single" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-batch" unless="${nb.junit.single}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-init,-init-macrodef-junit-single, -init-macrodef-junit-batch" if="${junit.available}" name="-init-macrodef-junit"/>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng">[m
[32m+[m[32m        <macrodef name="testng" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="" property="testng.methods.arg" value="@{testincludes}.@{testmethods}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <union id="test.set">[m
[32m+[m[32m                    <fileset dir="${test.src.dir}" excludes="@{excludes},**/*.xml,${excludes}" includes="@{includes}">[m
[32m+[m[32m                        <filename name="@{testincludes}"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </union>[m
[32m+[m[32m                <taskdef classname="org.testng.TestNGAntTask" classpath="${run.test.classpath}" name="testng"/>[m
[32m+[m[32m                <testng classfilesetref="test.set" failureProperty="tests.failed" listeners="org.testng.reporters.VerboseReporter" methods="${testng.methods.arg}" mode="${testng.mode}" outputdir="${build.test.results.dir}" suitename="Promoción" testname="TestNG tests" workingDir="${work.dir}">[m
[32m+[m[32m                    <xmlfileset dir="${build.test.classes.dir}" includes="@{testincludes}"/>[m
[32m+[m[32m                    <propertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </propertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-test-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <echo>No tests executed.</echo>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit" if="${junit.available}" name="-init-macrodef-junit-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng" if="${testng.available}" name="-init-macrodef-testng-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-impl,-init-macrodef-junit-impl,-init-macrodef-testng-impl" name="-init-macrodef-test">[m
[32m+[m[32m        <macrodef name="test" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-debug" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-debug-batch">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug,-init-macrodef-junit-debug-batch" if="${junit.available}" name="-init-macrodef-junit-debug-impl">[m
[32m+[m[32m        <macrodef name="test-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit-debug excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng-debug">[m
[32m+[m[32m        <macrodef name="testng-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="-testclass @{testClass}" property="test.class.or.method" value="-methods @{testClass}.@{testMethod}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <condition else="-suitename Promoción -testname @{testClass} ${test.class.or.method}" property="testng.cmd.args" value="@{testClass}">[m
[32m+[m[32m                    <matches pattern=".*\.xml" string="@{testClass}"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <delete dir="${build.test.results.dir}" quiet="true"/>[m
[32m+[m[32m                <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m                <j2seproject3:debug classname="org.testng.TestNG" classpath="${debug.test.classpath}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <customize2/>[m
[32m+[m[32m                        <jvmarg value="-ea"/>[m
[32m+[m[32m                        <arg line="${testng.debug.mode}"/>[m
[32m+[m[32m                        <arg line="-d ${build.test.results.dir}"/>[m
[32m+[m[32m                        <arg line="-listener org.testng.reporters.VerboseReporter"/>[m
[32m+[m[32m                        <arg line="${testng.cmd.args}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug" if="${testng.available}" name="-init-macrodef-testng-debug-impl">[m
[32m+[m[32m        <macrodef name="testng-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element implicit="true" name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2/>[m
[32m+[m[32m                </j2seproject3:testng-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug-impl" if="${junit.available}" name="-init-macrodef-test-debug-junit">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-debug-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug-impl" if="${testng.available}" name="-init-macrodef-test-debug-testng">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug-impl testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2>[m
[32m+[m[32m                        <syspropertyset>[m
[32m+[m[32m                            <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                            <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                        </syspropertyset>[m
[32m+[m[32m                    </customize2>[m
[32m+[m[32m                </j2seproject3:testng-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-debug-junit,-init-macrodef-test-debug-testng" name="-init-macrodef-test-debug"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiling section; consider it deprecated[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile, -profile-init-check" if="profiler.info.jvmargs.agent" name="profile-init"/>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-init-macrodef-profile">[m
[32m+[m[32m        <macrodef name="resolve">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${env.@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="profile">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property environment="env"/>[m
[32m+[m[32m                <resolve name="profiler.current.path" value="${profiler.info.pathvar}"/>[m
[32m+[m[32m                <java classname="@{classname}" dir="${profiler.info.dir}" failonerror="${java.failonerror}" fork="true" jvm="${profiler.info.jvm}">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m                    <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m                    <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m                    <arg line="${application.args}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="${run.classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile" if="profiler.info.jvmargs.agent" name="-profile-init-check">[m
[32m+[m[32m        <fail unless="profiler.info.jvm">Must set JVM to use for profiling in profiler.info.jvm</fail>[m
[32m+[m[32m        <fail unless="profiler.info.jvmargs.agent">Must set profiler agent JVM arguments in profiler.info.jvmargs.agent</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB7.2 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-nbjpda">[m
[32m+[m[32m        <macrodef name="nbjpdastart" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="name"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="" name="stopclassname"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdastart addressproperty="jpda.address" name="@{name}" stopclassname="@{stopclassname}" transport="${debug-transport}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </nbjpdastart>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="nbjpdareload" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="dir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdareload>[m
[32m+[m[32m                    <fileset dir="@{dir}" includes="${fix.classes}">[m
[32m+[m[32m                        <include name="${fix.includes}*.class"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </nbjpdareload>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-debug-args">[m
[32m+[m[32m        <property name="version-output" value="java version &quot;${ant.java.version}"/>[m
[32m+[m[32m        <condition property="have-jdk-older-than-1.4">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.0"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.1"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.2"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.3"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="-Xdebug" property="debug-args-line" value="-Xdebug -Xnoagent -Djava.compiler=none">[m
[32m+[m[32m            <istrue value="${have-jdk-older-than-1.4}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="dt_socket" property="debug-transport-by-os" value="dt_shmem">[m
[32m+[m[32m            <os family="windows"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="${debug-transport-by-os}" property="debug-transport" value="${debug.transport}">[m
[32m+[m[32m            <isset property="debug.transport"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-debug">[m
[32m+[m[32m        <macrodef name="debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-java">[m
[32m+[m[32m        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${run.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="jvm" name="jvm"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-copylibs">[m
[32m+[m[32m        <macrodef name="copylibs" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${manifest.file}" name="manifest"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m                <pathconvert property="run.classpath.without.build.classes.dir">[m
[32m+[m[32m                    <path path="${run.classpath}"/>[m
[32m+[m[32m                    <map from="${build.classes.dir.resolved}" to=""/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <pathconvert pathsep=" " property="jar.classpath">[m
[32m+[m[32m                    <path path="${run.classpath.without.build.classes.dir}"/>[m
[32m+[m[32m                    <chainedmapper>[m
[32m+[m[32m                        <flattenmapper/>[m
[32m+[m[32m                        <filtermapper>[m
[32m+[m[32m                            <replacestring from=" " to="%20"/>[m
[32m+[m[32m                        </filtermapper>[m
[32m+[m[32m                        <globmapper from="*" to="lib/*"/>[m
[32m+[m[32m                    </chainedmapper>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <taskdef classname="org.netbeans.modules.java.j2seproject.copylibstask.CopyLibs" classpath="${libs.CopyLibs.classpath}" name="copylibs"/>[m
[32m+[m[32m                <copylibs compress="${jar.compress}" excludeFromCopy="${copylibs.excludes}" index="${jar.index}" indexMetaInf="${jar.index.metainf}" jarfile="${dist.jar}" manifest="@{manifest}" manifestencoding="UTF-8" rebase="${copylibs.rebase}" runtimeclasspath="${run.classpath.without.build.classes.dir}">[m
[32m+[m[32m                    <fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m                    <manifest>[m
[32m+[m[32m                        <attribute name="Class-Path" value="${jar.classpath}"/>[m
[32m+[m[32m                        <customize/>[m
[32m+[m[32m                    </manifest>[m
[32m+[m[32m                </copylibs>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-presetdef-jar">[m
[32m+[m[32m        <presetdef name="jar" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <jar compress="${jar.compress}" index="${jar.index}" jarfile="${dist.jar}" manifestencoding="UTF-8">[m
[32m+[m[32m                <j2seproject1:fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m            </jar>[m
[32m+[m[32m        </presetdef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-ap-cmdline-properties">[m
[32m+[m[32m        <property name="annotation.processing.enabled" value="true"/>[m
[32m+[m[32m        <property name="annotation.processing.processors.list" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.processor.options" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.run.all.processors" value="true"/>[m
[32m+[m[32m        <property name="javac.processorpath" value="${javac.classpath}"/>[m
[32m+[m[32m        <property name="javac.test.processorpath" value="${javac.test.classpath}"/>[m
[32m+[m[32m        <condition property="ap.supported.internal" value="true">[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <matches pattern="1\.[0-5](\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-ap-cmdline-supported">[m
[32m+[m[32m        <condition else="" property="ap.processors.internal" value="-processor ${annotation.processing.processors.list}">[m
[32m+[m[32m            <isfalse value="${annotation.processing.run.all.processors}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="ap.proc.none.internal" value="-proc:none">[m
[32m+[m[32m            <isfalse value="${annotation.processing.enabled}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties,-init-ap-cmdline-supported" name="-init-ap-cmdline">[m
[32m+[m[32m        <property name="ap.cmd.line.internal" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init,-post-init,-init-check,-init-macrodef-property,-init-macrodef-javac,-init-macrodef-test,-init-macrodef-test-debug,-init-macrodef-nbjpda,-init-macrodef-debug,-init-macrodef-java,-init-presetdef-jar,-init-ap-cmdline" name="init"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===================[m
[32m+[m[32m                COMPILATION SECTION[m
[32m+[m[32m                ===================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-jar-init" unless="built-jar.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-jar.properties" name="built-jar.properties"/>[m
[32m+[m[32m        <delete file="${built-jar.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.jar.${basedir}" name="-warn-already-built-jar">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: Promoción was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-jar-init" name="deps-jar" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-jar.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-jar.properties}" prefix="already.built.jar."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-jar"/>[m
[32m+[m[32m        <propertyfile file="${built-jar.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-check-automatic-build,-clean-after-automatic-build" name="-verify-automatic-build"/>[m
[32m+[m[32m    <target depends="init" name="-check-automatic-build">[m
[32m+[m[32m        <available file="${build.classes.dir}/.netbeans_automatic_build" property="netbeans.automatic.build"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.automatic.build" name="-clean-after-automatic-build">[m
[32m+[m[32m        <antcall target="clean"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar" name="-pre-pre-compile">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-depend">[m
[32m+[m[32m        <pathconvert property="build.generated.subdirs">[m
[32m+[m[32m            <dirset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="*"/>[m
[32m+[m[32m            </dirset>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <j2seproject3:depend srcdir="${src.dir}:${build.generated.subdirs}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile,-pre-compile, -copy-persistence-xml,-compile-depend" if="have.sources" name="-do-compile">[m
[32m+[m[32m        <j2seproject3:javac gensrcdir="${build.generated.sources.dir}"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="has.persistence.xml" name="-copy-persistence-xml">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}/META-INF">[m
[32m+[m[32m            <fileset dir="${meta.inf.dir}" includes="persistence.xml orm.xml"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile,-do-compile,-post-compile" description="Compile project." name="compile"/>[m
[32m+[m[32m    <target name="-pre-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile" name="-do-compile-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile/>[m
[32m+[m[32m        <j2seproject3:javac excludes="" gensrcdir="${build.generated.sources.dir}" includes="${javac.includes}" sourcepath="${src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile-single,-do-compile-single,-post-compile-single" name="compile-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ====================[m
[32m+[m[32m                JAR BUILDING SECTION[m
[32m+[m[32m                ====================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" name="-pre-pre-jar">[m
[32m+[m[32m        <dirname file="${dist.jar}" property="dist.jar.dir"/>[m
[32m+[m[32m        <mkdir dir="${dist.jar.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive" name="-do-jar-create-manifest" unless="manifest.available">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <touch file="${tmp.manifest.file}" verbose="false"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive+manifest.available" name="-do-jar-copy-manifest">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <copy encoding="${manifest.encoding}" file="${manifest.file}" outputencoding="UTF-8" tofile="${tmp.manifest.file}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+main.class.available" name="-do-jar-set-mainclass">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Main-Class" value="${main.class}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+profile.available" name="-do-jar-set-profile">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Profile" value="${javac.profile}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+splashscreen.available" name="-do-jar-set-splashscreen">[m
[32m+[m[32m        <basename file="${application.splash}" property="splashscreen.basename"/>[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy failonerror="false" file="${application.splash}" todir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="SplashScreen-Image" value="META-INF/${splashscreen.basename}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-init-macrodef-copylibs,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.mkdist" name="-do-jar-copylibs">[m
[32m+[m[32m        <j2seproject3:copylibs manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <echo level="info">To run this application from the command line without Ant, try:</echo>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <echo level="info">java -jar "${dist.jar.resolved}"</echo>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.archive" name="-do-jar-jar" unless="do.mkdist">[m
[32m+[m[32m        <j2seproject1:jar manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <pathconvert property="run.classpath.with.dist.jar">[m
[32m+[m[32m            <path path="${run.classpath}"/>[m
[32m+[m[32m            <map from="${build.classes.dir.resolved}" to="${dist.jar.resolved}"/>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <condition else="" property="jar.usage.message" value="To run this application from the command line without Ant, try:${line.separator}${platform.java} -cp ${run.classpath.with.dist.jar} ${main.class}">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="debug" property="jar.usage.level" value="info">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <echo level="${jar.usage.level}" message="${jar.usage.message}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-do-jar-copylibs" if="do.archive" name="-do-jar-delete-manifest">[m
[32m+[m[32m        <delete>[m
[32m+[m[32m            <fileset file="${tmp.manifest.file}"/>[m
[32m+[m[32m        </delete>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-jar,-do-jar-delete-manifest" name="-do-jar-without-libraries"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-copylibs,-do-jar-delete-manifest" name="-do-jar-with-libraries"/>[m
[32m+[m[32m    <target name="-post-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar-without-libraries,-do-jar-with-libraries,-post-jar" name="-do-jar"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar,-post-jar" description="Build JAR." name="jar"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                EXECUTION SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" description="Run a main class." name="run">[m
[32m+[m[32m        <j2seproject1:java>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-do-not-recompile">[m
[32m+[m[32m        <property name="javac.includes.binary" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single" name="run-single">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single" name="run-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}" classpath="${run.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                DEBUGGING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger">[m
[32m+[m[32m        <j2seproject1:nbjpdastart name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-main-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile" name="-debug-start-debuggee">[m
[32m+[m[32m        <j2seproject3:debug>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger,-debug-start-debuggee" description="Debug project in IDE." if="netbeans.home" name="debug"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-stepinto">[m
[32m+[m[32m        <j2seproject1:nbjpdastart stopclassname="${main.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger-stepinto,-debug-start-debuggee" if="netbeans.home" name="debug-stepinto"/>[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-single">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-single" if="netbeans.home" name="debug-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single" if="netbeans.home" name="-debug-start-debuggee-main-test">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}" classpath="${debug.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-main-test,-debug-start-debuggee-main-test" if="netbeans.home" name="debug-test-with-main"/>[m
[32m+[m[32m    <target depends="init" name="-pre-debug-fix">[m
[32m+[m[32m        <fail unless="fix.includes">Must set fix.includes</fail>[m
[32m+[m[32m        <property name="javac.includes" value="${fix.includes}.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-single" if="netbeans.home" name="-do-debug-fix">[m
[32m+[m[32m        <j2seproject1:nbjpdareload/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix" if="netbeans.home" name="debug-fix"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                PROFILING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiler integration[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="profile-init,compile" description="Profile a project in the IDE." if="profiler.info.jvmargs.agent" name="-profile-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" description="Profile a selected class in the IDE." if="profiler.info.jvmargs.agent" name="-profile-single-pre72">[m
[32m+[m[32m        <fail unless="profile.class">Must select one file in the IDE or set profile.class</fail>[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="${profile.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" if="profiler.info.jvmargs.agent" name="-profile-applet-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </profile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-test-single" if="profiler.info.jvmargs.agent" name="-profile-test-single-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <junit dir="${profiler.info.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" jvm="${profiler.info.jvm}" showoutput="true">[m
[32m+[m[32m            <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m            <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m            <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m            <test name="${profile.class}"/>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <syspropertyset>[m
[32m+[m[32m                <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m            </syspropertyset>[m
[32m+[m[32m            <formatter type="brief" usefile="false"/>[m
[32m+[m[32m            <formatter type="xml"/>[m
[32m+[m[32m        </junit>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB72 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target if="netbeans.home" name="-profile-check">[m
[32m+[m[32m        <condition property="profiler.configured">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-agentpath:"/>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-javaagent:"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-pre72" description="Profile a project in the IDE." if="profiler.configured" name="profile" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-single-pre72" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-single" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-test-single-pre72" description="Profile a selected test in the IDE." name="profile-test-single"/>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected test in the IDE." if="profiler.configured" name="profile-test" unless="profiler.info.jvmargs">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="test-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-test-with-main"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-applet-pre72" if="profiler.configured" name="profile-applet" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-applet"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                JAVADOC SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.sources" name="-javadoc-build">[m
[32m+[m[32m        <mkdir dir="${dist.javadoc.dir}"/>[m
[32m+[m[32m        <condition else="" property="javadoc.endorsed.classpath.cmd.line.arg" value="-J${endorsed.classpath.cmd.line.arg}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath.cmd.line.arg"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath.cmd.line.arg}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="bug5101868workaround" value="*.java">[m
[32m+[m[32m            <matches pattern="1\.[56](\..*)?" string="${java.version}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <javadoc additionalparam="-J-Dfile.encoding=${file.encoding} ${javadoc.additionalparam}" author="${javadoc.author}" charset="UTF-8" destdir="${dist.javadoc.dir}" docencoding="UTF-8" encoding="${javadoc.encoding.used}" failonerror="true" noindex="${javadoc.noindex}" nonavbar="${javadoc.nonavbar}" notree="${javadoc.notree}" private="${javadoc.private}" source="${javac.source}" splitindex="${javadoc.splitindex}" use="${javadoc.use}" useexternalfile="true" version="${javadoc.version}" windowtitle="${javadoc.windowtitle}">[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${javac.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${bug5101868workaround},${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/*.java"/>[m
[32m+[m[32m                <exclude name="*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <arg line="${javadoc.endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m        </javadoc>[m
[32m+[m[32m        <copy todir="${dist.javadoc.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build" if="netbeans.home" name="-javadoc-browse" unless="no.javadoc.preview">[m
[32m+[m[32m        <nbbrowse file="${dist.javadoc.dir}/index.html"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build,-javadoc-browse" description="Build Javadoc." name="javadoc"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                TEST COMPILATION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" if="have.tests" name="-pre-pre-compile-test">[m
[32m+[m[32m        <mkdir dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-test-depend">[m
[32m+[m[32m        <j2seproject3:depend classpath="${javac.test.classpath}" destdir="${build.test.classes.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test,-compile-test-depend" if="have.tests" name="-do-compile-test">[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" processorpath="${javac.test.processorpath}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test,-do-compile-test,-post-compile-test" name="compile-test"/>[m
[32m+[m[32m    <target name="-pre-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test-single" if="have.tests" name="-do-compile-test-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile destdir="${build.test.classes.dir}"/>[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" excludes="" includes="${javac.includes}" processorpath="${javac.test.processorpath}" sourcepath="${test.src.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test-single,-do-compile-test-single,-post-compile-test-single" name="compile-test-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST EXECUTION SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run" if="have.tests" name="-do-test-run">[m
[32m+[m[32m        <j2seproject3:test includes="${includes}" testincludes="**/*Test.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run" if="have.tests" name="-post-test-run">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="test-report"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home+have.tests" name="-test-browse"/>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run,test-report,-post-test-run,-test-browse" description="Run unit tests." name="test"/>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run-single">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${test.includes}" testincludes="${test.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single" if="have.tests" name="-post-test-run-single">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single,-post-test-run-single" description="Run single unit test." name="test-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single-method">[m
[32m+[m[32m        <fail unless="test.class">Must select some files in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${javac.includes}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method" if="have.tests" name="-post-test-run-single-method">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method,-post-test-run-single-method" description="Run single unit test." name="test-single-method"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST DEBUGGING SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testincludes="${javac.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test-method">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testMethod="${test.method}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test" if="netbeans.home+have.tests" name="-debug-start-debugger-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${test.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test" name="debug-test"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test-method" name="debug-test-method"/>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-test-single" if="netbeans.home" name="-do-debug-fix-test">[m
[32m+[m[32m        <j2seproject1:nbjpdareload dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix-test" if="netbeans.home" name="debug-fix-test"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET EXECUTION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" name="run-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject1:java classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET DEBUGGING  SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-applet" if="netbeans.home" name="debug-applet"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                CLEANUP SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-clean-init" unless="built-clean.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-clean.properties" name="built-clean.properties"/>[m
[32m+[m[32m        <delete file="${built-clean.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.clean.${basedir}" name="-warn-already-built-clean">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: Promoción was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-clean-init" name="deps-clean" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-clean.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-clean.properties}" prefix="already.built.clean."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-clean"/>[m
[32m+[m[32m        <propertyfile file="${built-clean.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" name="-do-clean">[m
[32m+[m[32m        <delete dir="${build.dir}"/>[m
[32m+[m[32m        <delete dir="${dist.dir}" followsymlinks="false" includeemptydirs="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-clean">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-clean,-do-clean,-post-clean" description="Clean build products." name="clean"/>[m
[32m+[m[32m    <target name="-check-call-dep">[m
[32m+[m[32m        <property file="${call.built.properties}" prefix="already.built."/>[m
[32m+[m[32m        <condition property="should.call.dep">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="already.built.${call.subproject}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${call.script}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-check-call-dep" if="should.call.dep" name="-maybe-call-dep">[m
[32m+[m[32m        <ant antfile="${call.script}" inheritall="false" target="${call.target}">[m
[32m+[m[32m            <propertyset>[m
[32m+[m[32m                <propertyref prefix="transfer."/>[m
[32m+[m[32m                <mapper from="transfer.*" to="*" type="glob"/>[m
[32m+[m[32m            </propertyset>[m
[32m+[m[32m        </ant>[m
[32m+[m[32m    </target>[m
[32m+[m[32m</project>[m
[1mdiff --git "a/Ciclo2/Promoci\303\263n/nbproject/genfiles.properties" "b/Ciclo2/Promoci\303\263n/nbproject/genfiles.properties"[m
[1mnew file mode 100644[m
[1mindex 0000000..b040331[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Promoci\303\263n/nbproject/genfiles.properties"[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32mbuild.xml.data.CRC32=4ad9ff2b[m
[32m+[m[32mbuild.xml.script.CRC32=46856b9f[m
[32m+[m[32mbuild.xml.stylesheet.CRC32=8064a381@1.80.1.48[m
[32m+[m[32m# This file is used by a NetBeans-based IDE to track changes in generated files such as build-impl.xml.[m
[32m+[m[32m# Do not edit this file. You may delete it but then the IDE will never regenerate such files for you.[m
[32m+[m[32mnbproject/build-impl.xml.data.CRC32=4ad9ff2b[m
[32m+[m[32mnbproject/build-impl.xml.script.CRC32=cabb5264[m
[32m+[m[32mnbproject/build-impl.xml.stylesheet.CRC32=830a3534@1.80.1.48[m
[1mdiff --git "a/Ciclo2/Promoci\303\263n/nbproject/project.properties" "b/Ciclo2/Promoci\303\263n/nbproject/project.properties"[m
[1mnew file mode 100644[m
[1mindex 0000000..2c747ec[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Promoci\303\263n/nbproject/project.properties"[m
[36m@@ -0,0 +1,74 @@[m
[32m+[m[32mannotation.processing.enabled=true[m
[32m+[m[32mannotation.processing.enabled.in.editor=false[m
[32m+[m[32mannotation.processing.processor.options=[m
[32m+[m[32mannotation.processing.processors.list=[m
[32m+[m[32mannotation.processing.run.all.processors=true[m
[32m+[m[32mannotation.processing.source.output=${build.generated.sources.dir}/ap-source-output[m
[32m+[m[32mbuild.classes.dir=${build.dir}/classes[m
[32m+[m[32mbuild.classes.excludes=**/*.java,**/*.form[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mbuild.dir=build[m
[32m+[m[32mbuild.generated.dir=${build.dir}/generated[m
[32m+[m[32mbuild.generated.sources.dir=${build.dir}/generated-sources[m
[32m+[m[32m# Only compile against the classpath explicitly listed here:[m
[32m+[m[32mbuild.sysclasspath=ignore[m
[32m+[m[32mbuild.test.classes.dir=${build.dir}/test/classes[m
[32m+[m[32mbuild.test.results.dir=${build.dir}/test/results[m
[32m+[m[32m# Uncomment to specify the preferred debugger connection transport:[m
[32m+[m[32m#debug.transport=dt_socket[m
[32m+[m[32mdebug.classpath=\[m
[32m+[m[32m    ${run.classpath}[m
[32m+[m[32mdebug.test.classpath=\[m
[32m+[m[32m    ${run.test.classpath}[m
[32m+[m[32m# Files in build.classes.dir which should be excluded from distribution jar[m
[32m+[m[32mdist.archive.excludes=[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mdist.dir=dist[m
[32m+[m[32mdist.jar=${dist.dir}/Promoci_n.jar[m
[32m+[m[32mdist.javadoc.dir=${dist.dir}/javadoc[m
[32m+[m[32mexcludes=[m
[32m+[m[32mincludes=**[m
[32m+[m[32mjar.compress=false[m
[32m+[m[32mjavac.classpath=[m
[32m+[m[32m# Space-separated list of extra javac options[m
[32m+[m[32mjavac.compilerargs=[m
[32m+[m[32mjavac.deprecation=false[m
[32m+[m[32mjavac.external.vm=true[m
[32m+[m[32mjavac.processorpath=\[m
[32m+[m[32m    ${javac.classpath}[m
[32m+[m[32mjavac.source=1.8[m
[32m+[m[32mjavac.target=1.8[m
[32m+[m[32mjavac.test.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32mjavac.test.processorpath=\[m
[32m+[m[32m    ${javac.test.classpath}[m
[32m+[m[32mjavadoc.additionalparam=[m
[32m+[m[32mjavadoc.author=false[m
[32m+[m[32mjavadoc.encoding=${source.encoding}[m
[32m+[m[32mjavadoc.noindex=false[m
[32m+[m[32mjavadoc.nonavbar=false[m
[32m+[m[32mjavadoc.notree=false[m
[32m+[m[32mjavadoc.private=false[m
[32m+[m[32mjavadoc.splitindex=true[m
[32m+[m[32mjavadoc.use=true[m
[32m+[m[32mjavadoc.version=false[m
[32m+[m[32mjavadoc.windowtitle=[m
[32m+[m[32mmain.class=[m
[32m+[m[32mmanifest.file=manifest.mf[m
[32m+[m[32mmeta.inf.dir=${src.dir}/META-INF[m
[32m+[m[32mmkdist.disabled=false[m
[32m+[m[32mplatform.active=default_platform[m
[32m+[m[32mrun.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32m# Space-separated list of JVM arguments used when running the project.[m
[32m+[m[32m# You may also define separate properties like run-sys-prop.name=value instead of -Dname=value.[m
[32m+[m[32m# To set system properties for unit tests define test-sys-prop.name=value:[m
[32m+[m[32mrun.jvmargs=[m
[32m+[m[32mrun.test.classpath=\[m
[32m+[m[32m    ${javac.test.classpath}:\[m
[32m+[m[32m    ${build.test.classes.dir}[m
[32m+[m[32msource.encoding=UTF-8[m
[32m+[m[32msrc.dir=src[m
[32m+[m[32mtest.src.dir=test[m
[1mdiff --git "a/Ciclo2/Promoci\303\263n/nbproject/project.xml" "b/Ciclo2/Promoci\303\263n/nbproject/project.xml"[m
[1mnew file mode 100644[m
[1mindex 0000000..9aa2251[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Promoci\303\263n/nbproject/project.xml"[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project xmlns="http://www.netbeans.org/ns/project/1">[m
[32m+[m[32m    <type>org.netbeans.modules.java.j2seproject</type>[m
[32m+[m[32m    <configuration>[m
[32m+[m[32m        <data xmlns="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <name>Promoción</name>[m
[32m+[m[32m            <source-roots>[m
[32m+[m[32m                <root id="src.dir"/>[m
[32m+[m[32m            </source-roots>[m
[32m+[m[32m            <test-roots>[m
[32m+[m[32m                <root id="test.src.dir"/>[m
[32m+[m[32m            </test-roots>[m
[32m+[m[32m        </data>[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m</project>[m
[1mdiff --git "a/Ciclo2/Promoci\303\263n/src/Main.java" "b/Ciclo2/Promoci\303\263n/src/Main.java"[m
[1mnew file mode 100644[m
[1mindex 0000000..dd8aa3d[m
[1m--- /dev/null[m
[1m+++ "b/Ciclo2/Promoci\303\263n/src/Main.java"[m
[36m@@ -0,0 +1,37 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class Main {[m
[32m+[m[32m    public static int precioTresProductos(Scanner scan){[m
[32m+[m[32m        int costo = 0;[m
[32m+[m[32m        for (int i = 1; i <= 3; i++){[m
[32m+[m[32m           System.out.println("Ingrese valor producto " + i);[m
[32m+[m[32m           int cost = scan.nextInt();[m
[32m+[m[32m           costo += cost;[m[41m           [m
[32m+[m[32m        }[m
[32m+[m[32m        return costo;[m[41m        [m
[32m+[m[32m    }[m[41m    [m
[32m+[m[41m    [m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        Scanner scan = new Scanner(System.in);[m
[32m+[m[32m        int porSeparado = precioTresProductos(scan);[m
[32m+[m[32m        System.out.println("Ingrese valor en combo:");[m
[32m+[m[32m        int combo = scan.nextInt();[m
[32m+[m[32m        System.out.println("El costo de los tres productos es: " + porSeparado);[m
[32m+[m[32m        System.out.println("El costo en combo es: " + combo);[m
[32m+[m[32m        if (porSeparado>combo){[m[41m            [m
[32m+[m[32m            System.out.println("Es más económico en combo.");[m
[32m+[m[32m        } else{[m
[32m+[m[32m            System.out.println("Es más económico por separado.");[m
[32m+[m[32m        }[m[41m [m
[32m+[m[32m    }[m[41m            [m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Swing/HolaMundo1/build.xml b/Ciclo2/Swing/HolaMundo1/build.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..08d8176[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Swing/HolaMundo1/build.xml[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!-- You may freely edit this file. See commented blocks below for -->[m
[32m+[m[32m<!-- some examples of how to customize the build. -->[m
[32m+[m[32m<!-- (If you delete it and reopen the project it will be recreated.) -->[m
[32m+[m[32m<!-- By default, only the Clean and Build commands use this build script. -->[m
[32m+[m[32m<!-- Commands such as Run, Debug, and Test only use this build script if -->[m
[32m+[m[32m<!-- the Compile on Save feature is turned off for the project. -->[m
[32m+[m[32m<!-- You can turn off the Compile on Save (or Deploy on Save) setting -->[m
[32m+[m[32m<!-- in the project's Project Properties dialog box.-->[m
[32m+[m[32m<project name="HolaMundo1" default="default" basedir=".">[m
[32m+[m[32m    <description>Builds, tests, and runs the project HolaMundo1.</description>[m
[32m+[m[32m    <import file="nbproject/build-impl.xml"/>[m
[32m+[m[32m    <!--[m
[32m+[m
[32m+[m[32m    There exist several targets which are by default empty and which can be[m[41m [m
[32m+[m[32m    used for execution of your tasks. These targets are usually executed[m[41m [m
[32m+[m[32m    before and after some main targets. They are:[m[41m [m
[32m+[m
[32m+[m[32m      -pre-init:                 called before initialization of project properties[m
[32m+[m[32m      -post-init:                called after initialization of project properties[m
[32m+[m[32m      -pre-compile:              called before javac compilation[m
[32m+[m[32m      -post-compile:             called after javac compilation[m
[32m+[m[32m      -pre-compile-single:       called before javac compilation of single file[m
[32m+[m[32m      -post-compile-single:      called after javac compilation of single file[m
[32m+[m[32m      -pre-compile-test:         called before javac compilation of JUnit tests[m
[32m+[m[32m      -post-compile-test:        called after javac compilation of JUnit tests[m
[32m+[m[32m      -pre-compile-test-single:  called before javac compilation of single JUnit test[m
[32m+[m[32m      -post-compile-test-single: called after javac compilation of single JUunit test[m
[32m+[m[32m      -pre-jar:                  called before JAR building[m
[32m+[m[32m      -post-jar:                 called after JAR building[m
[32m+[m[32m      -post-clean:               called after cleaning build products[m
[32m+[m
[32m+[m[32m    (Targets beginning with '-' are not intended to be called on their own.)[m
[32m+[m
[32m+[m[32m    Example of inserting an obfuscator after compilation could look like this:[m
[32m+[m
[32m+[m[32m        <target name="-post-compile">[m
[32m+[m[32m            <obfuscate>[m
[32m+[m[32m                <fileset dir="${build.classes.dir}"/>[m
[32m+[m[32m            </obfuscate>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    For list of available properties check the imported[m[41m [m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m
[32m+[m[32m    Another way to customize the build is by overriding existing main targets.[m
[32m+[m[32m    The targets of interest are:[m[41m [m
[32m+[m
[32m+[m[32m      -init-macrodef-javac:     defines macro for javac compilation[m
[32m+[m[32m      -init-macrodef-junit:     defines macro for junit execution[m
[32m+[m[32m      -init-macrodef-debug:     defines macro for class debugging[m
[32m+[m[32m      -init-macrodef-java:      defines macro for class execution[m
[32m+[m[32m      -do-jar:                  JAR building[m
[32m+[m[32m      run:                      execution of project[m[41m [m
[32m+[m[32m      -javadoc-build:           Javadoc generation[m
[32m+[m[32m      test-report:              JUnit report generation[m
[32m+[m
[32m+[m[32m    An example of overriding the target for project execution could look like this:[m
[32m+[m
[32m+[m[32m        <target name="run" depends="HolaMundo1-impl.jar">[m
[32m+[m[32m            <exec dir="bin" executable="launcher.exe">[m
[32m+[m[32m                <arg file="${dist.jar}"/>[m
[32m+[m[32m            </exec>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    Notice that the overridden target depends on the jar target and not only on[m[41m [m
[32m+[m[32m    the compile target as the regular run target does. Again, for a list of available[m[41m [m
[32m+[m[32m    properties which you can use, check the target you are overriding in the[m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m[32m    -->[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Swing/HolaMundo1/manifest.mf b/Ciclo2/Swing/HolaMundo1/manifest.mf[m
[1mnew file mode 100644[m
[1mindex 0000000..328e8e5[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Swing/HolaMundo1/manifest.mf[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mManifest-Version: 1.0[m
[32m+[m[32mX-COMMENT: Main-Class will be added automatically by build[m
[32m+[m
[1mdiff --git a/Ciclo2/Swing/HolaMundo1/nbproject/build-impl.xml b/Ciclo2/Swing/HolaMundo1/nbproject/build-impl.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..54ea12f[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Swing/HolaMundo1/nbproject/build-impl.xml[m
[36m@@ -0,0 +1,1420 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!--[m
[32m+[m[32m*** GENERATED FROM project.xml - DO NOT EDIT  ***[m
[32m+[m[32m***         EDIT ../build.xml INSTEAD         ***[m
[32m+[m
[32m+[m[32mFor the purpose of easier reading the script[m
[32m+[m[32mis divided into following sections:[m
[32m+[m
[32m+[m[32m  - initialization[m
[32m+[m[32m  - compilation[m
[32m+[m[32m  - jar[m
[32m+[m[32m  - execution[m
[32m+[m[32m  - debugging[m
[32m+[m[32m  - javadoc[m
[32m+[m[32m  - test compilation[m
[32m+[m[32m  - test execution[m
[32m+[m[32m  - test debugging[m
[32m+[m[32m  - applet[m
[32m+[m[32m  - cleanup[m
[32m+[m
[32m+[m[32m        -->[m
[32m+[m[32m<project xmlns:j2seproject1="http://www.netbeans.org/ns/j2se-project/1" xmlns:j2seproject3="http://www.netbeans.org/ns/j2se-project/3" xmlns:jaxrpc="http://www.netbeans.org/ns/j2se-project/jax-rpc" basedir=".." default="default" name="HolaMundo1-impl">[m
[32m+[m[32m    <fail message="Please build using Ant 1.8.0 or higher.">[m
[32m+[m[32m        <condition>[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <antversion atleast="1.8.0"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </fail>[m
[32m+[m[32m    <target depends="test,jar,javadoc" description="Build and test whole project." name="default"/>[m
[32m+[m[32m    <!--[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m                INITIALIZATION SECTION[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init" name="-init-private">[m
[32m+[m[32m        <property file="nbproject/private/config.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/private.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private" name="-init-user">[m
[32m+[m[32m        <property file="${user.properties.file}"/>[m
[32m+[m[32m        <!-- The two properties below are usually overridden -->[m
[32m+[m[32m        <!-- by the active platform. Just a fallback. -->[m
[32m+[m[32m        <property name="default.javac.source" value="1.6"/>[m
[32m+[m[32m        <property name="default.javac.target" value="1.6"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user" name="-init-project">[m
[32m+[m[32m        <property file="nbproject/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/project.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-init-macrodef-property" name="-do-init">[m
[32m+[m[32m        <property name="platform.java" value="${java.home}/bin/java"/>[m
[32m+[m[32m        <available file="${manifest.file}" property="manifest.available"/>[m
[32m+[m[32m        <condition property="splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${application.splash}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${application.splash}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${main.class}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javac.profile"/>[m
[32m+[m[32m                <length length="0" string="${javac.profile}" when="greater"/>[m
[32m+[m[32m                <matches pattern="((1\.[89])|9)(\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${jar.archive.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <istrue value="${not.archive.disabled}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.mkdist">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="do.archive"/>[m
[32m+[m[32m                <isset property="libs.CopyLibs.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${mkdist.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+manifest.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="manifest.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="splashscreen.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="profile.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.tests">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${test.src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.sources">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="netbeans.home+have.tests">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="netbeans.home"/>[m
[32m+[m[32m                <isset property="have.tests"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="no.javadoc.preview">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.preview"/>[m
[32m+[m[32m                <isfalse value="${javadoc.preview}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="run.jvmargs" value=""/>[m
[32m+[m[32m        <property name="run.jvmargs.ide" value=""/>[m
[32m+[m[32m        <property name="javac.compilerargs" value=""/>[m
[32m+[m[32m        <property name="work.dir" value="${basedir}"/>[m
[32m+[m[32m        <condition property="no.deps">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${no.dependencies}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javac.debug" value="true"/>[m
[32m+[m[32m        <property name="javadoc.preview" value="true"/>[m
[32m+[m[32m        <property name="application.args" value=""/>[m
[32m+[m[32m        <property name="source.encoding" value="${file.encoding}"/>[m
[32m+[m[32m        <property name="runtime.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="manifest.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <condition property="javadoc.encoding.used" value="${javadoc.encoding}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.encoding"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${javadoc.encoding}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javadoc.encoding.used" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="includes" value="**"/>[m
[32m+[m[32m        <property name="excludes" value=""/>[m
[32m+[m[32m        <property name="do.depend" value="false"/>[m
[32m+[m[32m        <condition property="do.depend.true">[m
[32m+[m[32m            <istrue value="${do.depend}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <path id="endorsed.classpath.path" path="${endorsed.classpath}"/>[m
[32m+[m[32m        <condition else="" property="endorsed.classpath.cmd.line.arg" value="-Xbootclasspath/p:'${toString:endorsed.classpath.path}'">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="javac.profile.cmd.line.arg" value="-profile ${javac.profile}">[m
[32m+[m[32m            <isset property="profile.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="jdkBug6558476">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <matches pattern="1\.[56]" string="${java.specification.version}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <os family="unix"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="javac.fork">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <istrue value="${jdkBug6558476}"/>[m
[32m+[m[32m                <istrue value="${javac.external.vm}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="jar.index" value="false"/>[m
[32m+[m[32m        <property name="jar.index.metainf" value="${jar.index}"/>[m
[32m+[m[32m        <property name="copylibs.rebase" value="true"/>[m
[32m+[m[32m        <available file="${meta.inf.dir}/persistence.xml" property="has.persistence.xml"/>[m
[32m+[m[32m        <condition property="junit.available">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available classname="org.junit.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m                <available classname="junit.framework.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="testng.available">[m
[32m+[m[32m            <available classname="org.testng.annotations.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="junit+testng.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <istrue value="${testng.available}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="testng" property="testng.mode" value="mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="testng.debug.mode" value="-mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="java.failonerror" value="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init" name="-init-check">[m
[32m+[m[32m        <fail unless="src.dir">Must set src.dir</fail>[m
[32m+[m[32m        <fail unless="test.src.dir">Must set test.src.dir</fail>[m
[32m+[m[32m        <fail unless="build.dir">Must set build.dir</fail>[m
[32m+[m[32m        <fail unless="dist.dir">Must set dist.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.dir">Must set build.classes.dir</fail>[m
[32m+[m[32m        <fail unless="dist.javadoc.dir">Must set dist.javadoc.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.classes.dir">Must set build.test.classes.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.results.dir">Must set build.test.results.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.excludes">Must set build.classes.excludes</fail>[m
[32m+[m[32m        <fail unless="dist.jar">Must set dist.jar</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-property">[m
[32m+[m[32m        <macrodef name="property" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-macrodef-javac-with-processors">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <mkdir dir="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <compilerarg value="-processorpath"/>[m
[32m+[m[32m                    <compilerarg path="@{processorpath}:${empty.dir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.processors.internal}"/>[m
[32m+[m[32m                    <compilerarg line="${annotation.processing.processor.options}"/>[m
[32m+[m[32m                    <compilerarg value="-s"/>[m
[32m+[m[32m                    <compilerarg path="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.proc.none.internal}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" name="-init-macrodef-javac-without-processors" unless="ap.supported.internal">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-javac-with-processors,-init-macrodef-javac-without-processors" name="-init-macrodef-javac">[m
[32m+[m[32m        <macrodef name="depend" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <depend cache="${build.dir}/depcache" destdir="@{destdir}" excludes="${excludes}" includes="${includes}" srcdir="@{srcdir}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </depend>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="force-recompile" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <fail unless="javac.includes">Must set javac.includes</fail>[m
[32m+[m[32m                <pathconvert pathsep="${line.separator}" property="javac.includes.binary">[m
[32m+[m[32m                    <path>[m
[32m+[m[32m                        <filelist dir="@{destdir}" files="${javac.includes}"/>[m
[32m+[m[32m                    </path>[m
[32m+[m[32m                    <globmapper from="*.java" to="*.class"/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <tempfile deleteonexit="true" property="javac.includesfile.binary"/>[m
[32m+[m[32m                <echo file="${javac.includesfile.binary}" message="${javac.includes.binary}"/>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <files includesfile="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <fileset file="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-init">[m
[32m+[m[32m        <condition else="false" property="nb.junit.batch" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="nb.junit.single" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <isset property="test.method"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-test-properties">[m
[32m+[m[32m        <property name="test.binaryincludes" value="&lt;nothing&gt;"/>[m
[32m+[m[32m        <property name="test.binarytestincludes" value=""/>[m
[32m+[m[32m        <property name="test.binaryexcludes" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${nb.junit.single}" name="-init-macrodef-junit-single" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-batch" unless="${nb.junit.single}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-init,-init-macrodef-junit-single, -init-macrodef-junit-batch" if="${junit.available}" name="-init-macrodef-junit"/>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng">[m
[32m+[m[32m        <macrodef name="testng" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="" property="testng.methods.arg" value="@{testincludes}.@{testmethods}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <union id="test.set">[m
[32m+[m[32m                    <fileset dir="${test.src.dir}" excludes="@{excludes},**/*.xml,${excludes}" includes="@{includes}">[m
[32m+[m[32m                        <filename name="@{testincludes}"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </union>[m
[32m+[m[32m                <taskdef classname="org.testng.TestNGAntTask" classpath="${run.test.classpath}" name="testng"/>[m
[32m+[m[32m                <testng classfilesetref="test.set" failureProperty="tests.failed" listeners="org.testng.reporters.VerboseReporter" methods="${testng.methods.arg}" mode="${testng.mode}" outputdir="${build.test.results.dir}" suitename="HolaMundo1" testname="TestNG tests" workingDir="${work.dir}">[m
[32m+[m[32m                    <xmlfileset dir="${build.test.classes.dir}" includes="@{testincludes}"/>[m
[32m+[m[32m                    <propertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </propertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-test-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <echo>No tests executed.</echo>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit" if="${junit.available}" name="-init-macrodef-junit-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng" if="${testng.available}" name="-init-macrodef-testng-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-impl,-init-macrodef-junit-impl,-init-macrodef-testng-impl" name="-init-macrodef-test">[m
[32m+[m[32m        <macrodef name="test" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-debug" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-debug-batch">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug,-init-macrodef-junit-debug-batch" if="${junit.available}" name="-init-macrodef-junit-debug-impl">[m
[32m+[m[32m        <macrodef name="test-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit-debug excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng-debug">[m
[32m+[m[32m        <macrodef name="testng-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="-testclass @{testClass}" property="test.class.or.method" value="-methods @{testClass}.@{testMethod}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <condition else="-suitename HolaMundo1 -testname @{testClass} ${test.class.or.method}" property="testng.cmd.args" value="@{testClass}">[m
[32m+[m[32m                    <matches pattern=".*\.xml" string="@{testClass}"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <delete dir="${build.test.results.dir}" quiet="true"/>[m
[32m+[m[32m                <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m                <j2seproject3:debug classname="org.testng.TestNG" classpath="${debug.test.classpath}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <customize2/>[m
[32m+[m[32m                        <jvmarg value="-ea"/>[m
[32m+[m[32m                        <arg line="${testng.debug.mode}"/>[m
[32m+[m[32m                        <arg line="-d ${build.test.results.dir}"/>[m
[32m+[m[32m                        <arg line="-listener org.testng.reporters.VerboseReporter"/>[m
[32m+[m[32m                        <arg line="${testng.cmd.args}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug" if="${testng.available}" name="-init-macrodef-testng-debug-impl">[m
[32m+[m[32m        <macrodef name="testng-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element implicit="true" name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2/>[m
[32m+[m[32m                </j2seproject3:testng-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug-impl" if="${junit.available}" name="-init-macrodef-test-debug-junit">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-debug-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug-impl" if="${testng.available}" name="-init-macrodef-test-debug-testng">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug-impl testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2>[m
[32m+[m[32m                        <syspropertyset>[m
[32m+[m[32m                            <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                            <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                        </syspropertyset>[m
[32m+[m[32m                    </customize2>[m
[32m+[m[32m                </j2seproject3:testng-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-debug-junit,-init-macrodef-test-debug-testng" name="-init-macrodef-test-debug"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiling section; consider it deprecated[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile, -profile-init-check" if="profiler.info.jvmargs.agent" name="profile-init"/>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-init-macrodef-profile">[m
[32m+[m[32m        <macrodef name="resolve">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${env.@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="profile">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property environment="env"/>[m
[32m+[m[32m                <resolve name="profiler.current.path" value="${profiler.info.pathvar}"/>[m
[32m+[m[32m                <java classname="@{classname}" dir="${profiler.info.dir}" failonerror="${java.failonerror}" fork="true" jvm="${profiler.info.jvm}">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m                    <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m                    <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m                    <arg line="${application.args}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="${run.classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile" if="profiler.info.jvmargs.agent" name="-profile-init-check">[m
[32m+[m[32m        <fail unless="profiler.info.jvm">Must set JVM to use for profiling in profiler.info.jvm</fail>[m
[32m+[m[32m        <fail unless="profiler.info.jvmargs.agent">Must set profiler agent JVM arguments in profiler.info.jvmargs.agent</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB7.2 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-nbjpda">[m
[32m+[m[32m        <macrodef name="nbjpdastart" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="name"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="" name="stopclassname"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdastart addressproperty="jpda.address" name="@{name}" stopclassname="@{stopclassname}" transport="${debug-transport}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </nbjpdastart>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="nbjpdareload" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="dir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdareload>[m
[32m+[m[32m                    <fileset dir="@{dir}" includes="${fix.classes}">[m
[32m+[m[32m                        <include name="${fix.includes}*.class"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </nbjpdareload>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-debug-args">[m
[32m+[m[32m        <property name="version-output" value="java version &quot;${ant.java.version}"/>[m
[32m+[m[32m        <condition property="have-jdk-older-than-1.4">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.0"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.1"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.2"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.3"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="-Xdebug" property="debug-args-line" value="-Xdebug -Xnoagent -Djava.compiler=none">[m
[32m+[m[32m            <istrue value="${have-jdk-older-than-1.4}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="dt_socket" property="debug-transport-by-os" value="dt_shmem">[m
[32m+[m[32m            <os family="windows"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="${debug-transport-by-os}" property="debug-transport" value="${debug.transport}">[m
[32m+[m[32m            <isset property="debug.transport"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-debug">[m
[32m+[m[32m        <macrodef name="debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-java">[m
[32m+[m[32m        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${run.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="jvm" name="jvm"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-copylibs">[m
[32m+[m[32m        <macrodef name="copylibs" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${manifest.file}" name="manifest"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m                <pathconvert property="run.classpath.without.build.classes.dir">[m
[32m+[m[32m                    <path path="${run.classpath}"/>[m
[32m+[m[32m                    <map from="${build.classes.dir.resolved}" to=""/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <pathconvert pathsep=" " property="jar.classpath">[m
[32m+[m[32m                    <path path="${run.classpath.without.build.classes.dir}"/>[m
[32m+[m[32m                    <chainedmapper>[m
[32m+[m[32m                        <flattenmapper/>[m
[32m+[m[32m                        <filtermapper>[m
[32m+[m[32m                            <replacestring from=" " to="%20"/>[m
[32m+[m[32m                        </filtermapper>[m
[32m+[m[32m                        <globmapper from="*" to="lib/*"/>[m
[32m+[m[32m                    </chainedmapper>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <taskdef classname="org.netbeans.modules.java.j2seproject.copylibstask.CopyLibs" classpath="${libs.CopyLibs.classpath}" name="copylibs"/>[m
[32m+[m[32m                <copylibs compress="${jar.compress}" excludeFromCopy="${copylibs.excludes}" index="${jar.index}" indexMetaInf="${jar.index.metainf}" jarfile="${dist.jar}" manifest="@{manifest}" manifestencoding="UTF-8" rebase="${copylibs.rebase}" runtimeclasspath="${run.classpath.without.build.classes.dir}">[m
[32m+[m[32m                    <fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m                    <manifest>[m
[32m+[m[32m                        <attribute name="Class-Path" value="${jar.classpath}"/>[m
[32m+[m[32m                        <customize/>[m
[32m+[m[32m                    </manifest>[m
[32m+[m[32m                </copylibs>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-presetdef-jar">[m
[32m+[m[32m        <presetdef name="jar" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <jar compress="${jar.compress}" index="${jar.index}" jarfile="${dist.jar}" manifestencoding="UTF-8">[m
[32m+[m[32m                <j2seproject1:fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m            </jar>[m
[32m+[m[32m        </presetdef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-ap-cmdline-properties">[m
[32m+[m[32m        <property name="annotation.processing.enabled" value="true"/>[m
[32m+[m[32m        <property name="annotation.processing.processors.list" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.processor.options" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.run.all.processors" value="true"/>[m
[32m+[m[32m        <property name="javac.processorpath" value="${javac.classpath}"/>[m
[32m+[m[32m        <property name="javac.test.processorpath" value="${javac.test.classpath}"/>[m
[32m+[m[32m        <condition property="ap.supported.internal" value="true">[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <matches pattern="1\.[0-5](\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-ap-cmdline-supported">[m
[32m+[m[32m        <condition else="" property="ap.processors.internal" value="-processor ${annotation.processing.processors.list}">[m
[32m+[m[32m            <isfalse value="${annotation.processing.run.all.processors}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="ap.proc.none.internal" value="-proc:none">[m
[32m+[m[32m            <isfalse value="${annotation.processing.enabled}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties,-init-ap-cmdline-supported" name="-init-ap-cmdline">[m
[32m+[m[32m        <property name="ap.cmd.line.internal" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init,-post-init,-init-check,-init-macrodef-property,-init-macrodef-javac,-init-macrodef-test,-init-macrodef-test-debug,-init-macrodef-nbjpda,-init-macrodef-debug,-init-macrodef-java,-init-presetdef-jar,-init-ap-cmdline" name="init"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===================[m
[32m+[m[32m                COMPILATION SECTION[m
[32m+[m[32m                ===================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-jar-init" unless="built-jar.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-jar.properties" name="built-jar.properties"/>[m
[32m+[m[32m        <delete file="${built-jar.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.jar.${basedir}" name="-warn-already-built-jar">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: HolaMundo1 was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-jar-init" name="deps-jar" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-jar.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-jar.properties}" prefix="already.built.jar."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-jar"/>[m
[32m+[m[32m        <propertyfile file="${built-jar.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-check-automatic-build,-clean-after-automatic-build" name="-verify-automatic-build"/>[m
[32m+[m[32m    <target depends="init" name="-check-automatic-build">[m
[32m+[m[32m        <available file="${build.classes.dir}/.netbeans_automatic_build" property="netbeans.automatic.build"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.automatic.build" name="-clean-after-automatic-build">[m
[32m+[m[32m        <antcall target="clean"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar" name="-pre-pre-compile">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-depend">[m
[32m+[m[32m        <pathconvert property="build.generated.subdirs">[m
[32m+[m[32m            <dirset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="*"/>[m
[32m+[m[32m            </dirset>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <j2seproject3:depend srcdir="${src.dir}:${build.generated.subdirs}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile,-pre-compile, -copy-persistence-xml,-compile-depend" if="have.sources" name="-do-compile">[m
[32m+[m[32m        <j2seproject3:javac gensrcdir="${build.generated.sources.dir}"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="has.persistence.xml" name="-copy-persistence-xml">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}/META-INF">[m
[32m+[m[32m            <fileset dir="${meta.inf.dir}" includes="persistence.xml orm.xml"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile,-do-compile,-post-compile" description="Compile project." name="compile"/>[m
[32m+[m[32m    <target name="-pre-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile" name="-do-compile-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile/>[m
[32m+[m[32m        <j2seproject3:javac excludes="" gensrcdir="${build.generated.sources.dir}" includes="${javac.includes}" sourcepath="${src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile-single,-do-compile-single,-post-compile-single" name="compile-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ====================[m
[32m+[m[32m                JAR BUILDING SECTION[m
[32m+[m[32m                ====================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" name="-pre-pre-jar">[m
[32m+[m[32m        <dirname file="${dist.jar}" property="dist.jar.dir"/>[m
[32m+[m[32m        <mkdir dir="${dist.jar.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive" name="-do-jar-create-manifest" unless="manifest.available">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <touch file="${tmp.manifest.file}" verbose="false"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive+manifest.available" name="-do-jar-copy-manifest">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <copy encoding="${manifest.encoding}" file="${manifest.file}" outputencoding="UTF-8" tofile="${tmp.manifest.file}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+main.class.available" name="-do-jar-set-mainclass">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Main-Class" value="${main.class}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+profile.available" name="-do-jar-set-profile">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Profile" value="${javac.profile}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+splashscreen.available" name="-do-jar-set-splashscreen">[m
[32m+[m[32m        <basename file="${application.splash}" property="splashscreen.basename"/>[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy failonerror="false" file="${application.splash}" todir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="SplashScreen-Image" value="META-INF/${splashscreen.basename}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-init-macrodef-copylibs,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.mkdist" name="-do-jar-copylibs">[m
[32m+[m[32m        <j2seproject3:copylibs manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <echo level="info">To run this application from the command line without Ant, try:</echo>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <echo level="info">java -jar "${dist.jar.resolved}"</echo>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.archive" name="-do-jar-jar" unless="do.mkdist">[m
[32m+[m[32m        <j2seproject1:jar manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <pathconvert property="run.classpath.with.dist.jar">[m
[32m+[m[32m            <path path="${run.classpath}"/>[m
[32m+[m[32m            <map from="${build.classes.dir.resolved}" to="${dist.jar.resolved}"/>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <condition else="" property="jar.usage.message" value="To run this application from the command line without Ant, try:${line.separator}${platform.java} -cp ${run.classpath.with.dist.jar} ${main.class}">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="debug" property="jar.usage.level" value="info">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <echo level="${jar.usage.level}" message="${jar.usage.message}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-do-jar-copylibs" if="do.archive" name="-do-jar-delete-manifest">[m
[32m+[m[32m        <delete>[m
[32m+[m[32m            <fileset file="${tmp.manifest.file}"/>[m
[32m+[m[32m        </delete>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-jar,-do-jar-delete-manifest" name="-do-jar-without-libraries"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-copylibs,-do-jar-delete-manifest" name="-do-jar-with-libraries"/>[m
[32m+[m[32m    <target name="-post-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar-without-libraries,-do-jar-with-libraries,-post-jar" name="-do-jar"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar,-post-jar" description="Build JAR." name="jar"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                EXECUTION SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" description="Run a main class." name="run">[m
[32m+[m[32m        <j2seproject1:java>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-do-not-recompile">[m
[32m+[m[32m        <property name="javac.includes.binary" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single" name="run-single">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single" name="run-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}" classpath="${run.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                DEBUGGING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger">[m
[32m+[m[32m        <j2seproject1:nbjpdastart name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-main-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile" name="-debug-start-debuggee">[m
[32m+[m[32m        <j2seproject3:debug>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger,-debug-start-debuggee" description="Debug project in IDE." if="netbeans.home" name="debug"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-stepinto">[m
[32m+[m[32m        <j2seproject1:nbjpdastart stopclassname="${main.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger-stepinto,-debug-start-debuggee" if="netbeans.home" name="debug-stepinto"/>[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-single">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-single" if="netbeans.home" name="debug-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single" if="netbeans.home" name="-debug-start-debuggee-main-test">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}" classpath="${debug.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-main-test,-debug-start-debuggee-main-test" if="netbeans.home" name="debug-test-with-main"/>[m
[32m+[m[32m    <target depends="init" name="-pre-debug-fix">[m
[32m+[m[32m        <fail unless="fix.includes">Must set fix.includes</fail>[m
[32m+[m[32m        <property name="javac.includes" value="${fix.includes}.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-single" if="netbeans.home" name="-do-debug-fix">[m
[32m+[m[32m        <j2seproject1:nbjpdareload/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix" if="netbeans.home" name="debug-fix"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                PROFILING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiler integration[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="profile-init,compile" description="Profile a project in the IDE." if="profiler.info.jvmargs.agent" name="-profile-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" description="Profile a selected class in the IDE." if="profiler.info.jvmargs.agent" name="-profile-single-pre72">[m
[32m+[m[32m        <fail unless="profile.class">Must select one file in the IDE or set profile.class</fail>[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="${profile.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" if="profiler.info.jvmargs.agent" name="-profile-applet-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </profile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-test-single" if="profiler.info.jvmargs.agent" name="-profile-test-single-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <junit dir="${profiler.info.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" jvm="${profiler.info.jvm}" showoutput="true">[m
[32m+[m[32m            <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m            <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m            <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m            <test name="${profile.class}"/>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <syspropertyset>[m
[32m+[m[32m                <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m            </syspropertyset>[m
[32m+[m[32m            <formatter type="brief" usefile="false"/>[m
[32m+[m[32m            <formatter type="xml"/>[m
[32m+[m[32m        </junit>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB72 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target if="netbeans.home" name="-profile-check">[m
[32m+[m[32m        <condition property="profiler.configured">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-agentpath:"/>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-javaagent:"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-pre72" description="Profile a project in the IDE." if="profiler.configured" name="profile" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-single-pre72" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-single" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-test-single-pre72" description="Profile a selected test in the IDE." name="profile-test-single"/>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected test in the IDE." if="profiler.configured" name="profile-test" unless="profiler.info.jvmargs">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="test-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-test-with-main"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-applet-pre72" if="profiler.configured" name="profile-applet" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-applet"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                JAVADOC SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.sources" name="-javadoc-build">[m
[32m+[m[32m        <mkdir dir="${dist.javadoc.dir}"/>[m
[32m+[m[32m        <condition else="" property="javadoc.endorsed.classpath.cmd.line.arg" value="-J${endorsed.classpath.cmd.line.arg}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath.cmd.line.arg"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath.cmd.line.arg}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="bug5101868workaround" value="*.java">[m
[32m+[m[32m            <matches pattern="1\.[56](\..*)?" string="${java.version}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <javadoc additionalparam="-J-Dfile.encoding=${file.encoding} ${javadoc.additionalparam}" author="${javadoc.author}" charset="UTF-8" destdir="${dist.javadoc.dir}" docencoding="UTF-8" encoding="${javadoc.encoding.used}" failonerror="true" noindex="${javadoc.noindex}" nonavbar="${javadoc.nonavbar}" notree="${javadoc.notree}" private="${javadoc.private}" source="${javac.source}" splitindex="${javadoc.splitindex}" use="${javadoc.use}" useexternalfile="true" version="${javadoc.version}" windowtitle="${javadoc.windowtitle}">[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${javac.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${bug5101868workaround},${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/*.java"/>[m
[32m+[m[32m                <exclude name="*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <arg line="${javadoc.endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m        </javadoc>[m
[32m+[m[32m        <copy todir="${dist.javadoc.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build" if="netbeans.home" name="-javadoc-browse" unless="no.javadoc.preview">[m
[32m+[m[32m        <nbbrowse file="${dist.javadoc.dir}/index.html"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build,-javadoc-browse" description="Build Javadoc." name="javadoc"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                TEST COMPILATION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" if="have.tests" name="-pre-pre-compile-test">[m
[32m+[m[32m        <mkdir dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-test-depend">[m
[32m+[m[32m        <j2seproject3:depend classpath="${javac.test.classpath}" destdir="${build.test.classes.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test,-compile-test-depend" if="have.tests" name="-do-compile-test">[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" processorpath="${javac.test.processorpath}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test,-do-compile-test,-post-compile-test" name="compile-test"/>[m
[32m+[m[32m    <target name="-pre-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test-single" if="have.tests" name="-do-compile-test-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile destdir="${build.test.classes.dir}"/>[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" excludes="" includes="${javac.includes}" processorpath="${javac.test.processorpath}" sourcepath="${test.src.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test-single,-do-compile-test-single,-post-compile-test-single" name="compile-test-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST EXECUTION SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run" if="have.tests" name="-do-test-run">[m
[32m+[m[32m        <j2seproject3:test includes="${includes}" testincludes="**/*Test.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run" if="have.tests" name="-post-test-run">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="test-report"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home+have.tests" name="-test-browse"/>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run,test-report,-post-test-run,-test-browse" description="Run unit tests." name="test"/>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run-single">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${test.includes}" testincludes="${test.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single" if="have.tests" name="-post-test-run-single">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single,-post-test-run-single" description="Run single unit test." name="test-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single-method">[m
[32m+[m[32m        <fail unless="test.class">Must select some files in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${javac.includes}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method" if="have.tests" name="-post-test-run-single-method">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method,-post-test-run-single-method" description="Run single unit test." name="test-single-method"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST DEBUGGING SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testincludes="${javac.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test-method">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testMethod="${test.method}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test" if="netbeans.home+have.tests" name="-debug-start-debugger-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${test.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test" name="debug-test"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test-method" name="debug-test-method"/>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-test-single" if="netbeans.home" name="-do-debug-fix-test">[m
[32m+[m[32m        <j2seproject1:nbjpdareload dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix-test" if="netbeans.home" name="debug-fix-test"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET EXECUTION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" name="run-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject1:java classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET DEBUGGING  SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-applet" if="netbeans.home" name="debug-applet"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                CLEANUP SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-clean-init" unless="built-clean.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-clean.properties" name="built-clean.properties"/>[m
[32m+[m[32m        <delete file="${built-clean.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.clean.${basedir}" name="-warn-already-built-clean">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: HolaMundo1 was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-clean-init" name="deps-clean" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-clean.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-clean.properties}" prefix="already.built.clean."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-clean"/>[m
[32m+[m[32m        <propertyfile file="${built-clean.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" name="-do-clean">[m
[32m+[m[32m        <delete dir="${build.dir}"/>[m
[32m+[m[32m        <delete dir="${dist.dir}" followsymlinks="false" includeemptydirs="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-clean">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-clean,-do-clean,-post-clean" description="Clean build products." name="clean"/>[m
[32m+[m[32m    <target name="-check-call-dep">[m
[32m+[m[32m        <property file="${call.built.properties}" prefix="already.built."/>[m
[32m+[m[32m        <condition property="should.call.dep">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="already.built.${call.subproject}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${call.script}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-check-call-dep" if="should.call.dep" name="-maybe-call-dep">[m
[32m+[m[32m        <ant antfile="${call.script}" inheritall="false" target="${call.target}">[m
[32m+[m[32m            <propertyset>[m
[32m+[m[32m                <propertyref prefix="transfer."/>[m
[32m+[m[32m                <mapper from="transfer.*" to="*" type="glob"/>[m
[32m+[m[32m            </propertyset>[m
[32m+[m[32m        </ant>[m
[32m+[m[32m    </target>[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Swing/HolaMundo1/nbproject/genfiles.properties b/Ciclo2/Swing/HolaMundo1/nbproject/genfiles.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..fd55508[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Swing/HolaMundo1/nbproject/genfiles.properties[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32mbuild.xml.data.CRC32=84fd8b02[m
[32m+[m[32mbuild.xml.script.CRC32=f7b4a4ce[m
[32m+[m[32mbuild.xml.stylesheet.CRC32=8064a381@1.80.1.48[m
[32m+[m[32m# This file is used by a NetBeans-based IDE to track changes in generated files such as build-impl.xml.[m
[32m+[m[32m# Do not edit this file. You may delete it but then the IDE will never regenerate such files for you.[m
[32m+[m[32mnbproject/build-impl.xml.data.CRC32=84fd8b02[m
[32m+[m[32mnbproject/build-impl.xml.script.CRC32=f69bf948[m
[32m+[m[32mnbproject/build-impl.xml.stylesheet.CRC32=830a3534@1.80.1.48[m
[1mdiff --git a/Ciclo2/Swing/HolaMundo1/nbproject/project.properties b/Ciclo2/Swing/HolaMundo1/nbproject/project.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..cdeffc1[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Swing/HolaMundo1/nbproject/project.properties[m
[36m@@ -0,0 +1,74 @@[m
[32m+[m[32mannotation.processing.enabled=true[m
[32m+[m[32mannotation.processing.enabled.in.editor=false[m
[32m+[m[32mannotation.processing.processor.options=[m
[32m+[m[32mannotation.processing.processors.list=[m
[32m+[m[32mannotation.processing.run.all.processors=true[m
[32m+[m[32mannotation.processing.source.output=${build.generated.sources.dir}/ap-source-output[m
[32m+[m[32mbuild.classes.dir=${build.dir}/classes[m
[32m+[m[32mbuild.classes.excludes=**/*.java,**/*.form[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mbuild.dir=build[m
[32m+[m[32mbuild.generated.dir=${build.dir}/generated[m
[32m+[m[32mbuild.generated.sources.dir=${build.dir}/generated-sources[m
[32m+[m[32m# Only compile against the classpath explicitly listed here:[m
[32m+[m[32mbuild.sysclasspath=ignore[m
[32m+[m[32mbuild.test.classes.dir=${build.dir}/test/classes[m
[32m+[m[32mbuild.test.results.dir=${build.dir}/test/results[m
[32m+[m[32m# Uncomment to specify the preferred debugger connection transport:[m
[32m+[m[32m#debug.transport=dt_socket[m
[32m+[m[32mdebug.classpath=\[m
[32m+[m[32m    ${run.classpath}[m
[32m+[m[32mdebug.test.classpath=\[m
[32m+[m[32m    ${run.test.classpath}[m
[32m+[m[32m# Files in build.classes.dir which should be excluded from distribution jar[m
[32m+[m[32mdist.archive.excludes=[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mdist.dir=dist[m
[32m+[m[32mdist.jar=${dist.dir}/HolaMundo1.jar[m
[32m+[m[32mdist.javadoc.dir=${dist.dir}/javadoc[m
[32m+[m[32mexcludes=[m
[32m+[m[32mincludes=**[m
[32m+[m[32mjar.compress=false[m
[32m+[m[32mjavac.classpath=[m
[32m+[m[32m# Space-separated list of extra javac options[m
[32m+[m[32mjavac.compilerargs=[m
[32m+[m[32mjavac.deprecation=false[m
[32m+[m[32mjavac.external.vm=true[m
[32m+[m[32mjavac.processorpath=\[m
[32m+[m[32m    ${javac.classpath}[m
[32m+[m[32mjavac.source=1.8[m
[32m+[m[32mjavac.target=1.8[m
[32m+[m[32mjavac.test.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32mjavac.test.processorpath=\[m
[32m+[m[32m    ${javac.test.classpath}[m
[32m+[m[32mjavadoc.additionalparam=[m
[32m+[m[32mjavadoc.author=false[m
[32m+[m[32mjavadoc.encoding=${source.encoding}[m
[32m+[m[32mjavadoc.noindex=false[m
[32m+[m[32mjavadoc.nonavbar=false[m
[32m+[m[32mjavadoc.notree=false[m
[32m+[m[32mjavadoc.private=false[m
[32m+[m[32mjavadoc.splitindex=true[m
[32m+[m[32mjavadoc.use=true[m
[32m+[m[32mjavadoc.version=false[m
[32m+[m[32mjavadoc.windowtitle=[m
[32m+[m[32mmain.class=Swing.CrandoMarcoLocalizacion[m
[32m+[m[32mmanifest.file=manifest.mf[m
[32m+[m[32mmeta.inf.dir=${src.dir}/META-INF[m
[32m+[m[32mmkdist.disabled=false[m
[32m+[m[32mplatform.active=default_platform[m
[32m+[m[32mrun.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32m# Space-separated list of JVM arguments used when running the project.[m
[32m+[m[32m# You may also define separate properties like run-sys-prop.name=value instead of -Dname=value.[m
[32m+[m[32m# To set system properties for unit tests define test-sys-prop.name=value:[m
[32m+[m[32mrun.jvmargs=[m
[32m+[m[32mrun.test.classpath=\[m
[32m+[m[32m    ${javac.test.classpath}:\[m
[32m+[m[32m    ${build.test.classes.dir}[m
[32m+[m[32msource.encoding=UTF-8[m
[32m+[m[32msrc.dir=src[m
[32m+[m[32mtest.src.dir=test[m
[1mdiff --git a/Ciclo2/Swing/HolaMundo1/nbproject/project.xml b/Ciclo2/Swing/HolaMundo1/nbproject/project.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..ba0ac4c[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Swing/HolaMundo1/nbproject/project.xml[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project xmlns="http://www.netbeans.org/ns/project/1">[m
[32m+[m[32m    <type>org.netbeans.modules.java.j2seproject</type>[m
[32m+[m[32m    <configuration>[m
[32m+[m[32m        <data xmlns="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <name>HolaMundo1</name>[m
[32m+[m[32m            <source-roots>[m
[32m+[m[32m                <root id="src.dir"/>[m
[32m+[m[32m            </source-roots>[m
[32m+[m[32m            <test-roots>[m
[32m+[m[32m                <root id="test.src.dir"/>[m
[32m+[m[32m            </test-roots>[m
[32m+[m[32m        </data>[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Swing/HolaMundo1/src/Swing/CrandoMarcoLocalizacion.java b/Ciclo2/Swing/HolaMundo1/src/Swing/CrandoMarcoLocalizacion.java[m
[1mnew file mode 100644[m
[1mindex 0000000..ebeca7d[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Swing/HolaMundo1/src/Swing/CrandoMarcoLocalizacion.java[m
[36m@@ -0,0 +1,37 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m[32mpackage Swing;[m
[32m+[m
[32m+[m[32mimport javax.swing.*;[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m[32mpublic class CrandoMarcoLocalizacion {[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * @param args the command line arguments[m
[32m+[m[32m     */[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        miMarco marco1 = new miMarco();[m
[32m+[m[32m        marco1.setVisible(true);[m
[32m+[m[32m        marco1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mclass miMarco extends JFrame{[m
[32m+[m[32m    public miMarco(){[m
[32m+[m[32m        //setSize(500,300); //tamaño del frame[m
[32m+[m[32m        //setLocation(500, 300); //ubicación del frame en px[m
[32m+[m[32m        setBounds(500,300, 550, 250); //añade tamaño y ubicación del frame[m
[32m+[m[32m        //setResizable(false); //decidir si se puede cambiar o no el tamaño de la ventana[m
[32m+[m[32m        //setExtendedState(JFrame.MAXIMIZED_BOTH); //ampliar la ventana a tamaño completo (maximizar)[m
[32m+[m[32m        setTitle("Mi Ventana"); //pone el titulo del frame[m
[32m+[m[41m    [m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Swing/HolaMundo1/src/Swing/CreandoMarcoCentrado.java b/Ciclo2/Swing/HolaMundo1/src/Swing/CreandoMarcoCentrado.java[m
[1mnew file mode 100644[m
[1mindex 0000000..cc72ebb[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Swing/HolaMundo1/src/Swing/CreandoMarcoCentrado.java[m
[36m@@ -0,0 +1,37 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m[32mpackage Swing;[m
[32m+[m
[32m+[m[32mimport java.awt.Toolkit;[m
[32m+[m[32mimport javax.swing.JFrame;[m
[32m+[m[32mimport java.awt.*;[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m[32mpublic class CreandoMarcoCentrado {[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m       MarcoCentrado miMarco = new MarcoCentrado();[m
[32m+[m[32m       miMarco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);[m
[32m+[m[32m       miMarco.setVisible(true);[m
[32m+[m[32m    }[m[41m       [m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mclass MarcoCentrado extends  JFrame{[m
[32m+[m[32m    public MarcoCentrado(){[m
[32m+[m[32m        Toolkit miPantalla = Toolkit.getDefaultToolkit(); //Accede a los valores por defecto de la mquina[m
[32m+[m[32m        Dimension tamañoPantalla = miPantalla.getScreenSize(); //accede al tamaño de la pantalla[m
[32m+[m[32m        int alturaPantalla = tamañoPantalla.height; //asigna la alutra de la pantalla a una variable[m
[32m+[m[32m        int anchoPantalla = tamañoPantalla.width; //asigna el ancho de la pantalla a una variable[m
[32m+[m[32m        setSize(anchoPantalla/2, alturaPantalla/2); //asigna las dimensiones de la ventana tomando como base el ancho y alto de la pantalla[m
[32m+[m[32m        setLocation(anchoPantalla/4, alturaPantalla/4); //asigna la ubicación de la ventana tomando como base el ancho y alto de la pantalla[m[41m [m
[32m+[m[32m        setTitle("Marco Centrado");//asigna titulo[m
[32m+[m[32m        Image miIcono = miPantalla.getImage("src/holamundo1/images.png"); //creaobjeto imagen con una imagen en especifico[m
[32m+[m[32m        setIconImage(miIcono); //Asigna la imagen como icono de la ventana[m
[32m+[m[41m        [m
[32m+[m[32m    }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/Ciclo2/Swing/HolaMundo1/src/Swing/EscribiendoEnMarco.java b/Ciclo2/Swing/HolaMundo1/src/Swing/EscribiendoEnMarco.java[m
[1mnew file mode 100644[m
[1mindex 0000000..80d812c[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Swing/HolaMundo1/src/Swing/EscribiendoEnMarco.java[m
[36m@@ -0,0 +1,39 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m[32mpackage Swing;[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author ErikaEspejo[m
[32m+[m[32m */[m
[32m+[m[32mimport javax.swing.*;[m
[32m+[m[32mimport java.awt.*;[m
[32m+[m
[32m+[m[32mpublic class EscribiendoEnMarco {[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        MarcoConTexto miMarco = new MarcoConTexto();[m[41m [m
[32m+[m[32m        miMarco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);[m
[32m+[m[32m    }[m[41m     [m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mclass MarcoConTexto extends JFrame{[m
[32m+[m[32m    public MarcoConTexto(){[m
[32m+[m[32m        setVisible(true);[m
[32m+[m[32m        setSize(600, 450);[m
[32m+[m[32m        setLocation(400, 200);[m
[32m+[m[32m        setTitle("Primer Texto");[m
[32m+[m[32m        Lamina miLamina = new Lamina(); //se instancia la clase Lamina[m
[32m+[m[32m        add(miLamina); //Se añade la lamina con el label al marco[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mclass  Lamina extends JPanel{[m
[32m+[m[32m    @Override //paint component se encuentra en la clase Component, del cual hereda Jpanel, por eso se hace polimorfismo por sobreescritura[m
[32m+[m[32m    public  void paintComponent(Graphics g){[m
[32m+[m[32m        super.paintComponent(g); //dibuja una lamina transparente (trabajo original de la clase JPanel)[m
[32m+[m[32m        g.drawString("Estamos aprendiendo Swing", 100, 100); //dibuja un label[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/Ciclo2/Swing/HolaMundo1/src/Swing/PruebaDibujo.java b/Ciclo2/Swing/HolaMundo1/src/Swing/PruebaDibujo.java[m
[1mnew file mode 100644[m
[1mindex 0000000..5a115a1[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Swing/HolaMundo1/src/Swing/PruebaDibujo.java[m
[36m@@ -0,0 +1,61 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32mpackage Swing;[m
[32m+[m
[32m+[m[32mimport javax.swing.*;[m
[32m+[m[32mimport java.awt.*;[m
[32m+[m[32mimport java.awt.geom.Ellipse2D;[m
[32m+[m[32mimport java.awt.geom.Line2D;[m
[32m+[m[32mimport java.awt.geom.Rectangle2D;[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @autor: ErikaEspejo[m[41m [m
[32m+[m[32m * @fecha: Nov 8, 2020[m
[32m+[m[32m */[m
[32m+[m[32mpublic class PruebaDibujo {[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        MarcoConDibujo miMarco = new MarcoConDibujo();[m
[32m+[m[32m        miMarco.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);[m
[32m+[m[32m        miMarco.setVisible(true);[m
[32m+[m[41m        [m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mclass MarcoConDibujo extends JFrame {[m
[32m+[m[41m    [m
[32m+[m[32m    public MarcoConDibujo(){[m
[32m+[m[32m        setTitle("Prueba de Dibujo");[m
[32m+[m[32m        setSize(400, 400);[m
[32m+[m[32m        LaminaConFiguras miLamina = new LaminaConFiguras();[m
[32m+[m[32m        add(miLamina);[m
[32m+[m[41m        [m
[32m+[m[41m        [m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mclass LaminaConFiguras extends JPanel{[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public void paintComponent(Graphics g){[m
[32m+[m[32m        super.paintComponent(g);[m
[32m+[m[32m        //g.drawRect(50, 50, 200, 200); //dibuja figuras sin la posibilidad de rotarlo, editar grueso de linea, etc...[m
[32m+[m[32m        //g.drawLine(0, 0, 400, 400);//dibuja figuras sin la posibilidad de rotarlo, editar grueso de linea, etc...[m
[32m+[m[32m        //g.drawArc(50, 50, 200, 200, 120, 150);//dibuja figuras sin la posibilidad de rotarlo, editar grueso de linea, etc...[m
[32m+[m[32m        Graphics2D g2 = (Graphics2D) g; //se instancia g2 de la clase Graphics[m
[32m+[m[32m        Rectangle2D rectangulo = new Rectangle2D.Double(100, 100, 200.25, 150); //Se instancia rectangle.double[m
[32m+[m[32m        g2.draw(rectangulo); //se dibuja el rectanglo[m
[32m+[m[32m        Ellipse2D elipse = new Ellipse2D.Double(); //Se instancia elipse.double[m
[32m+[m[32m        elipse.setFrame(rectangulo); //Se asignan las medidas del rectangulo en que e¿queda inscrito[m
[32m+[m[32m        g2.draw(elipse); //se dibuja elipse[m
[32m+[m[32m        g2.draw(new Line2D.Double(100,100,300,250)); //se dibuja linea instanciandola directamnete[m
[32m+[m[32m        double centroX = rectangulo.getCenterX(); //Se obtiene centro de rectangulo[m
[32m+[m[32m        double centroY = rectangulo.getCenterY();//Se obtiene centro de rectangulo[m
[32m+[m[32m        double radio = 150;[m
[32m+[m[32m        Ellipse2D circulo = new Ellipse2D.Double();[m[41m [m
[32m+[m[32m        circulo.setFrameFromCenter(centroX, centroY, centroX+radio, centroY+radio);[m
[32m+[m[32m        g2.draw(circulo);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/Ciclo2/Swing/HolaMundo1/src/Swing/images.png b/Ciclo2/Swing/HolaMundo1/src/Swing/images.png[m
[1mnew file mode 100644[m
[1mindex 0000000..658220e[m
Binary files /dev/null and b/Ciclo2/Swing/HolaMundo1/src/Swing/images.png differ
[1mdiff --git a/Ciclo2/Triki/build.xml b/Ciclo2/Triki/build.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..ed39952[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Triki/build.xml[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!-- You may freely edit this file. See commented blocks below for -->[m
[32m+[m[32m<!-- some examples of how to customize the build. -->[m
[32m+[m[32m<!-- (If you delete it and reopen the project it will be recreated.) -->[m
[32m+[m[32m<!-- By default, only the Clean and Build commands use this build script. -->[m
[32m+[m[32m<!-- Commands such as Run, Debug, and Test only use this build script if -->[m
[32m+[m[32m<!-- the Compile on Save feature is turned off for the project. -->[m
[32m+[m[32m<!-- You can turn off the Compile on Save (or Deploy on Save) setting -->[m
[32m+[m[32m<!-- in the project's Project Properties dialog box.-->[m
[32m+[m[32m<project name="Triki" default="default" basedir=".">[m
[32m+[m[32m    <description>Builds, tests, and runs the project Triki.</description>[m
[32m+[m[32m    <import file="nbproject/build-impl.xml"/>[m
[32m+[m[32m    <!--[m
[32m+[m
[32m+[m[32m    There exist several targets which are by default empty and which can be[m[41m [m
[32m+[m[32m    used for execution of your tasks. These targets are usually executed[m[41m [m
[32m+[m[32m    before and after some main targets. They are:[m[41m [m
[32m+[m
[32m+[m[32m      -pre-init:                 called before initialization of project properties[m
[32m+[m[32m      -post-init:                called after initialization of project properties[m
[32m+[m[32m      -pre-compile:              called before javac compilation[m
[32m+[m[32m      -post-compile:             called after javac compilation[m
[32m+[m[32m      -pre-compile-single:       called before javac compilation of single file[m
[32m+[m[32m      -post-compile-single:      called after javac compilation of single file[m
[32m+[m[32m      -pre-compile-test:         called before javac compilation of JUnit tests[m
[32m+[m[32m      -post-compile-test:        called after javac compilation of JUnit tests[m
[32m+[m[32m      -pre-compile-test-single:  called before javac compilation of single JUnit test[m
[32m+[m[32m      -post-compile-test-single: called after javac compilation of single JUunit test[m
[32m+[m[32m      -pre-jar:                  called before JAR building[m
[32m+[m[32m      -post-jar:                 called after JAR building[m
[32m+[m[32m      -post-clean:               called after cleaning build products[m
[32m+[m
[32m+[m[32m    (Targets beginning with '-' are not intended to be called on their own.)[m
[32m+[m
[32m+[m[32m    Example of inserting an obfuscator after compilation could look like this:[m
[32m+[m
[32m+[m[32m        <target name="-post-compile">[m
[32m+[m[32m            <obfuscate>[m
[32m+[m[32m                <fileset dir="${build.classes.dir}"/>[m
[32m+[m[32m            </obfuscate>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    For list of available properties check the imported[m[41m [m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m
[32m+[m[32m    Another way to customize the build is by overriding existing main targets.[m
[32m+[m[32m    The targets of interest are:[m[41m [m
[32m+[m
[32m+[m[32m      -init-macrodef-javac:     defines macro for javac compilation[m
[32m+[m[32m      -init-macrodef-junit:     defines macro for junit execution[m
[32m+[m[32m      -init-macrodef-debug:     defines macro for class debugging[m
[32m+[m[32m      -init-macrodef-java:      defines macro for class execution[m
[32m+[m[32m      -do-jar:                  JAR building[m
[32m+[m[32m      run:                      execution of project[m[41m [m
[32m+[m[32m      -javadoc-build:           Javadoc generation[m
[32m+[m[32m      test-report:              JUnit report generation[m
[32m+[m
[32m+[m[32m    An example of overriding the target for project execution could look like this:[m
[32m+[m
[32m+[m[32m        <target name="run" depends="Triki-impl.jar">[m
[32m+[m[32m            <exec dir="bin" executable="launcher.exe">[m
[32m+[m[32m                <arg file="${dist.jar}"/>[m
[32m+[m[32m            </exec>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    Notice that the overridden target depends on the jar target and not only on[m[41m [m
[32m+[m[32m    the compile target as the regular run target does. Again, for a list of available[m[41m [m
[32m+[m[32m    properties which you can use, check the target you are overriding in the[m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m[32m    -->[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Triki/manifest.mf b/Ciclo2/Triki/manifest.mf[m
[1mnew file mode 100644[m
[1mindex 0000000..328e8e5[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Triki/manifest.mf[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mManifest-Version: 1.0[m
[32m+[m[32mX-COMMENT: Main-Class will be added automatically by build[m
[32m+[m
[1mdiff --git a/Ciclo2/Triki/nbproject/build-impl.xml b/Ciclo2/Triki/nbproject/build-impl.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..d3b8943[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Triki/nbproject/build-impl.xml[m
[36m@@ -0,0 +1,1420 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!--[m
[32m+[m[32m*** GENERATED FROM project.xml - DO NOT EDIT  ***[m
[32m+[m[32m***         EDIT ../build.xml INSTEAD         ***[m
[32m+[m
[32m+[m[32mFor the purpose of easier reading the script[m
[32m+[m[32mis divided into following sections:[m
[32m+[m
[32m+[m[32m  - initialization[m
[32m+[m[32m  - compilation[m
[32m+[m[32m  - jar[m
[32m+[m[32m  - execution[m
[32m+[m[32m  - debugging[m
[32m+[m[32m  - javadoc[m
[32m+[m[32m  - test compilation[m
[32m+[m[32m  - test execution[m
[32m+[m[32m  - test debugging[m
[32m+[m[32m  - applet[m
[32m+[m[32m  - cleanup[m
[32m+[m
[32m+[m[32m        -->[m
[32m+[m[32m<project xmlns:j2seproject1="http://www.netbeans.org/ns/j2se-project/1" xmlns:j2seproject3="http://www.netbeans.org/ns/j2se-project/3" xmlns:jaxrpc="http://www.netbeans.org/ns/j2se-project/jax-rpc" basedir=".." default="default" name="Triki-impl">[m
[32m+[m[32m    <fail message="Please build using Ant 1.8.0 or higher.">[m
[32m+[m[32m        <condition>[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <antversion atleast="1.8.0"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </fail>[m
[32m+[m[32m    <target depends="test,jar,javadoc" description="Build and test whole project." name="default"/>[m
[32m+[m[32m    <!--[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m                INITIALIZATION SECTION[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init" name="-init-private">[m
[32m+[m[32m        <property file="nbproject/private/config.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/private.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private" name="-init-user">[m
[32m+[m[32m        <property file="${user.properties.file}"/>[m
[32m+[m[32m        <!-- The two properties below are usually overridden -->[m
[32m+[m[32m        <!-- by the active platform. Just a fallback. -->[m
[32m+[m[32m        <property name="default.javac.source" value="1.6"/>[m
[32m+[m[32m        <property name="default.javac.target" value="1.6"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user" name="-init-project">[m
[32m+[m[32m        <property file="nbproject/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/project.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-init-macrodef-property" name="-do-init">[m
[32m+[m[32m        <property name="platform.java" value="${java.home}/bin/java"/>[m
[32m+[m[32m        <available file="${manifest.file}" property="manifest.available"/>[m
[32m+[m[32m        <condition property="splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${application.splash}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${application.splash}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${main.class}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javac.profile"/>[m
[32m+[m[32m                <length length="0" string="${javac.profile}" when="greater"/>[m
[32m+[m[32m                <matches pattern="((1\.[89])|9)(\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${jar.archive.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <istrue value="${not.archive.disabled}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.mkdist">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="do.archive"/>[m
[32m+[m[32m                <isset property="libs.CopyLibs.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${mkdist.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+manifest.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="manifest.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="splashscreen.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="profile.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.tests">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${test.src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.sources">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="netbeans.home+have.tests">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="netbeans.home"/>[m
[32m+[m[32m                <isset property="have.tests"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="no.javadoc.preview">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.preview"/>[m
[32m+[m[32m                <isfalse value="${javadoc.preview}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="run.jvmargs" value=""/>[m
[32m+[m[32m        <property name="run.jvmargs.ide" value=""/>[m
[32m+[m[32m        <property name="javac.compilerargs" value=""/>[m
[32m+[m[32m        <property name="work.dir" value="${basedir}"/>[m
[32m+[m[32m        <condition property="no.deps">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${no.dependencies}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javac.debug" value="true"/>[m
[32m+[m[32m        <property name="javadoc.preview" value="true"/>[m
[32m+[m[32m        <property name="application.args" value=""/>[m
[32m+[m[32m        <property name="source.encoding" value="${file.encoding}"/>[m
[32m+[m[32m        <property name="runtime.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="manifest.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <condition property="javadoc.encoding.used" value="${javadoc.encoding}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.encoding"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${javadoc.encoding}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javadoc.encoding.used" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="includes" value="**"/>[m
[32m+[m[32m        <property name="excludes" value=""/>[m
[32m+[m[32m        <property name="do.depend" value="false"/>[m
[32m+[m[32m        <condition property="do.depend.true">[m
[32m+[m[32m            <istrue value="${do.depend}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <path id="endorsed.classpath.path" path="${endorsed.classpath}"/>[m
[32m+[m[32m        <condition else="" property="endorsed.classpath.cmd.line.arg" value="-Xbootclasspath/p:'${toString:endorsed.classpath.path}'">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="javac.profile.cmd.line.arg" value="-profile ${javac.profile}">[m
[32m+[m[32m            <isset property="profile.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="jdkBug6558476">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <matches pattern="1\.[56]" string="${java.specification.version}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <os family="unix"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="javac.fork">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <istrue value="${jdkBug6558476}"/>[m
[32m+[m[32m                <istrue value="${javac.external.vm}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="jar.index" value="false"/>[m
[32m+[m[32m        <property name="jar.index.metainf" value="${jar.index}"/>[m
[32m+[m[32m        <property name="copylibs.rebase" value="true"/>[m
[32m+[m[32m        <available file="${meta.inf.dir}/persistence.xml" property="has.persistence.xml"/>[m
[32m+[m[32m        <condition property="junit.available">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available classname="org.junit.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m                <available classname="junit.framework.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="testng.available">[m
[32m+[m[32m            <available classname="org.testng.annotations.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="junit+testng.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <istrue value="${testng.available}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="testng" property="testng.mode" value="mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="testng.debug.mode" value="-mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="java.failonerror" value="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init" name="-init-check">[m
[32m+[m[32m        <fail unless="src.dir">Must set src.dir</fail>[m
[32m+[m[32m        <fail unless="test.src.dir">Must set test.src.dir</fail>[m
[32m+[m[32m        <fail unless="build.dir">Must set build.dir</fail>[m
[32m+[m[32m        <fail unless="dist.dir">Must set dist.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.dir">Must set build.classes.dir</fail>[m
[32m+[m[32m        <fail unless="dist.javadoc.dir">Must set dist.javadoc.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.classes.dir">Must set build.test.classes.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.results.dir">Must set build.test.results.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.excludes">Must set build.classes.excludes</fail>[m
[32m+[m[32m        <fail unless="dist.jar">Must set dist.jar</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-property">[m
[32m+[m[32m        <macrodef name="property" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-macrodef-javac-with-processors">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <mkdir dir="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <compilerarg value="-processorpath"/>[m
[32m+[m[32m                    <compilerarg path="@{processorpath}:${empty.dir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.processors.internal}"/>[m
[32m+[m[32m                    <compilerarg line="${annotation.processing.processor.options}"/>[m
[32m+[m[32m                    <compilerarg value="-s"/>[m
[32m+[m[32m                    <compilerarg path="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.proc.none.internal}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" name="-init-macrodef-javac-without-processors" unless="ap.supported.internal">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-javac-with-processors,-init-macrodef-javac-without-processors" name="-init-macrodef-javac">[m
[32m+[m[32m        <macrodef name="depend" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <depend cache="${build.dir}/depcache" destdir="@{destdir}" excludes="${excludes}" includes="${includes}" srcdir="@{srcdir}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </depend>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="force-recompile" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <fail unless="javac.includes">Must set javac.includes</fail>[m
[32m+[m[32m                <pathconvert pathsep="${line.separator}" property="javac.includes.binary">[m
[32m+[m[32m                    <path>[m
[32m+[m[32m                        <filelist dir="@{destdir}" files="${javac.includes}"/>[m
[32m+[m[32m                    </path>[m
[32m+[m[32m                    <globmapper from="*.java" to="*.class"/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <tempfile deleteonexit="true" property="javac.includesfile.binary"/>[m
[32m+[m[32m                <echo file="${javac.includesfile.binary}" message="${javac.includes.binary}"/>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <files includesfile="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <fileset file="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-init">[m
[32m+[m[32m        <condition else="false" property="nb.junit.batch" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="nb.junit.single" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <isset property="test.method"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-test-properties">[m
[32m+[m[32m        <property name="test.binaryincludes" value="&lt;nothing&gt;"/>[m
[32m+[m[32m        <property name="test.binarytestincludes" value=""/>[m
[32m+[m[32m        <property name="test.binaryexcludes" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${nb.junit.single}" name="-init-macrodef-junit-single" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-batch" unless="${nb.junit.single}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-init,-init-macrodef-junit-single, -init-macrodef-junit-batch" if="${junit.available}" name="-init-macrodef-junit"/>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng">[m
[32m+[m[32m        <macrodef name="testng" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="" property="testng.methods.arg" value="@{testincludes}.@{testmethods}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <union id="test.set">[m
[32m+[m[32m                    <fileset dir="${test.src.dir}" excludes="@{excludes},**/*.xml,${excludes}" includes="@{includes}">[m
[32m+[m[32m                        <filename name="@{testincludes}"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </union>[m
[32m+[m[32m                <taskdef classname="org.testng.TestNGAntTask" classpath="${run.test.classpath}" name="testng"/>[m
[32m+[m[32m                <testng classfilesetref="test.set" failureProperty="tests.failed" listeners="org.testng.reporters.VerboseReporter" methods="${testng.methods.arg}" mode="${testng.mode}" outputdir="${build.test.results.dir}" suitename="Triki" testname="TestNG tests" workingDir="${work.dir}">[m
[32m+[m[32m                    <xmlfileset dir="${build.test.classes.dir}" includes="@{testincludes}"/>[m
[32m+[m[32m                    <propertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </propertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-test-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <echo>No tests executed.</echo>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit" if="${junit.available}" name="-init-macrodef-junit-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng" if="${testng.available}" name="-init-macrodef-testng-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-impl,-init-macrodef-junit-impl,-init-macrodef-testng-impl" name="-init-macrodef-test">[m
[32m+[m[32m        <macrodef name="test" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-debug" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-debug-batch">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug,-init-macrodef-junit-debug-batch" if="${junit.available}" name="-init-macrodef-junit-debug-impl">[m
[32m+[m[32m        <macrodef name="test-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit-debug excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng-debug">[m
[32m+[m[32m        <macrodef name="testng-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="-testclass @{testClass}" property="test.class.or.method" value="-methods @{testClass}.@{testMethod}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <condition else="-suitename Triki -testname @{testClass} ${test.class.or.method}" property="testng.cmd.args" value="@{testClass}">[m
[32m+[m[32m                    <matches pattern=".*\.xml" string="@{testClass}"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <delete dir="${build.test.results.dir}" quiet="true"/>[m
[32m+[m[32m                <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m                <j2seproject3:debug classname="org.testng.TestNG" classpath="${debug.test.classpath}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <customize2/>[m
[32m+[m[32m                        <jvmarg value="-ea"/>[m
[32m+[m[32m                        <arg line="${testng.debug.mode}"/>[m
[32m+[m[32m                        <arg line="-d ${build.test.results.dir}"/>[m
[32m+[m[32m                        <arg line="-listener org.testng.reporters.VerboseReporter"/>[m
[32m+[m[32m                        <arg line="${testng.cmd.args}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug" if="${testng.available}" name="-init-macrodef-testng-debug-impl">[m
[32m+[m[32m        <macrodef name="testng-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element implicit="true" name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2/>[m
[32m+[m[32m                </j2seproject3:testng-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug-impl" if="${junit.available}" name="-init-macrodef-test-debug-junit">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-debug-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug-impl" if="${testng.available}" name="-init-macrodef-test-debug-testng">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug-impl testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2>[m
[32m+[m[32m                        <syspropertyset>[m
[32m+[m[32m                            <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                            <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                        </syspropertyset>[m
[32m+[m[32m                    </customize2>[m
[32m+[m[32m                </j2seproject3:testng-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-debug-junit,-init-macrodef-test-debug-testng" name="-init-macrodef-test-debug"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiling section; consider it deprecated[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile, -profile-init-check" if="profiler.info.jvmargs.agent" name="profile-init"/>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-init-macrodef-profile">[m
[32m+[m[32m        <macrodef name="resolve">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${env.@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="profile">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property environment="env"/>[m
[32m+[m[32m                <resolve name="profiler.current.path" value="${profiler.info.pathvar}"/>[m
[32m+[m[32m                <java classname="@{classname}" dir="${profiler.info.dir}" failonerror="${java.failonerror}" fork="true" jvm="${profiler.info.jvm}">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m                    <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m                    <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m                    <arg line="${application.args}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="${run.classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile" if="profiler.info.jvmargs.agent" name="-profile-init-check">[m
[32m+[m[32m        <fail unless="profiler.info.jvm">Must set JVM to use for profiling in profiler.info.jvm</fail>[m
[32m+[m[32m        <fail unless="profiler.info.jvmargs.agent">Must set profiler agent JVM arguments in profiler.info.jvmargs.agent</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB7.2 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-nbjpda">[m
[32m+[m[32m        <macrodef name="nbjpdastart" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="name"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="" name="stopclassname"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdastart addressproperty="jpda.address" name="@{name}" stopclassname="@{stopclassname}" transport="${debug-transport}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </nbjpdastart>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="nbjpdareload" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="dir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdareload>[m
[32m+[m[32m                    <fileset dir="@{dir}" includes="${fix.classes}">[m
[32m+[m[32m                        <include name="${fix.includes}*.class"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </nbjpdareload>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-debug-args">[m
[32m+[m[32m        <property name="version-output" value="java version &quot;${ant.java.version}"/>[m
[32m+[m[32m        <condition property="have-jdk-older-than-1.4">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.0"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.1"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.2"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.3"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="-Xdebug" property="debug-args-line" value="-Xdebug -Xnoagent -Djava.compiler=none">[m
[32m+[m[32m            <istrue value="${have-jdk-older-than-1.4}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="dt_socket" property="debug-transport-by-os" value="dt_shmem">[m
[32m+[m[32m            <os family="windows"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="${debug-transport-by-os}" property="debug-transport" value="${debug.transport}">[m
[32m+[m[32m            <isset property="debug.transport"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-debug">[m
[32m+[m[32m        <macrodef name="debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-java">[m
[32m+[m[32m        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${run.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="jvm" name="jvm"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-copylibs">[m
[32m+[m[32m        <macrodef name="copylibs" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${manifest.file}" name="manifest"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m                <pathconvert property="run.classpath.without.build.classes.dir">[m
[32m+[m[32m                    <path path="${run.classpath}"/>[m
[32m+[m[32m                    <map from="${build.classes.dir.resolved}" to=""/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <pathconvert pathsep=" " property="jar.classpath">[m
[32m+[m[32m                    <path path="${run.classpath.without.build.classes.dir}"/>[m
[32m+[m[32m                    <chainedmapper>[m
[32m+[m[32m                        <flattenmapper/>[m
[32m+[m[32m                        <filtermapper>[m
[32m+[m[32m                            <replacestring from=" " to="%20"/>[m
[32m+[m[32m                        </filtermapper>[m
[32m+[m[32m                        <globmapper from="*" to="lib/*"/>[m
[32m+[m[32m                    </chainedmapper>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <taskdef classname="org.netbeans.modules.java.j2seproject.copylibstask.CopyLibs" classpath="${libs.CopyLibs.classpath}" name="copylibs"/>[m
[32m+[m[32m                <copylibs compress="${jar.compress}" excludeFromCopy="${copylibs.excludes}" index="${jar.index}" indexMetaInf="${jar.index.metainf}" jarfile="${dist.jar}" manifest="@{manifest}" manifestencoding="UTF-8" rebase="${copylibs.rebase}" runtimeclasspath="${run.classpath.without.build.classes.dir}">[m
[32m+[m[32m                    <fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m                    <manifest>[m
[32m+[m[32m                        <attribute name="Class-Path" value="${jar.classpath}"/>[m
[32m+[m[32m                        <customize/>[m
[32m+[m[32m                    </manifest>[m
[32m+[m[32m                </copylibs>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-presetdef-jar">[m
[32m+[m[32m        <presetdef name="jar" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <jar compress="${jar.compress}" index="${jar.index}" jarfile="${dist.jar}" manifestencoding="UTF-8">[m
[32m+[m[32m                <j2seproject1:fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m            </jar>[m
[32m+[m[32m        </presetdef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-ap-cmdline-properties">[m
[32m+[m[32m        <property name="annotation.processing.enabled" value="true"/>[m
[32m+[m[32m        <property name="annotation.processing.processors.list" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.processor.options" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.run.all.processors" value="true"/>[m
[32m+[m[32m        <property name="javac.processorpath" value="${javac.classpath}"/>[m
[32m+[m[32m        <property name="javac.test.processorpath" value="${javac.test.classpath}"/>[m
[32m+[m[32m        <condition property="ap.supported.internal" value="true">[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <matches pattern="1\.[0-5](\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-ap-cmdline-supported">[m
[32m+[m[32m        <condition else="" property="ap.processors.internal" value="-processor ${annotation.processing.processors.list}">[m
[32m+[m[32m            <isfalse value="${annotation.processing.run.all.processors}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="ap.proc.none.internal" value="-proc:none">[m
[32m+[m[32m            <isfalse value="${annotation.processing.enabled}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties,-init-ap-cmdline-supported" name="-init-ap-cmdline">[m
[32m+[m[32m        <property name="ap.cmd.line.internal" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init,-post-init,-init-check,-init-macrodef-property,-init-macrodef-javac,-init-macrodef-test,-init-macrodef-test-debug,-init-macrodef-nbjpda,-init-macrodef-debug,-init-macrodef-java,-init-presetdef-jar,-init-ap-cmdline" name="init"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===================[m
[32m+[m[32m                COMPILATION SECTION[m
[32m+[m[32m                ===================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-jar-init" unless="built-jar.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-jar.properties" name="built-jar.properties"/>[m
[32m+[m[32m        <delete file="${built-jar.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.jar.${basedir}" name="-warn-already-built-jar">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: Triki was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-jar-init" name="deps-jar" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-jar.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-jar.properties}" prefix="already.built.jar."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-jar"/>[m
[32m+[m[32m        <propertyfile file="${built-jar.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-check-automatic-build,-clean-after-automatic-build" name="-verify-automatic-build"/>[m
[32m+[m[32m    <target depends="init" name="-check-automatic-build">[m
[32m+[m[32m        <available file="${build.classes.dir}/.netbeans_automatic_build" property="netbeans.automatic.build"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.automatic.build" name="-clean-after-automatic-build">[m
[32m+[m[32m        <antcall target="clean"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar" name="-pre-pre-compile">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-depend">[m
[32m+[m[32m        <pathconvert property="build.generated.subdirs">[m
[32m+[m[32m            <dirset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="*"/>[m
[32m+[m[32m            </dirset>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <j2seproject3:depend srcdir="${src.dir}:${build.generated.subdirs}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile,-pre-compile, -copy-persistence-xml,-compile-depend" if="have.sources" name="-do-compile">[m
[32m+[m[32m        <j2seproject3:javac gensrcdir="${build.generated.sources.dir}"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="has.persistence.xml" name="-copy-persistence-xml">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}/META-INF">[m
[32m+[m[32m            <fileset dir="${meta.inf.dir}" includes="persistence.xml orm.xml"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile,-do-compile,-post-compile" description="Compile project." name="compile"/>[m
[32m+[m[32m    <target name="-pre-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile" name="-do-compile-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile/>[m
[32m+[m[32m        <j2seproject3:javac excludes="" gensrcdir="${build.generated.sources.dir}" includes="${javac.includes}" sourcepath="${src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile-single,-do-compile-single,-post-compile-single" name="compile-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ====================[m
[32m+[m[32m                JAR BUILDING SECTION[m
[32m+[m[32m                ====================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" name="-pre-pre-jar">[m
[32m+[m[32m        <dirname file="${dist.jar}" property="dist.jar.dir"/>[m
[32m+[m[32m        <mkdir dir="${dist.jar.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive" name="-do-jar-create-manifest" unless="manifest.available">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <touch file="${tmp.manifest.file}" verbose="false"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive+manifest.available" name="-do-jar-copy-manifest">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <copy encoding="${manifest.encoding}" file="${manifest.file}" outputencoding="UTF-8" tofile="${tmp.manifest.file}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+main.class.available" name="-do-jar-set-mainclass">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Main-Class" value="${main.class}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+profile.available" name="-do-jar-set-profile">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Profile" value="${javac.profile}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+splashscreen.available" name="-do-jar-set-splashscreen">[m
[32m+[m[32m        <basename file="${application.splash}" property="splashscreen.basename"/>[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy failonerror="false" file="${application.splash}" todir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="SplashScreen-Image" value="META-INF/${splashscreen.basename}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-init-macrodef-copylibs,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.mkdist" name="-do-jar-copylibs">[m
[32m+[m[32m        <j2seproject3:copylibs manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <echo level="info">To run this application from the command line without Ant, try:</echo>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <echo level="info">java -jar "${dist.jar.resolved}"</echo>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.archive" name="-do-jar-jar" unless="do.mkdist">[m
[32m+[m[32m        <j2seproject1:jar manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <pathconvert property="run.classpath.with.dist.jar">[m
[32m+[m[32m            <path path="${run.classpath}"/>[m
[32m+[m[32m            <map from="${build.classes.dir.resolved}" to="${dist.jar.resolved}"/>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <condition else="" property="jar.usage.message" value="To run this application from the command line without Ant, try:${line.separator}${platform.java} -cp ${run.classpath.with.dist.jar} ${main.class}">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="debug" property="jar.usage.level" value="info">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <echo level="${jar.usage.level}" message="${jar.usage.message}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-do-jar-copylibs" if="do.archive" name="-do-jar-delete-manifest">[m
[32m+[m[32m        <delete>[m
[32m+[m[32m            <fileset file="${tmp.manifest.file}"/>[m
[32m+[m[32m        </delete>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-jar,-do-jar-delete-manifest" name="-do-jar-without-libraries"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-copylibs,-do-jar-delete-manifest" name="-do-jar-with-libraries"/>[m
[32m+[m[32m    <target name="-post-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar-without-libraries,-do-jar-with-libraries,-post-jar" name="-do-jar"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar,-post-jar" description="Build JAR." name="jar"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                EXECUTION SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" description="Run a main class." name="run">[m
[32m+[m[32m        <j2seproject1:java>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-do-not-recompile">[m
[32m+[m[32m        <property name="javac.includes.binary" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single" name="run-single">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single" name="run-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}" classpath="${run.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                DEBUGGING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger">[m
[32m+[m[32m        <j2seproject1:nbjpdastart name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-main-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile" name="-debug-start-debuggee">[m
[32m+[m[32m        <j2seproject3:debug>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger,-debug-start-debuggee" description="Debug project in IDE." if="netbeans.home" name="debug"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-stepinto">[m
[32m+[m[32m        <j2seproject1:nbjpdastart stopclassname="${main.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger-stepinto,-debug-start-debuggee" if="netbeans.home" name="debug-stepinto"/>[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-single">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-single" if="netbeans.home" name="debug-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single" if="netbeans.home" name="-debug-start-debuggee-main-test">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}" classpath="${debug.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-main-test,-debug-start-debuggee-main-test" if="netbeans.home" name="debug-test-with-main"/>[m
[32m+[m[32m    <target depends="init" name="-pre-debug-fix">[m
[32m+[m[32m        <fail unless="fix.includes">Must set fix.includes</fail>[m
[32m+[m[32m        <property name="javac.includes" value="${fix.includes}.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-single" if="netbeans.home" name="-do-debug-fix">[m
[32m+[m[32m        <j2seproject1:nbjpdareload/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix" if="netbeans.home" name="debug-fix"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                PROFILING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiler integration[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="profile-init,compile" description="Profile a project in the IDE." if="profiler.info.jvmargs.agent" name="-profile-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" description="Profile a selected class in the IDE." if="profiler.info.jvmargs.agent" name="-profile-single-pre72">[m
[32m+[m[32m        <fail unless="profile.class">Must select one file in the IDE or set profile.class</fail>[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="${profile.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" if="profiler.info.jvmargs.agent" name="-profile-applet-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </profile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-test-single" if="profiler.info.jvmargs.agent" name="-profile-test-single-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <junit dir="${profiler.info.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" jvm="${profiler.info.jvm}" showoutput="true">[m
[32m+[m[32m            <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m            <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m            <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m            <test name="${profile.class}"/>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <syspropertyset>[m
[32m+[m[32m                <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m            </syspropertyset>[m
[32m+[m[32m            <formatter type="brief" usefile="false"/>[m
[32m+[m[32m            <formatter type="xml"/>[m
[32m+[m[32m        </junit>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB72 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target if="netbeans.home" name="-profile-check">[m
[32m+[m[32m        <condition property="profiler.configured">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-agentpath:"/>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-javaagent:"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-pre72" description="Profile a project in the IDE." if="profiler.configured" name="profile" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-single-pre72" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-single" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-test-single-pre72" description="Profile a selected test in the IDE." name="profile-test-single"/>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected test in the IDE." if="profiler.configured" name="profile-test" unless="profiler.info.jvmargs">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="test-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-test-with-main"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-applet-pre72" if="profiler.configured" name="profile-applet" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-applet"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                JAVADOC SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.sources" name="-javadoc-build">[m
[32m+[m[32m        <mkdir dir="${dist.javadoc.dir}"/>[m
[32m+[m[32m        <condition else="" property="javadoc.endorsed.classpath.cmd.line.arg" value="-J${endorsed.classpath.cmd.line.arg}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath.cmd.line.arg"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath.cmd.line.arg}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="bug5101868workaround" value="*.java">[m
[32m+[m[32m            <matches pattern="1\.[56](\..*)?" string="${java.version}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <javadoc additionalparam="-J-Dfile.encoding=${file.encoding} ${javadoc.additionalparam}" author="${javadoc.author}" charset="UTF-8" destdir="${dist.javadoc.dir}" docencoding="UTF-8" encoding="${javadoc.encoding.used}" failonerror="true" noindex="${javadoc.noindex}" nonavbar="${javadoc.nonavbar}" notree="${javadoc.notree}" private="${javadoc.private}" source="${javac.source}" splitindex="${javadoc.splitindex}" use="${javadoc.use}" useexternalfile="true" version="${javadoc.version}" windowtitle="${javadoc.windowtitle}">[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${javac.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${bug5101868workaround},${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/*.java"/>[m
[32m+[m[32m                <exclude name="*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <arg line="${javadoc.endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m        </javadoc>[m
[32m+[m[32m        <copy todir="${dist.javadoc.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build" if="netbeans.home" name="-javadoc-browse" unless="no.javadoc.preview">[m
[32m+[m[32m        <nbbrowse file="${dist.javadoc.dir}/index.html"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build,-javadoc-browse" description="Build Javadoc." name="javadoc"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                TEST COMPILATION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" if="have.tests" name="-pre-pre-compile-test">[m
[32m+[m[32m        <mkdir dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-test-depend">[m
[32m+[m[32m        <j2seproject3:depend classpath="${javac.test.classpath}" destdir="${build.test.classes.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test,-compile-test-depend" if="have.tests" name="-do-compile-test">[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" processorpath="${javac.test.processorpath}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test,-do-compile-test,-post-compile-test" name="compile-test"/>[m
[32m+[m[32m    <target name="-pre-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-pre-pre-compile-test,-pre-compile-test-single" if="have.tests" name="-do-compile-test-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile destdir="${build.test.classes.dir}"/>[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" excludes="" includes="${javac.includes}" processorpath="${javac.test.processorpath}" sourcepath="${test.src.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test-single,-do-compile-test-single,-post-compile-test-single" name="compile-test-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST EXECUTION SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run" if="have.tests" name="-do-test-run">[m
[32m+[m[32m        <j2seproject3:test includes="${includes}" testincludes="**/*Test.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run" if="have.tests" name="-post-test-run">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="test-report"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home+have.tests" name="-test-browse"/>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run,test-report,-post-test-run,-test-browse" description="Run unit tests." name="test"/>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run-single">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${test.includes}" testincludes="${test.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single" if="have.tests" name="-post-test-run-single">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single,-post-test-run-single" description="Run single unit test." name="test-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single-method">[m
[32m+[m[32m        <fail unless="test.class">Must select some files in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${javac.includes}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method" if="have.tests" name="-post-test-run-single-method">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method,-post-test-run-single-method" description="Run single unit test." name="test-single-method"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST DEBUGGING SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testincludes="${javac.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test-method">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testMethod="${test.method}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test" if="netbeans.home+have.tests" name="-debug-start-debugger-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${test.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test" name="debug-test"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-test,-debug-start-debuggee-test-method" name="debug-test-method"/>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-test-single" if="netbeans.home" name="-do-debug-fix-test">[m
[32m+[m[32m        <j2seproject1:nbjpdareload dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix-test" if="netbeans.home" name="debug-fix-test"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET EXECUTION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" name="run-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject1:java classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET DEBUGGING  SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-applet" if="netbeans.home" name="debug-applet"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                CLEANUP SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-clean-init" unless="built-clean.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-clean.properties" name="built-clean.properties"/>[m
[32m+[m[32m        <delete file="${built-clean.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.clean.${basedir}" name="-warn-already-built-clean">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: Triki was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-clean-init" name="deps-clean" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-clean.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-clean.properties}" prefix="already.built.clean."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-clean"/>[m
[32m+[m[32m        <propertyfile file="${built-clean.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" name="-do-clean">[m
[32m+[m[32m        <delete dir="${build.dir}"/>[m
[32m+[m[32m        <delete dir="${dist.dir}" followsymlinks="false" includeemptydirs="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-clean">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-clean,-do-clean,-post-clean" description="Clean build products." name="clean"/>[m
[32m+[m[32m    <target name="-check-call-dep">[m
[32m+[m[32m        <property file="${call.built.properties}" prefix="already.built."/>[m
[32m+[m[32m        <condition property="should.call.dep">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="already.built.${call.subproject}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${call.script}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-check-call-dep" if="should.call.dep" name="-maybe-call-dep">[m
[32m+[m[32m        <ant antfile="${call.script}" inheritall="false" target="${call.target}">[m
[32m+[m[32m            <propertyset>[m
[32m+[m[32m                <propertyref prefix="transfer."/>[m
[32m+[m[32m                <mapper from="transfer.*" to="*" type="glob"/>[m
[32m+[m[32m            </propertyset>[m
[32m+[m[32m        </ant>[m
[32m+[m[32m    </target>[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Triki/nbproject/genfiles.properties b/Ciclo2/Triki/nbproject/genfiles.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..026f730[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Triki/nbproject/genfiles.properties[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32mbuild.xml.data.CRC32=05e9cc78[m
[32m+[m[32mbuild.xml.script.CRC32=8828f8d5[m
[32m+[m[32mbuild.xml.stylesheet.CRC32=8064a381@1.80.1.48[m
[32m+[m[32m# This file is used by a NetBeans-based IDE to track changes in generated files such as build-impl.xml.[m
[32m+[m[32m# Do not edit this file. You may delete it but then the IDE will never regenerate such files for you.[m
[32m+[m[32mnbproject/build-impl.xml.data.CRC32=05e9cc78[m
[32m+[m[32mnbproject/build-impl.xml.script.CRC32=f5a8063f[m
[32m+[m[32mnbproject/build-impl.xml.stylesheet.CRC32=830a3534@1.80.1.48[m
[1mdiff --git a/Ciclo2/Triki/nbproject/project.properties b/Ciclo2/Triki/nbproject/project.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..f5a55af[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Triki/nbproject/project.properties[m
[36m@@ -0,0 +1,74 @@[m
[32m+[m[32mannotation.processing.enabled=true[m
[32m+[m[32mannotation.processing.enabled.in.editor=false[m
[32m+[m[32mannotation.processing.processor.options=[m
[32m+[m[32mannotation.processing.processors.list=[m
[32m+[m[32mannotation.processing.run.all.processors=true[m
[32m+[m[32mannotation.processing.source.output=${build.generated.sources.dir}/ap-source-output[m
[32m+[m[32mbuild.classes.dir=${build.dir}/classes[m
[32m+[m[32mbuild.classes.excludes=**/*.java,**/*.form[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mbuild.dir=build[m
[32m+[m[32mbuild.generated.dir=${build.dir}/generated[m
[32m+[m[32mbuild.generated.sources.dir=${build.dir}/generated-sources[m
[32m+[m[32m# Only compile against the classpath explicitly listed here:[m
[32m+[m[32mbuild.sysclasspath=ignore[m
[32m+[m[32mbuild.test.classes.dir=${build.dir}/test/classes[m
[32m+[m[32mbuild.test.results.dir=${build.dir}/test/results[m
[32m+[m[32m# Uncomment to specify the preferred debugger connection transport:[m
[32m+[m[32m#debug.transport=dt_socket[m
[32m+[m[32mdebug.classpath=\[m
[32m+[m[32m    ${run.classpath}[m
[32m+[m[32mdebug.test.classpath=\[m
[32m+[m[32m    ${run.test.classpath}[m
[32m+[m[32m# Files in build.classes.dir which should be excluded from distribution jar[m
[32m+[m[32mdist.archive.excludes=[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mdist.dir=dist[m
[32m+[m[32mdist.jar=${dist.dir}/Triki.jar[m
[32m+[m[32mdist.javadoc.dir=${dist.dir}/javadoc[m
[32m+[m[32mexcludes=[m
[32m+[m[32mincludes=**[m
[32m+[m[32mjar.compress=false[m
[32m+[m[32mjavac.classpath=[m
[32m+[m[32m# Space-separated list of extra javac options[m
[32m+[m[32mjavac.compilerargs=[m
[32m+[m[32mjavac.deprecation=false[m
[32m+[m[32mjavac.external.vm=true[m
[32m+[m[32mjavac.processorpath=\[m
[32m+[m[32m    ${javac.classpath}[m
[32m+[m[32mjavac.source=1.8[m
[32m+[m[32mjavac.target=1.8[m
[32m+[m[32mjavac.test.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32mjavac.test.processorpath=\[m
[32m+[m[32m    ${javac.test.classpath}[m
[32m+[m[32mjavadoc.additionalparam=[m
[32m+[m[32mjavadoc.author=false[m
[32m+[m[32mjavadoc.encoding=${source.encoding}[m
[32m+[m[32mjavadoc.noindex=false[m
[32m+[m[32mjavadoc.nonavbar=false[m
[32m+[m[32mjavadoc.notree=false[m
[32m+[m[32mjavadoc.private=false[m
[32m+[m[32mjavadoc.splitindex=true[m
[32m+[m[32mjavadoc.use=true[m
[32m+[m[32mjavadoc.version=false[m
[32m+[m[32mjavadoc.windowtitle=[m
[32m+[m[32mmain.class=[m
[32m+[m[32mmanifest.file=manifest.mf[m
[32m+[m[32mmeta.inf.dir=${src.dir}/META-INF[m
[32m+[m[32mmkdist.disabled=false[m
[32m+[m[32mplatform.active=default_platform[m
[32m+[m[32mrun.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32m# Space-separated list of JVM arguments used when running the project.[m
[32m+[m[32m# You may also define separate properties like run-sys-prop.name=value instead of -Dname=value.[m
[32m+[m[32m# To set system properties for unit tests define test-sys-prop.name=value:[m
[32m+[m[32mrun.jvmargs=[m
[32m+[m[32mrun.test.classpath=\[m
[32m+[m[32m    ${javac.test.classpath}:\[m
[32m+[m[32m    ${build.test.classes.dir}[m
[32m+[m[32msource.encoding=UTF-8[m
[32m+[m[32msrc.dir=src[m
[32m+[m[32mtest.src.dir=test[m
[1mdiff --git a/Ciclo2/Triki/nbproject/project.xml b/Ciclo2/Triki/nbproject/project.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..387b42b[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Triki/nbproject/project.xml[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project xmlns="http://www.netbeans.org/ns/project/1">[m
[32m+[m[32m    <type>org.netbeans.modules.java.j2seproject</type>[m
[32m+[m[32m    <configuration>[m
[32m+[m[32m        <data xmlns="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <name>Triki</name>[m
[32m+[m[32m            <source-roots>[m
[32m+[m[32m                <root id="src.dir"/>[m
[32m+[m[32m            </source-roots>[m
[32m+[m[32m            <test-roots>[m
[32m+[m[32m                <root id="test.src.dir"/>[m
[32m+[m[32m            </test-roots>[m
[32m+[m[32m        </data>[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m</project>[m
[1mdiff --git a/Ciclo2/Triki/src/Triki.java b/Ciclo2/Triki/src/Triki.java[m
[1mnew file mode 100644[m
[1mindex 0000000..682db48[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/Triki/src/Triki.java[m
[36m@@ -0,0 +1,64 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author User[m
[32m+[m[32m */[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class Triki {[m
[32m+[m[41m    [m
[32m+[m[32m    public static void imprimirMatriz(String[][] matriz) {[m
[32m+[m[32m        for (int i=0; i < matriz.length; i++) {[m
[32m+[m[32m            System.out.println(matriz[i][0] + " " + matriz[i][1]+ " " + matriz[i][2]);[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static boolean verificarMatriz(String[][] matriz) {[m
[32m+[m[32m        boolean optionA = matriz[0][0].equalsIgnoreCase(matriz[1][1])&& matriz[0][0].equalsIgnoreCase(matriz[2][2])&&matriz[0][0].equalsIgnoreCase("X")|| matriz[0][0].equalsIgnoreCase(matriz[1][1])&& matriz[0][0].equalsIgnoreCase(matriz[2][2])&&matriz[0][0].equalsIgnoreCase("O");[m
[32m+[m[32m        boolean optionB = matriz[0][2].equalsIgnoreCase(matriz[1][1])&& matriz[0][2].equalsIgnoreCase(matriz[2][0])&&matriz[2][0].equalsIgnoreCase("X")|| matriz[0][2].equalsIgnoreCase(matriz[1][1])&& matriz[0][2].equalsIgnoreCase(matriz[2][0])&&matriz[2][0].equalsIgnoreCase("O");[m
[32m+[m[32m        boolean optionC = matriz[0][0].equalsIgnoreCase(matriz[0][1])&& matriz[0][0].equalsIgnoreCase(matriz[0][2])&&matriz[0][2].equalsIgnoreCase("X")|| matriz[0][0].equalsIgnoreCase(matriz[0][1])&& matriz[0][0].equalsIgnoreCase(matriz[0][2])&&matriz[0][2].equalsIgnoreCase("O");[m
[32m+[m[32m        boolean optionD = matriz[1][0].equalsIgnoreCase(matriz[1][1])&& matriz[1][0].equalsIgnoreCase(matriz[1][2])&&matriz[1][2].equalsIgnoreCase("X")|| matriz[1][0].equalsIgnoreCase(matriz[1][1])&& matriz[1][0].equalsIgnoreCase(matriz[1][2])&&matriz[1][2].equalsIgnoreCase("O");[m
[32m+[m[32m        boolean optionE = matriz[2][0].equalsIgnoreCase(matriz[2][1])&& matriz[2][0].equalsIgnoreCase(matriz[2][2])&&matriz[2][2].equalsIgnoreCase("X")|| matriz[2][0].equalsIgnoreCase(matriz[2][1])&& matriz[2][0].equalsIgnoreCase(matriz[2][2])&&matriz[2][2].equalsIgnoreCase("O");[m
[32m+[m[32m        boolean optionF = matriz[0][0].equalsIgnoreCase(matriz[1][0])&& matriz[0][0].equalsIgnoreCase(matriz[2][0])&&matriz[2][0].equalsIgnoreCase("X")|| matriz[0][0].equalsIgnoreCase(matriz[1][0])&& matriz[0][0].equalsIgnoreCase(matriz[2][0])&&matriz[2][0].equalsIgnoreCase("O");[m
[32m+[m[32m        boolean optionG = matriz[0][1].equalsIgnoreCase(matriz[1][1])&& matriz[0][1].equalsIgnoreCase(matriz[2][1])&&matriz[2][1].equalsIgnoreCase("X")|| matriz[0][1].equalsIgnoreCase(matriz[1][1])&& matriz[0][1].equalsIgnoreCase(matriz[2][1])&&matriz[2][1].equalsIgnoreCase("O");[m
[32m+[m[32m        boolean optionH = matriz[0][2].equalsIgnoreCase(matriz[1][2])&& matriz[0][2].equalsIgnoreCase(matriz[2][2])&&matriz[2][2].equalsIgnoreCase("X")|| matriz[0][2].equalsIgnoreCase(matriz[1][2])&& matriz[0][2].equalsIgnoreCase(matriz[2][2])&&matriz[2][2].equalsIgnoreCase("O");[m
[32m+[m[41m        [m
[32m+[m[32m        boolean ganador = false;[m[41m [m
[32m+[m[32m        if (optionA || optionB || optionC || optionD || optionE || optionF || optionG || optionH){[m
[32m+[m[32m            System.out.println("Has ganado!");[m
[32m+[m[32m            ganador = true;[m
[32m+[m[32m        } else {[m
[32m+[m[32m            System.out.println("No hay ganador, siguiente turno...");[m
[32m+[m[32m        }[m
[32m+[m[32m        return ganador;[m[41m       [m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static void juego(Scanner scan,String[][] matrizInicial) {[m
[32m+[m[32m        boolean flag = true;[m
[32m+[m[32m        imprimirMatriz(matrizInicial);[m[41m [m
[32m+[m[32m        while (flag) {[m
[32m+[m[32m            System.out.println("Ingrese la posición, primero fila, luego columna separadas por enter");[m
[32m+[m[32m            int x = scan.nextInt();[m
[32m+[m[32m            int y = scan.nextInt();[m
[32m+[m[32m            System.out.println("Ingrese la marca: (O/X)");[m
[32m+[m[32m            String marca = scan.next();[m
[32m+[m[32m            matrizInicial[x][y]= marca;[m
[32m+[m[32m            imprimirMatriz(matrizInicial);[m[41m [m
[32m+[m[32m            boolean ganador = verificarMatriz(matrizInicial);[m[41m [m
[32m+[m[32m            if(ganador){[m
[32m+[m[32m                flag=false;[m
[32m+[m[32m            }[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        Scanner scan = new Scanner(System.in);[m
[32m+[m[32m        String [][] matrizInicial = {{"a","a","a"},{"a","a","a"},{"a","a","a"}};[m
[32m+[m[32m        juego(scan,matrizInicial);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/Ciclo2/ValidacionErika.java b/Ciclo2/ValidacionErika.java[m
[1mnew file mode 100644[m
[1mindex 0000000..feff20e[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/ValidacionErika.java[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class ValidacionErika {[m
[32m+[m
[32m+[m[32m    public static String validacion(int A, int B,int C,int D) {[m
[32m+[m[32m        String resultado;[m
[32m+[m[32m        if (B>C && D>A && (C+D)>(A+B) && C>=0 && D>=0 && A%2==0){[m
[32m+[m[32m            resultado="Valores aceptados";[m
[32m+[m[32m            return resultado;[m
[32m+[m[32m        } else {[m
[32m+[m[32m            resultado="Valores no aceptados";[m
[32m+[m[32m            return resultado;[m
[32m+[m[32m        }[m[41m   [m
[32m+[m[32m    }[m[41m [m
[32m+[m
[32m+[m[32m  public static void main(String[] args) {[m
[32m+[m[32m    Scanner sc = new Scanner(System.in);[m
[32m+[m[32m    int a = Integer.parseInt(sc.nextLine());[m
[32m+[m[32m    int b = Integer.parseInt(sc.nextLine());[m
[32m+[m[32m    int c = Integer.parseInt(sc.nextLine());[m
[32m+[m[32m    int d = Integer.parseInt(sc.nextLine());[m
[32m+[m
[32m+[m[32m    System.out.println(validacion(a,b,c,d));[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/Ciclo2/amorErika.java b/Ciclo2/amorErika.java[m
[1mnew file mode 100644[m
[1mindex 0000000..52b3b31[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/amorErika.java[m
[36m@@ -0,0 +1,40 @@[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class amorErika {[m
[32m+[m[41m    [m
[32m+[m[32m  public static void main(String[] args) {[m
[32m+[m[32m    Scanner sc = new Scanner(System.in);[m
[32m+[m[32m    int nCapas = Integer.parseInt(sc.nextLine());[m
[32m+[m[41m    [m
[32m+[m[32m    String[] mensaje = new String[nCapas];[m
[32m+[m
[32m+[m[32m    String iAm="te amo";[m
[32m+[m[32m    String iGroot="te extraño";[m
[32m+[m
[32m+[m[32m    int i=0;[m
[32m+[m[32m    int j=1;[m
[32m+[m
[32m+[m[32m    int numero = nCapas-1;[m
[32m+[m
[32m+[m[32m    for (i=0;i<numero;i+=2){ //llena los espacios pares con I am a excepcion del ultimo[m
[32m+[m[32m        mensaje[i]=iAm;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    for (j=1;j<numero;j+=2){ //llena los espacios impares con I groot a excepcion del ultimo[m
[32m+[m[32m        mensaje[j]=iGroot;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    if(nCapas%2==0){  //en caso de que las capas sean pares llena el ultimo espacio con I groot it o en caso contrario con I am it.[m
[32m+[m[32m        mensaje[numero]="te extraño infinito";[m[41m [m
[32m+[m[32m    }else{[m
[32m+[m[32m        mensaje[numero]="te amo infinito";[m
[32m+[m[32m    }[m
[32m+[m[41m        [m
[32m+[m[32m    for (int k=0;k<numero;k++){ //imprime el arreglo separando con that a excepcion del ultimo campo[m
[32m+[m[32m        String y = (mensaje[k] + " y " );[m
[32m+[m[32m        System.out.print(y);[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    System.out.print(mensaje[numero]); //imprime el ultimo campo[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/Ciclo2/competenciaErika.java b/Ciclo2/competenciaErika.java[m
[1mnew file mode 100644[m
[1mindex 0000000..1e399b2[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/competenciaErika.java[m
[36m@@ -0,0 +1,23 @@[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class competenciaErika {[m
[32m+[m
[32m+[m[32m    public static String competencia(String x) {[m
[32m+[m[32m       String validacion = "1";[m
[32m+[m[32m       String tipoCompetencia;[m
[32m+[m[32m        if (x.contains(validacion)){[m
[32m+[m[32m            tipoCompetencia = "DIFICIL";[m
[32m+[m[32m            return tipoCompetencia;[m
[32m+[m[32m        }else{[m
[32m+[m[32m            tipoCompetencia = "FACIL";[m
[32m+[m[32m            return tipoCompetencia;[m
[32m+[m[32m        }[m[41m    [m
[32m+[m[32m    }[m[41m [m
[32m+[m
[32m+[m[32m  public static void main(String[] args) {[m
[32m+[m[32m    Scanner sc = new Scanner(System.in);[m
[32m+[m[32m    int numero = Integer.parseInt(sc.nextLine());[m
[32m+[m[32m    String encuesta=sc.nextLine();[m[41m [m
[32m+[m[32m    System.out.println(competencia(encuesta));[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/Ciclo2/grootErika.java b/Ciclo2/grootErika.java[m
[1mnew file mode 100644[m
[1mindex 0000000..8ea093a[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/grootErika.java[m
[36m@@ -0,0 +1,40 @@[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class grootErika {[m
[32m+[m[41m    [m
[32m+[m[32m  public static void main(String[] args) {[m
[32m+[m[32m    Scanner sc = new Scanner(System.in);[m
[32m+[m[32m    int nCapas = Integer.parseInt(sc.nextLine());[m
[32m+[m[41m    [m
[32m+[m[32m    String[] mensaje = new String[nCapas];[m
[32m+[m
[32m+[m[32m    String iAm="I am";[m
[32m+[m[32m    String iGroot="I groot";[m
[32m+[m
[32m+[m[32m    int i=0;[m
[32m+[m[32m    int j=1;[m
[32m+[m
[32m+[m[32m    int numero = nCapas-1;[m
[32m+[m
[32m+[m[32m    for (i=0;i<numero;i+=2){ //llena los espacios pares con I am a excepcion del ultimo[m
[32m+[m[32m        mensaje[i]=iAm;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    for (j=1;j<numero;j+=2){ //llena los espacios impares con I groot a excepcion del ultimo[m
[32m+[m[32m        mensaje[j]=iGroot;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    if(nCapas%2==0){  //en caso de que las capas sean pares llena el ultimo espacio con I groot it o en caso contrario con I am it.[m
[32m+[m[32m        mensaje[numero]="I groot it";[m[41m [m
[32m+[m[32m    }else{[m
[32m+[m[32m        mensaje[numero]="I am it";[m
[32m+[m[32m    }[m
[32m+[m[41m        [m
[32m+[m[32m    for (int k=0;k<numero;k++){ //imprime el arreglo separando con that a excepcion del ultimo campo[m
[32m+[m[32m        String y = (mensaje[k] + " that " );[m
[32m+[m[32m        System.out.print(y);[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    System.out.print(mensaje[numero]); //imprime el ultimo campo[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/Ciclo2/universidadesErika.java b/Ciclo2/universidadesErika.java[m
[1mnew file mode 100644[m
[1mindex 0000000..54ec8cf[m
[1m--- /dev/null[m
[1m+++ b/Ciclo2/universidadesErika.java[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class universidadesErika {[m
[32m+[m
[32m+[m[32m  public static String seleccionItem(String x) {[m
[32m+[m[32m    String[] universidad = x.split("\\.");[m
[32m+[m[32m    return universidad[1];[m
[32m+[m[32m  }[m
[32m+[m[41m     [m
[32m+[m[41m    [m
[32m+[m[32m  public static void main(String[] args) {[m
[32m+[m[32m    Scanner sc = new Scanner(System.in);[m
[32m+[m[32m    int numero = Integer.parseInt(sc.nextLine());[m
[32m+[m[41m    [m
[32m+[m[32m    String[] nombresUn = new String[numero];[m
[32m+[m
[32m+[m[32m    for (int i=0;i<numero;i++){[m
[32m+[m[32m      nombresUn[i]=sc.next();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    for (int i=0; i<numero;i++){[m
[32m+[m[32m      System.out.println(seleccionItem(nombresUn[i]));[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/README.md b/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..3862ed7[m
[1m--- /dev/null[m
[1m+++ b/README.md[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32m# MisionTIC2022[m
[32m+[m[32m Ejercicios de Python y Java desarrollados para MisionTIC2022[m
