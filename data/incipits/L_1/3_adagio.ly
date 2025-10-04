\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 3/4 \tempoMarkup "Adagio"
    e'4 a, a'~
    a gis4. fis16( \hA gis)
    a2 f4~
    f e8 d c h
    cis2.
    d4 a8 h c d
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 3/4 \tempoMarkup "Adagio"
    R2.
    h'4 e, d'
    c2 c4
    h2.
    b4 a8 g f e
    f4 a r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \minor \time 3/4 \tempoMarkup "Adagio"
    R2.*2
    a'4 a, a'
    gis2.
    g
    f
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
        \set Staff.instrumentName = "b"
        \Continuo
      }
    >>
  >>
}
