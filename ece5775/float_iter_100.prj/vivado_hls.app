<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="float_iter_100.prj" top="cordic">
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../cordic_test.cpp" sc="0" tb="1" cflags=" -DNUM_ITER=100"/>
        <file name="cordic.cpp" sc="0" tb="false" cflags="-DNUM_ITER=100"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

