\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/4 \tempoMarkup "Largo"
    h''8 e, dis4.\trill cis16 \hA dis
    e4 h r
    c8 a \grace a gis4.\trill fis16 \hA gis
    a4 dis, r
    h' e, r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/4 \tempoMarkup "Largo"
    g'4 a2
    h r4
    e, d2
    e4 a r
    e r g8 fis
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key e \minor \time 3/4 \tempoMarkup "Largo"
    e,4 fis2
    g r4
    a h2
    c4 c h8 a
    g4 g'8 fis e d
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
