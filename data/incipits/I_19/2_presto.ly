\version "2.24.2"
\include "header.ly"

Cello = {
  \relative c' {
    \clef tenor
    \key a \major \tempoMarkup "Presto capriccio"
    r8 e e
    cis d16 e fis8
    h, e e
    a, a'4~
    a8 gis16\trill fis gis8~
    gis cis, fis~
    fis e16\trill d e8
    e a, d
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \major \time 3/8 \tempoMarkup "Presto capriccio"
    R4.*2
    r8 e e
    cis d16 e fis8
    h, e e
    a, a' a
    gis4.
    fis,8 fis' fis
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
