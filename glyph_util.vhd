library ieee;
use ieee.std_logic_1164.all;

package glyph_util is
	type glyph_bitmap is array (natural range 0 to 7) of std_logic_vector(0 to 7);
	type glyph_bitmap_vector is array (natural range <>) of glyph_bitmap;

    constant bitmap_UNREPRESENTABLE: glyph_bitmap := (
        "00000000",
        "01111100",
        "01000100",
        "01000100",
        "01000100",
        "01111100",
        "00000000",
        "00000000"
    );

	constant bitmap_Au: glyph_bitmap := (
		"00111000",
		"01000100",
		"10000010",
		"11111110",
		"10000010",
		"10000010",
		"10000010",
		"00000000"
	);
	constant bitmap_Bu: glyph_bitmap := (
		"11111100",
		"10000010",
		"10000010",
		"11111100",
		"10000010",
		"10000010",
		"11111100",
		"00000000"
	);
	constant bitmap_Cu: glyph_bitmap := (
		"00111100",
		"01000010",
		"10000000",
		"10000000",
		"10000000",
		"01000010",
		"00111100",
		"00000000"
	);
	constant bitmap_Du: glyph_bitmap := (
		"11111000",
		"10000100",
		"10000010",
		"10000010",
		"10000010",
		"10000100",
		"11111000",
		"00000000"
	);
	constant bitmap_Eu: glyph_bitmap := (
		"11111110",
		"10000000",
		"10000000",
		"11111000",
		"10000000",
		"10000000",
		"11111110",
		"00000000"
	);
	constant bitmap_Fu: glyph_bitmap := (
		"11111110",
		"10000000",
		"10000000",
		"11111000",
		"10000000",
		"10000000",
		"10000000",
		"00000000"
	);
	constant bitmap_Gu: glyph_bitmap := (
		"00111100",
		"01000010",
		"10000000",
		"10011100",
		"10000010",
		"01000010",
		"00111100",
		"00000000"
	);
	constant bitmap_Hu: glyph_bitmap := (
		"10000010",
		"10000010",
		"10000010",
		"11111110",
		"10000010",
		"10000010",
		"10000010",
		"00000000"
	);
	constant bitmap_Iu: glyph_bitmap := (
		"11111110",
		"00010000",
		"00010000",
		"00010000",
		"00010000",
		"00010000",
		"11111110",
		"00000000"
	);
	constant bitmap_Ju: glyph_bitmap := (
		"11111110",
		"00010000",
		"00010000",
		"00010000",
		"00010000",
		"10010000",
		"01100000",
		"00000000"
	);
	constant bitmap_Ku: glyph_bitmap := (
		"10000010",
		"10001100",
		"10110000",
		"11000000",
		"10110000",
		"10001100",
		"10000010",
		"00000000"
	);
	constant bitmap_Lu: glyph_bitmap := (
		"10000000",
		"10000000",
		"10000000",
		"10000000",
		"10000000",
		"10000000",
		"11111110",
		"00000000"
	);
	constant bitmap_Mu: glyph_bitmap := (
		"10000010",
		"11000110",
		"10101010",
		"10010010",
		"10000010",
		"10000010",
		"10000010",
		"00000000"
	);
	constant bitmap_Nu: glyph_bitmap := (
		"10000010",
		"11000010",
		"10100010",
		"10010010",
		"10001010",
		"10000110",
		"10000010",
		"00000000"
	);
	constant bitmap_Ou: glyph_bitmap := (
		"00111000",
		"01000100",
		"10000010",
		"10000010",
		"10000010",
		"01000100",
		"00111000",
		"00000000"
	);
	constant bitmap_Pu: glyph_bitmap := (
		"11111100",
		"10000010",
		"10000010",
		"11111100",
		"10000000",
		"10000000",
		"10000000",
		"00000000"
	);
	constant bitmap_Qu: glyph_bitmap := (
		"00111000",
		"01000100",
		"10000010",
		"10000010",
		"10001010",
		"01000100",
		"00111010",
		"00000000"
	);
	constant bitmap_Ru: glyph_bitmap := (
		"11111100",
		"10000010",
		"10000010",
		"11111100",
		"10001000",
		"10000100",
		"10000010",
		"00000000"
	);
	constant bitmap_Su: glyph_bitmap := (
		"01111110",
		"10000000",
		"10000000",
		"01111100",
		"00000010",
		"00000010",
		"11111100",
		"00000000"
	);
	constant bitmap_Tu: glyph_bitmap := (
		"11111110",
		"00010000",
		"00010000",
		"00010000",
		"00010000",
		"00010000",
		"00010000",
		"00000000"
	);
	constant bitmap_Uu: glyph_bitmap := (
		"10000010",
		"10000010",
		"10000010",
		"10000010",
		"10000010",
		"10000010",
		"01111100",
		"00000000"
	);
	constant bitmap_Vu: glyph_bitmap := (
		"10000010",
		"10000010",
		"10000010",
		"10000010",
		"01000100",
		"00101000",
		"00010000",
		"00000000"
	);
	constant bitmap_Wu: glyph_bitmap := (
		"10010010",
		"10010010",
		"10010010",
		"10010010",
		"10010010",
		"10010010",
		"01101100",
		"00000000"
	);
	constant bitmap_Xu: glyph_bitmap := (
		"10000010",
		"01000100",
		"00101000",
		"00010000",
		"00101000",
		"01000100",
		"10000010",
		"00000000"
	);
	constant bitmap_Yu: glyph_bitmap := (
		"10000010",
		"10000010",
		"01000100",
		"00111000",
		"00010000",
		"00010000",
		"00010000",
		"00000000"
	);
	constant bitmap_Zu: glyph_bitmap := (
		"11111110",
		"00000100",
		"00001000",
		"00010000",
		"00100000",
		"01000000",
		"11111110",
		"00000000"
	);
	
	constant bitmap_SPACE: glyph_bitmap := (
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000"
	);
	constant bitmap_EXCLAMATION_MARK: glyph_bitmap := (
		"00110000",
		"00110000",
		"00110000",
		"00110000",
		"00000000",
		"00110000",
		"00110000",
		"00000000"
	);
	constant bitmap_DOUBLE_QUOTE: glyph_bitmap := (
		"00101000",
		"00101000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000"
	);
	constant bitmap_HASH: glyph_bitmap := (
		"00101000",
		"00101000",
		"11111110",
		"00101000",
		"11111110",
		"00101000",
		"00101000",
		"00000000"
	);
	constant bitmap_DOLLAR: glyph_bitmap := (
		"00010000",
		"01111100",
		"10000000",
		"01111100",
		"00000010",
		"01111100",
		"00010000",
		"00000000"
	);
	constant bitmap_PERCENT: glyph_bitmap := (
		"11000010",
		"11000100",
		"00001000",
		"00010000",
		"00100000",
		"01000110",
		"10000110",
		"00000000"
	);
	constant bitmap_AMPERSAND: glyph_bitmap := (
		"01111000",
		"10000100",
		"01001000",
		"00110000",
		"01001010",
		"10000100",
		"01111010",
		"00000000"
	);
	constant bitmap_SINGLE_QUOTE: glyph_bitmap := (
		"00100000",
		"00100000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000"
	);
	constant bitmap_OPEN_BRACKET: glyph_bitmap := (
		"00001000",
		"00010000",
		"00100000",
		"00100000",
		"00100000",
		"00010000",
		"00001000",
		"00000000"
	);
	constant bitmap_CLOSED_BRACKET: glyph_bitmap := (
		"00100000",
		"00010000",
		"00001000",
		"00001000",
		"00001000",
		"00010000",
		"00100000",
		"00000000"
	);
	constant bitmap_ASTERISK: glyph_bitmap := (
		"00010000",
		"01010100",
		"00111000",
		"01010100",
		"00010000",
		"00000000",
		"00000000",
		"00000000"
	);
	constant bitmap_PLUS: glyph_bitmap := (
		"00010000",
		"00010000",
		"00010000",
		"11111110",
		"00010000",
		"00010000",
		"00010000",
		"00000000"
	);
	constant bitmap_COMMA: glyph_bitmap := (
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00010000",
		"00010000",
		"00100000",
		"00000000"
	);
	constant bitmap_MINUS: glyph_bitmap := (
		"00000000",
		"00000000",
		"00000000",
		"11111110",
		"00000000",
		"00000000",
		"00000000",
		"00000000"
	);
	constant bitmap_DOT: glyph_bitmap := (
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"01100000",
		"01100000",
		"00000000"
	);
	constant bitmap_FORWARD_SLASH: glyph_bitmap := (
		"00000010",
		"00000100",
		"00001000",
		"00010000",
		"00100000",
		"01000000",
		"10000000",
		"00000000"
	);
	constant bitmap_0: glyph_bitmap := (
		"01111100",
		"10000110",
		"10001010",
		"10010010",
		"10100010",
		"11000010",
		"01111100",
		"00000000"
	);
	constant bitmap_1: glyph_bitmap := (
		"00010000",
		"00110000",
		"00010000",
		"00010000",
		"00010000",
		"00010000",
		"00010000",
		"00000000"
	);
	constant bitmap_2: glyph_bitmap := (
		"01111110",
		"10000010",
		"00000100",
		"00011000",
		"01100000",
		"10000000",
		"11111110",
		"00000000"
	);
	constant bitmap_3: glyph_bitmap := (
		"01111100",
		"10000010",
		"00000010",
		"00111100",
		"00000010",
		"10000010",
		"01111100",
		"00000000"
	);
	constant bitmap_4: glyph_bitmap := (
		"00100010",
		"01000010",
		"10000010",
		"01111110",
		"00000010",
		"00000010",
		"00000010",
		"00000000"
	);
	constant bitmap_5: glyph_bitmap := (
		"00111110",
		"01000000",
		"10000000",
		"11111100",
		"00000010",
		"00000010",
		"01111100",
		"00000000"
	);
	constant bitmap_6: glyph_bitmap := (
		"01111100",
		"10000010",
		"10000000",
		"11111100",
		"10000010",
		"10000010",
		"01111100",
		"00000000"
	);
	constant bitmap_7: glyph_bitmap := (
		"11111110",
		"10000010",
		"00000100",
		"00001000",
		"00010000",
		"00100000",
		"0100000",
		"00000000"
	);
	constant bitmap_8: glyph_bitmap := (
		"01111100",
		"10000010",
		"10000010",
		"01111100",
		"10000010",
		"10000010",
		"01111100",
		"00000000"
	);
	constant bitmap_9: glyph_bitmap := (
		"01111100",
		"10000010",
		"10000010",
		"01111110",
		"00000010",
		"00000010",
		"01111100",
		"00000000"
	);
	constant bitmap_COLON: glyph_bitmap := (
		"00000000",
		"01100000",
		"01100000",
		"00000000",
		"00000000",
		"01100000",
		"01100000",
		"00000000"
	);
	constant bitmap_SEMICOLON: glyph_bitmap := (
		"00000000",
		"01100000",
		"01100000",
		"00000000",
		"00000000",
		"01100000",
		"11000000",
		"00000000"
	);
	constant bitmap_LESS_THAN: glyph_bitmap := (
		"00000110",
		"00011000",
		"01100000",
		"10000000",
		"01100000",
		"00011000",
		"00000110",
		"00000000"
	);
	constant bitmap_EQUAL: glyph_bitmap := (
		"00000000",
		"00000000",
		"11111110",
		"00000000",
		"11111110",
		"00000000",
		"00000000",
		"00000000"
	);
	constant bitmap_GREATER_THAN: glyph_bitmap := (
		"11000000",
		"00110000",
		"00001100",
		"00000010",
		"00001100",
		"00110000",
		"11000000",
		"00000000"
	);
	constant bitmap_QUESTION_MARK: glyph_bitmap := (
		"01111100",
		"10000010",
		"00000100",
		"00001000",
		"00010000",
		"00000000",
		"00010000",
		"00000000"
	);
	constant bitmap_AT: glyph_bitmap := (
		"01111100",
		"10000010",
		"10011010",
		"10100110",
		"10011100",
		"10000010",
		"01111100",
		"00000000"
	);
	constant bitmap_OPEN_SQUARE_BRACKET: glyph_bitmap := (
		"11111000",
		"10000000",
		"10000000",
		"10000000",
		"10000000",
		"10000000",
		"11111000",
		"00000000"
	);
	constant bitmap_BACK_SLASH: glyph_bitmap := (
		"10000000",
		"01000000",
		"00100000",
		"00010000",
		"00001000",
		"00000100",
		"00000010",
		"00000000"
	);
	constant bitmap_CLOSED_SQUARE_BRACKET: glyph_bitmap := (
		"11111000",
		"00001000",
		"00001000",
		"00001000",
		"00001000",
		"00001000",
		"11111000",
		"00000000"
	);
	constant bitmap_CARET: glyph_bitmap := (
		"00010000",
		"00101000",
		"01000100",
		"10000010",
		"00000000",
		"00000000",
		"00000000",
		"00000000"
	);
	constant bitmap_UNDERSCORE: glyph_bitmap := (
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"11111110",
		"00000000"
	);
	constant bitmap_BACKTICK: glyph_bitmap := (
		"01000000",
		"00100000",
		"00010000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000"
	);
	constant bitmap_OPEN_CURLY_BRACKET: glyph_bitmap := (
		"00011100",
		"00100000",
		"00100000",
		"11000000",
		"00100000",
		"00100000",
		"00011100",
		"00000000"
	);
	constant bitmap_BAR: glyph_bitmap := (
		"00010000",
		"00010000",
		"00010000",
		"00010000",
		"00010000",
		"00010000",
		"00010000",
		"00000000"
	);
	constant bitmap_CLOSED_CURLY_BRACKET: glyph_bitmap := (
		"01110000",
		"00001000",
		"00001000",
		"00000110",
		"00001000",
		"00001000",
		"01110000",
		"00000000"
	);
	constant bitmap_TILDE: glyph_bitmap := (
		"00000000",
		"00000000",
		"01100000",
		"10010010",
		"00001100",
		"00000000",
		"00000000",
		"00000000"
	);

	constant uppercase_literals: glyph_bitmap_vector(0 to 25) := (
		bitmap_Au,
		bitmap_Bu,
		bitmap_Cu,
		bitmap_Du,
		bitmap_Eu,
		bitmap_Fu,
		bitmap_Gu,
		bitmap_Hu,
		bitmap_Iu,
		bitmap_Ju,
		bitmap_Ku,
		bitmap_Lu,
		bitmap_Mu,
		bitmap_Nu,
		bitmap_Ou,
		bitmap_Pu,
		bitmap_Qu,
		bitmap_Ru,
		bitmap_Su,
		bitmap_Tu,
		bitmap_Uu,
		bitmap_Vu,
		bitmap_Wu,
		bitmap_Xu,
		bitmap_Yu,
		bitmap_Zu
	);
	constant numerals: glyph_bitmap_vector(0 to 9) := (
		bitmap_0,
		bitmap_1,
		bitmap_2,
		bitmap_3,
		bitmap_4,
		bitmap_5,
		bitmap_6,
		bitmap_7,
		bitmap_8,
		bitmap_9
	);
	constant punctuation_group_1: glyph_bitmap_vector(0 to 15) := (
		bitmap_SPACE,
		bitmap_EXCLAMATION_MARK,
		bitmap_DOUBLE_QUOTE,
		bitmap_HASH,
		bitmap_DOLLAR,
		bitmap_PERCENT,
		bitmap_AMPERSAND,
		bitmap_SINGLE_QUOTE,
		bitmap_OPEN_BRACKET,
		bitmap_CLOSED_BRACKET,
		bitmap_ASTERISK,
		bitmap_PLUS,
		bitmap_COMMA,
		bitmap_MINUS,
		bitmap_DOT,
		bitmap_FORWARD_SLASH
	);
	constant punctuation_group_2: glyph_bitmap_vector(0 to 6) := (
		bitmap_COLON,
		bitmap_SEMICOLON,
		bitmap_LESS_THAN,
		bitmap_EQUAL,
		bitmap_GREATER_THAN,
		bitmap_QUESTION_MARK,
		bitmap_AT
	);
	constant punctuation_group_3: glyph_bitmap_vector(0 to 5) := (
		bitmap_OPEN_SQUARE_BRACKET,
		bitmap_BACK_SLASH,
		bitmap_CLOSED_SQUARE_BRACKET,
		bitmap_CARET,
		bitmap_UNDERSCORE,
		bitmap_BACKTICK
	);
	constant punctuation_group_4: glyph_bitmap_vector(0 to 3) := (
		bitmap_OPEN_CURLY_BRACKET,
		bitmap_BAR,
		bitmap_CLOSED_CURLY_BRACKET,
		bitmap_TILDE
	);
	
    constant bitmap_charset: glyph_bitmap_vector(0 to 255) := (
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,
	    bitmap_UNREPRESENTABLE,

	    bitmap_SPACE,
	    bitmap_EXCLAMATION_MARK,
	    bitmap_DOUBLE_QUOTE,
	    bitmap_HASH,
	    bitmap_DOLLAR,
	    bitmap_PERCENT,
	    bitmap_AMPERSAND,
	    bitmap_SINGLE_QUOTE,
	    bitmap_OPEN_BRACKET,
	    bitmap_CLOSED_BRACKET,
	    bitmap_ASTERISK,
	    bitmap_PLUS,
	    bitmap_COMMA,
	    bitmap_MINUS,
	    bitmap_DOT,
	    bitmap_FORWARD_SLASH,

	    bitmap_0,
	    bitmap_1,
	    bitmap_2,
	    bitmap_3,
	    bitmap_4,
	    bitmap_5,
	    bitmap_6,
	    bitmap_7,
	    bitmap_8,
	    bitmap_9,

	    bitmap_COLON,
	    bitmap_SEMICOLON,
	    bitmap_LESS_THAN,
	    bitmap_EQUAL,
	    bitmap_GREATER_THAN,
	    bitmap_QUESTION_MARK,
	    bitmap_AT,

	    bitmap_Au,
	    bitmap_Bu,
	    bitmap_Cu,
	    bitmap_Du,
	    bitmap_Eu,
	    bitmap_Fu,
	    bitmap_Gu,
	    bitmap_Hu,
	    bitmap_Iu,
	    bitmap_Ju,
	    bitmap_Ku,
	    bitmap_Lu,
	    bitmap_Mu,
	    bitmap_Nu,
	    bitmap_Ou,
	    bitmap_Pu,
	    bitmap_Qu,
	    bitmap_Ru,
	    bitmap_Su,
	    bitmap_Tu,
	    bitmap_Uu,
	    bitmap_Vu,
	    bitmap_Wu,
	    bitmap_Xu,
	    bitmap_Yu,
	    bitmap_Zu,

	    bitmap_OPEN_SQUARE_BRACKET,
	    bitmap_BACK_SLASH,
	    bitmap_CLOSED_SQUARE_BRACKET,
	    bitmap_CARET,
	    bitmap_UNDERSCORE,
	    bitmap_BACKTICK,

	    bitmap_Au,
	    bitmap_Bu,
	    bitmap_Cu,
	    bitmap_Du,
	    bitmap_Eu,
	    bitmap_Fu,
	    bitmap_Gu,
	    bitmap_Hu,
	    bitmap_Iu,
	    bitmap_Ju,
	    bitmap_Ku,
	    bitmap_Lu,
	    bitmap_Mu,
	    bitmap_Nu,
	    bitmap_Ou,
	    bitmap_Pu,
	    bitmap_Qu,
	    bitmap_Ru,
	    bitmap_Su,
	    bitmap_Tu,
	    bitmap_Uu,
	    bitmap_Vu,
	    bitmap_Wu,
	    bitmap_Xu,
	    bitmap_Yu,
	    bitmap_Zu,

	    bitmap_OPEN_CURLY_BRACKET,
	    bitmap_BAR,
	    bitmap_CLOSED_CURLY_BRACKET,
	    bitmap_TILDE,
	    
		bitmap_UNREPRESENTABLE, -- "DEL"
	    
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE,
		bitmap_UNREPRESENTABLE
    );

	function get_gb(arg: character) return glyph_bitmap;
	function get_gbv(arg: string) return glyph_bitmap_vector;
	
end package;

package body glyph_util is
	function get_gb(arg: character) return glyph_bitmap is -- "get_glyph_bitmap"
    begin
  		return bitmap_charset(character'pos(arg));
	end function;

	function get_gbv(arg: string) return glyph_bitmap_vector is -- "get_glyph_bitmap_vector"
        variable retval: glyph_bitmap_vector(arg'range);
	begin
        for i in arg'range loop
            retval(i) := get_gb(arg(i));
        end loop;
        return retval;
	end function;

end package body;

