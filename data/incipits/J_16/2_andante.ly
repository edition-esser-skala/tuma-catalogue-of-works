\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key d \dorian \time 2/4 \tempoMarkup "Andante"
    \tuplet 3/2 8 { a''16\p g f } \appoggiatura e8 d4 cis8 %120
    d16( f) \appoggiatura f8 e4 b'8
    \tuplet 3/2 8 { a16 g f } \appoggiatura e8 d4 cis8
    d16( f) \appoggiatura f8 e4 b'8
    cis,( d4) f8
    gis, a4 a16 d
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key d \dorian \time 2/4 \tempoMarkup "Andante"
    \tuplet 3/2 8 { a''16\p g f } \appoggiatura e8 d4 cis8
    d16( f) \appoggiatura f8 e4 b'8
    \tuplet 3/2 8 { a16 g f } \appoggiatura e8 d4 cis8
    d16( f) \appoggiatura f8 e4 b'8
    cis,( d4) f8
    gis, a4 a16 d
  }
}

Viola = {
  \relative c' {
    \clef alto
    \twofourtime \key d \dorian \time 2/4 \tempoMarkup "Andante"
    f8\p a g e
    a b a g
    f a g e
    a b a \hA b
    a a a a
    e e e f
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key d \dorian \time 2/4 \tempoMarkup "Andante"
    d8 f e a
    f g a cis,
    d f e a
    f g a g
    g f f d
    d cis cis d
  }
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "vla"
        \Viola
      }
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
  >>
}
