Vorpal
====================
 
Java interface for [Vowpal Wabbit](https://github.com/JohnLangford/vowpal_wabbit/wiki).

Built upon the original [JNI code](https://github.com/JohnLangford/vowpal_wabbit/tree/master/java) from Vowpal Wabbit
and build system from Indeed's [vowpal-wabbit-java](https://github.com/indeedeng/vowpal-wabbit-java).

```
# generate binaries
cd build-jni
./build_everything_on_macos.sh

# create jar
cd ..
mvn clean package
```
