Syntax: https://github.com/Hungnv950/KotlinCheatSheet/blob/master/Kotlin%20In%20Action.md
Basic code: https://github.com/hussien89aa/KotlinUdemy/tree/master/Kotlin

Val and var :
-
    var are mutable(Read and Write)
    val are immutable(Read only)

visible modifiers
-
    private: visible inside this class only
    protected: same as private + visible in subclasses too
    internal: any client inside this module who sees the declaring class sees its internal members
    public: any client who sees the declaring class sees its public members

Extensions
-
    open class C

    class D: C()

    fun C.foo() = "c"

    fun D.foo() = "d"

    fun printFoo(c: C) {

    println(c.foo())

    }
    printFoo(D())
    -
    =>c
    -
with

    class C {
        fun foo() { println("member") }
    }
    fun C.foo() { println("extension") }
    -
    => memeber
    -

With

    class C {
    fun foo() { println("member") }
    }
    fun C.foo(i: Int) { println("extension") }
    -
    ****=> expression****
    -

    open class D {
    }
    class D1 : D() {
    }
    open class C {
        open fun D.foo() {
            println("D.foo in C")
        }
    open fun D1.foo() {
        println("D1.foo in C")
    }
    fun caller(d: D) {
        d.foo()
        // call the extension function
        }
    }
    class C1 : C() {
        override fun D.foo() {
            println("D.foo in C1")
        }
        override fun D1.foo() {
            println("D1.foo in C1")
        }
    }
    C().caller(D())
    C1().caller(D())
    C().caller(D1())
    // prints "D.foo in C"
    // prints "D.foo in C1" - dispatch receiver is resolved virtually
    // prints "D.foo in C" - extension receiver is resolved statically
    ``
kotlinc hello.kt -include-runtime -d hello.jar
java -jar hello.jar
