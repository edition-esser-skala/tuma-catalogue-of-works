\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key a \minor \time 2/4 \tempoMarkup "Allegro"
    \partial 8 a''8 a,16 c h a h8 e
    c a r e'\p
    f( e) e( dis)
    \grace dis e4 r8 e,\f
    fis16 a gis fis gis h a gis
    a8 c! r h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key a \minor \time 2/4 \tempoMarkup "Allegro"
    \partial 8 r8 R2
    r8 c'16 a a'8 r
    c, h a4\trill
    r8 gis16 e e'4
    R2
    r8 c,!16 a a'8 r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key a \minor \time 2/4 \tempoMarkup "Allegro"
    \partial 8 r8 r a'4 gis8
    a4 r8 gis
    a g f4
    e r8 cis
    d4 h
    a r8 g'!
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
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
  >>
}
