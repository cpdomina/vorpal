Vorpal
====================
 
Java interface for [Vowpal Wabbit](https://github.com/JohnLangford/vowpal_wabbit/wiki).

Built upon the original [JNI code](https://github.com/JohnLangford/vowpal_wabbit/tree/master/java) from Vowpal Wabbit
and build system from Indeed's [vowpal-wabbit-java](https://github.com/indeedeng/vowpal-wabbit-java).

### Usage

```
VWScalarsLearner vw = VWLearners.create("--oaa 3 --holdout_period 9 --passes 10 --cache_file vw.cache --loss_function=logistic --probabilities";

vw.learn("1 | c d e");
float[] pred = vw.predict("1 | c d e");

vw.saveModel("model.vw");
vw.close();
```

### Create jar

```
# generate binaries
cd build-jni
./build_everything_on_macos.sh

# create jar
cd ..
mvn clean package
```

### Install native library

```
# build native lib
cd build-jni
./build.sh

# add as system lib
sudo cp transient/lib/vw_wrapper/vw_jni.lib /usr/lib/libvw_jni.so
```

Some dependencies, such as `zlib-devel`, `lsb-release`, `automake`, `libtool`,  and `autoconf`, might be needed.
