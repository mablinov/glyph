library ieee;
use ieee.std_logic_1164.all;

library work;
use work.txt_util.all; -- for debug
use work.glyph_util.all;

entity glyph_util_tb is
end entity;

architecture behavioural of glyph_util_tb is
    signal mystr: glyph_bitmap_vector(0 to 9) := get_gbv("HelloWorld");
begin
    main: process
    begin
        for i in mystr'range loop
            print("mystr(" & natural'image(i) & ") = " & LF
                & str(mystr(i)(0)) & LF
                & str(mystr(i)(1)) & LF
                & str(mystr(i)(2)) & LF
                & str(mystr(i)(3)) & LF
                & str(mystr(i)(4)) & LF
                & str(mystr(i)(5)) & LF
                & str(mystr(i)(6)) & LF
                & str(mystr(i)(7)) & LF
            );
        end loop;
        wait;
    end process;
end architecture;

