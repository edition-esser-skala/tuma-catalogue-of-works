\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Adagio"
    a''8. a16 a8 a, d2
    \sbOn \tuplet 3/2 8 { fis,16\p h cis d cis h fis' h, cis d cis h } gis'8.\f gis16 h8 d,
    cis2 \tuplet 3/2 8 { e,16\p a h cis h a e' a, h cis h a }
    dis8.\f dis16 fis8 a, gis8. gis16 h8 d,
    cis8. e16 \tuplet 3/2 8 { a\p cis h cis e d } e4 e8( d)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Adagio"
    fis'4 e8 e, fis2
    r d'4 d8 h
    a2 r
    a4 dis, e4. h8
    a4 \tuplet 3/2 8 { \sbOn cis16\p a' gis a cis h \sbOff } cis4 fis
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key d \major \time 4/4 \tempoMarkup "Adagio"
    d4 e h2
    r h4 gis'
    e2 r
    a, h4 e,
    e r a'2\p
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "Adagio"
    d4 cis h2
    r e4 e,
    a2 r
    fis e4 gis
    a r \tuplet 3/2 8 { \sbOn a16\f a' h cis h a d, d' e fis e d }
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
