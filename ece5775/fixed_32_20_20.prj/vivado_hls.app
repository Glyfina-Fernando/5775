<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="fixed_32_20_20.prj" top="cordic">
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../cordic_test.cpp" sc="0" tb="1" cflags=" -DFIXED_TYPE -DTOT_WIDTH=32 -DINT_WIDTH=20"/>
        <file name="cordic.cpp" sc="0" tb="false" cflags="-DFIXED_TYPE -DTOT_WIDTH=32 -DINT_WIDTH=20"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

