<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="fixed_64_10_20.prj" top="cordic">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../cordic_test.cpp" sc="0" tb="1" cflags=" -DFIXED_TYPE -DTOT_WIDTH=64 -DINT_WIDTH=10"/>
        <file name="cordic.cpp" sc="0" tb="false" cflags="-DFIXED_TYPE -DTOT_WIDTH=64 -DINT_WIDTH=10"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

