\version "2.24.2"
\include "header.ly"

Cello = {
  \relative c' {
    \clef tenor
    \key a \major \time 4/4 \tempoMarkup "Andante"
    a8 a~ a16. d32 cis16. h32 a8 a~ a16. d32 cis16. h32
    a16. e'32 fis16. a,32 \appoggiatura e'8 d4\trill cis16. e,32 fis16. a,32 \appoggiatura e'8 d4\trill
    cis cis'8 cis~ \tuplet 3/2 8 { \sbOn cis16 e d cis h a e e' d cis h a }
    h8 h~ \tuplet 3/2 8 { h16 cis dis e fis gis gis fis e e dis cis cis h a a gis fis }
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \tempoMarkup "Andante"
    a'8 a, a' gis fis fis, fis' e16 d
    cis8 d16. cis32 h8 e, a d16. cis32 h8 e
    a, cis16. e32 a4 a8 a, r a'
    e e, r h' e e, r dis'16 e
  }
}

\score {
  <<
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = "vlc"
        \Cello
      }
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
