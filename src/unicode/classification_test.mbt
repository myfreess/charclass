///|
test "control character" {
  assert_true!(is_control('\u{00}'))
  assert_true!(is_control('\u{01}'))
  assert_true!(is_control('\u{02}'))
  assert_true!(is_control('\u{03}'))
  assert_true!(is_control('\u{04}'))
  assert_true!(is_control('\u{05}'))
  assert_true!(is_control('\u{06}'))
  assert_true!(is_control('\u{07}'))
  assert_true!(is_control('\u{7f}'))
}

// https://en.wikipedia.org/wiki/Whitespace_character
///|
test "whitespace" {
  assert_true!(is_whitespace('\u{0009}')) // character tabulation
  assert_true!(is_whitespace('\u{000A}')) // line feed
  assert_true!(is_whitespace('\u{000B}')) // line tabulation
  assert_true!(is_whitespace('\u{000C}')) // form feed
  assert_true!(is_whitespace('\u{000D}')) // carriage return
  assert_true!(is_whitespace('\u{0020}')) // space
  assert_true!(is_whitespace('\u{0085}')) // next line	
  assert_true!(is_whitespace('\u{00A0}')) // no-break space
  assert_true!(is_whitespace('\u{1680}')) // ogham space mark
  assert_true!(is_whitespace('\u{2000}')) // en quad
  assert_true!(is_whitespace('\u{2001}')) // em quad
  assert_true!(is_whitespace('\u{2002}')) // en space
  assert_true!(is_whitespace('\u{2003}')) // em space
  assert_true!(is_whitespace('\u{2004}')) // three-per-em space
  assert_true!(is_whitespace('\u{2005}')) // four-per-em space
  assert_true!(is_whitespace('\u{2006}')) // six-per-em space
  assert_true!(is_whitespace('\u{2007}')) // figure space	
  assert_true!(is_whitespace('\u{2008}')) // punctuation space
  assert_true!(is_whitespace('\u{2009}')) // thin space
  assert_true!(is_whitespace('\u{200A}')) // hair space
  assert_true!(is_whitespace('\u{2028}')) // line separator
  assert_true!(is_whitespace('\u{2029}')) // paragraph separator
  assert_true!(is_whitespace('\u{202F}')) // narrow no-break space
  assert_true!(is_whitespace('\u{205F}')) // medium mathematical space
  assert_true!(is_whitespace('\u{3000}')) // ideographic space

  // false tests
  assert_false!(is_whitespace('\u{180E}')) // mongolian vowel separator
  assert_false!(is_whitespace('\u{200B}')) // zero width space
  assert_false!(is_whitespace('\u{200C}')) // zero width non-joiner
  assert_false!(is_whitespace('\u{200D}')) // zero width joiner
  assert_false!(is_whitespace('\u{2060}')) // word joiner
  assert_false!(is_whitespace('\u{FEFF}')) // zero width non-breaking space
  assert_false!(is_whitespace('D'))
  assert_false!(is_whitespace('G'))
}
