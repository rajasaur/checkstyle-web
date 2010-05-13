INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("AbstractClassName", "Ensures that the names of abstract classes conforming to some regular expression.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("AnnotationUseStyle", "This check controls the style with the usage of annotations.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("AnonInnerLength", "Checks for long anonymous inner classes.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ArrayTrailingComma", "Checks if array initialization contains optional trailing comma.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ArrayTypeStyle", "Checks the style of array type definitions.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("AvoidInlineConditionals", "Detects inline conditionals.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("AvoidNestedBlocks", "Finds nested blocks.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("AvoidStarImport", "Check that finds import statements that use the * notation.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("AvoidStaticImport", "Check that finds static imports.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("BooleanExpressionComplexity", "Restricts nested boolean operators (&&, ||, &, | and ^) to a specified depth (default = 3).", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ClassDataAbstractionCoupling", "This metric measures the number of instantiations of other classes within the given class.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ClassFanOutComplexity", "The number of other classes a given class relies on.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ClassTypeParameterName", "Checks that class type parameter names conform to a format specified by the format property.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ConstantName", "Checks that constant names conform to a format specified by the format property.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("CovariantEquals", "Checks that if a class defines a covariant method equals, then it defines method equals(java.lang.Object).", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("CyclomaticComplexity", "Checks cyclomatic complexity against a specified limit.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("DeclarationOrder", "Checks that the parts of a class or interface declaration appear in the order suggested by the Code Conventions for the Java Programming Language.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("DefaultComesLast", "Check that the default is after all the cases in a switch statement.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("DescendantToken", "Checks for restricted tokens beneath other tokens.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("DesignForExtension", "Checks that classes are designed for inheritance.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("DoubleCheckedLocking", "Detect the double-checked locking idiom, a technique that tries to avoid synchronization overhead but is incorrect because of subtle artifacts of the java memory model.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("EmptyBlock", "Checks for empty blocks.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("EmptyForInitializerPad", "Checks the padding of an empty for initializer; that is whether a space is required at an empty for initializer, or such spaces are forbidden.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("EmptyForIteratorPad", "Checks the padding of an empty for iterator; that is whether a space is required at an empty for iterator, or such spaces are forbidden.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("EmptyStatement", "Detects empty statements (standalone 'semicolon').", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("EqualsAvoidNull", "Checks that any combination of String literals with optional assignment is on the left side of an equals() comparison.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("EqualsHashCode", "Checks that classes that override equals() also override hashCode().", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ExecutableStatementCount", "Restricts the number of executable statements to a specified limit (default = 30).", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ExplicitInitialization", "Checks if any class or object member explicitly initialized to default for its type value (null for object references, zero for numeric types and char and false for boolean.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("FallThrough", "Checks for fall through in switch statements Finds locations where a case contains Java code - but lacks a break, return, throw or continue statement.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("FileLength", "Checks for long source files.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("FileTabCharacter", "Checks to see if a file contains a tab character.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("FinalClass", "Checks that class which has only private ctors is declared as final.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("FinalLocalVariable", "Ensures that local variables that never get their values changed, must be declared final.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("FinalParameters", "Check that method/constructor/catch/foreach parameters are final.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("GenericWhitespace", "Checks that the whitespace around the Generic tokens < and > are correct to the typical convention.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("Header", "Checks the header of the source against a fixed header file.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("HiddenField", "Checks that a local variable or a parameter does not shadow a field that is defined in the same class.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("HideUtilityClassConstructor", "Make sure that utility classes (classes that contain only static methods) do not have a public constructor.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("IllegalCatch", "Catching java.lang.Exception, java.lang.Error or java.lang.RuntimeException is almost never acceptable.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("IllegalImport", "Checks for imports from a set of illegal packages.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("IllegalInstantiation", "Checks for illegal instantiations where a factory method is preferred.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("IllegalThrows", "Throwing java.lang.Error or java.lang.RuntimeException is almost never acceptable.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("IllegalToken", "Checks for illegal tokens.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("IllegalTokenText", "Checks for illegal token text.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("IllegalType", "Checks that particular class are never used as types in variable declarations, return values or parameters.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ImportControl", "Check that controls what packages can be imported in each package.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ImportOrder", "Class to check the ordering/grouping of imports.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("Indentation", "Checks correct indentation of Java Code.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("InnerAssignment", "Checks for assignments in subexpressions, such as in String s = Integer.toString(i = 2);.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("InterfaceIsType", "Implements Bloch, Effective Java, Item 17 - Use Interfaces only to define types.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("JUnitTestCase", "Ensures that the setUp(), tearDown()methods are named correctly, have no arguments, return void and are either public or protected.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("JavaNCSS", "This check calculates the Non Commenting Source Statements (NCSS) metric for java source files and methods.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("JavadocMethod", "Checks the Javadoc of a method or constructor.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("JavadocPackage", "Checks that all packages have a package documentation.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("JavadocStyle", "Custom Checkstyle Check to validate Javadoc.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("JavadocType", "Checks the Javadoc of a type.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("JavadocVariable", "Checks that a variable has Javadoc comment.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("LeftCurly", "Checks the placement of left curly braces on types, methods and other blocks:", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("LineLength", "Checks for long lines.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("LocalFinalVariableName", "Checks that local final variable names conform to a format specified by the format property.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("LocalVariableName", "Checks that local, non-final variable names conform to a format specified by the format property.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MagicNumber", "Checks for magic numbers.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MemberName", "Checks that instance variable names conform to a format specified by the format property.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MethodLength", "Checks for long methods.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MethodName", "Checks that method names conform to a format specified by the format property.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MethodParamPad", "Checks the padding between the identifier of a method definition, constructor definition, method call, or constructor invocation; and the left parenthesis of the parameter list.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MethodTypeParameterName", "Checks that class type parameter names conform to a format specified by the format property.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MissingCtor", "Checks that classes (except abstract one) define a ctor and don't rely on the default one.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MissingDeprecated", "This class is used to verify that both the", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MissingOverride", "This class is used to verify that the", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MissingSwitchDefault", "Checks that switch statement has 'default' clause.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ModifiedControlVariable", "Check for ensuring that for loop control variables are not modified inside the for block.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ModifierOrder", "Checks that the order of modifiers conforms to the suggestions in the Java Language specification, sections 8.1.1, 8.3.1 and 8.4.3.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MultipleStringLiterals", "Checks for multiple occurrences of the same string literal within a single file.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MultipleVariableDeclarations", "Checks that each variable declaration is in its own statement and on its own line.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("MutableException", "Ensures that exceptions (defined as any class name conforming to some regular expression) are immutable.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("NPathComplexity", "Checks the npath complexity against a specified limit (default = 200).", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("NeedBraces", "Checks for braces around code blocks.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("NestedIfDepth", "Restricts nested if-else blocks to a specified depth (default = 1).", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("NestedTryDepth", "Restricts nested try-catch-finally blocks to a specified depth (default = 1).", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("NewlineAtEndOfFile", "Checks that there is a newline at the end of each file.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("NoClone", "Checks that the clone method is not overridden from the Object class.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("NoFinalizer", "Checks that no method having zero parameters is defined using the name finalize.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("NoWhitespaceAfter", "Checks that there is no whitespace after a token.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("NoWhitespaceBefore", "Checks that there is no whitespace before a token.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("OperatorWrap", "Checks line wrapping for operators.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("OuterTypeNumber", "Checks for the number of defined types at the 'outer' level.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("PackageAnnotation", "This check makes sure that all package annotations are in the package-info.java file.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("PackageDeclaration", "Ensures there is a package declaration.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("PackageName", "Checks that package names conform to a format specified by the format property.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ParameterAssignment", "Disallow assignment of parameters.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ParameterName", "Checks that parameter names conform to a format specified by the format property.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ParameterNumber", "Checks the number of parameters that a method or constructor has.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ParenPad", "Checks the padding of parentheses. that is whether a space is required after a left parenthesis and before a right parenthesis, or such spaces are forbidden, with the exception that it does not check for padding of the right parenthesis at an empty for iterator.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("RedundantImport", "Checks for imports that are redundant.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("RedundantModifier", "Checks for redundant modifiers in interface and annotation definitions.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("RedundantThrows", "Checks for redundant exceptions declared in throws clause such as duplicates, unchecked exceptions or subclasses of another declared exception.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("Regexp", "A check that makes sure that a specified pattern exists (or not) in the file.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("RegexpHeader", "Checks the header of the source against a header file that contains a", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("RegexpMultiline", "Implementation of a check that looks that matches across multiple lines in any file type.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("RegexpSingleline", "Implementation of a check that looks for a single line in any file type.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("RegexpSinglelineJava", "Implementation of a check that looks for a single line in Java files.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("RequireThis", "Checks that code doesn't rely on the 'this' default.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ReturnCount", "Restricts return statements to a specified count (default = 2).", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("RightCurly", "Checks the placement of right curly braces.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("SimplifyBooleanExpression", "Checks for overly complicated boolean expressions.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("SimplifyBooleanReturn", "Checks for overly complicated boolean return statements.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("StaticVariableName", "Checks that static, non-final variable names conform to a format specified by the format property.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("StrictDuplicateCode", "Performs a line-by-line comparison of all code lines and reports duplicate code if a sequence of lines differs only in indentation.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("StringLiteralEquality", "Checks that string literals are not used with == or !=.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("SuperClone", "Checks that an overriding clone() method invokes super.clone().", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("SuperFinalize", "Checks that an overriding finalize() method invokes super.finalize().", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("SuppressWarnings", "This check allows you to specify what warnings that", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("ThrowsCount", "Restricts throws statements to a specified count (default = 1).", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("TodoComment", "A check for TODO comments.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("TrailingComment", "The check to ensure that requires that comments be the only thing on a line.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("Translation", "The TranslationCheck class helps to ensure the correct translation of code by checking property files for consistency regarding their keys.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("TypeName", "Checks that type names conform to a format specified by the format property.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("TypecastParenPad", "Checks the padding of parentheses for typecasts.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("UncommentedMain", "Detects uncommented main methods.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("UnnecessaryParentheses", "Checks if unnecessary parentheses are used in a statement or expression.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("UnusedImports", "Checks for unused import statements.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("UpperEll", "Checks that long constants are defined with an upper ell.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("VisibilityModifier", "Checks visibility of class members.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("WhitespaceAfter", "Checks that a token is followed by whitespace, with the exception that it does not check for whitespace after the semicolon of an empty for iterator.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("WhitespaceAround", "Checks that a token is surrounded by whitespace.", true);
INSERT INTO CHECKS(NAME,DESCRIPTION,ACTIVE) VALUES("WriteTag", "Outputs a JavaDoc tag as information.", true);