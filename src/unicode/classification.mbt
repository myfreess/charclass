///|
/// Selects control characters, which are the non-printing characters of
/// the Latin-1 subset of Unicode
pub fn is_control(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    Control => true
    _ => false
  }
}

///|
/// Returns 'True' for any Unicode space character, and the control
/// characters \t, \n, \r, \f, \v.
pub fn is_space(this : Char) -> Bool {
  let uc = this.to_int().reinterpret_as_uint()
  if uc <= 0x377U {
    uc == 32 || uc - 0x9 <= 4 || uc == 0xA0
  } else {
    GeneralCategory::of(this) is Space
  }
}

///|
pub fn is_alphabetic(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    UppercaseLetter
    | LowercaseLetter
    | TitlecaseLetter
    | ModifierLetter
    | OtherLetter => true
    _ => false
  }
}

///|
pub fn is_number(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    DecimalNumber | LetterNumber | OtherNumber => true
    _ => false
  }
}

///|
pub fn is_alphanum(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    UppercaseLetter
    | LowercaseLetter
    | TitlecaseLetter
    | ModifierLetter
    | OtherLetter
    | DecimalNumber
    | LetterNumber
    | OtherNumber => true
    _ => false
  }
}

///|
pub fn is_punctuation(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    ConnectorPunctuation
    | DashPunctuation
    | OpenPunctuation
    | ClosePunctuation
    | InitialQuote
    | FinalQuote
    | OtherPunctuation => true
    _ => false
  }
}

///|
pub fn is_symbol(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    MathSymbol | CurrencySymbol | ModifierSymbol | OtherSymbol => true
    _ => false
  }
}

///|
pub fn is_mark(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    NonSpacingMark | SpacingCombiningMark | EnclosingMark => true
    _ => false
  }
}

///|
pub fn is_separator(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    Space | LineSeparator | ParagraphSeparator => true
    _ => false
  }
}

///|
/// https://en.wikipedia.org/wiki/Whitespace_character
pub fn is_whitespace(this : Char) -> Bool {
  // Check if the character is a Unicode whitespace character
  match this {
    // CHARACTER TABULATION
    '\u{0009}'
    // LINE FEED
    | '\u{000A}'
    // LINE TABULATION
    | '\u{000B}'
    // FORM FEED
    | '\u{000C}'
    // CARRIAGE RETURN
    | '\u{000D}'
    // SPACE
    | '\u{0020}'
    // NEXT LINE
    | '\u{0085}'
    // NO-BREAK SPACE
    | '\u{00A0}'
    // OGHAM SPACE MARK
    | '\u{1680}'
    // EN QUAD
    | '\u{2000}'
    // EM QUAD
    | '\u{2001}'
    // EN SPACE
    | '\u{2002}'
    // EM SPACE
    | '\u{2003}'
    // THREE-PER-EM SPACE
    | '\u{2004}'
    // FOUR-PER-EM SPACE
    | '\u{2005}'
    // SIX-PER-EM SPACE
    | '\u{2006}'
    // FIGURE SPACE
    | '\u{2007}'
    // PUNCTUATION SPACE
    | '\u{2008}'
    // THIN SPACE
    | '\u{2009}'
    // HAIR SPACE
    | '\u{200A}'
    // LINE SEPARATOR
    | '\u{2028}'
    // PARAGRAPH SEPARATOR
    | '\u{2029}'
    // NARROW NO-BREAK SPACE
    | '\u{202F}'
    // MEDIUM MATHEMATICAL SPACE
    | '\u{205F}'
    // IDEOGRAPHIC SPACE
    | '\u{3000}' => true
    _ => false
  }
}
