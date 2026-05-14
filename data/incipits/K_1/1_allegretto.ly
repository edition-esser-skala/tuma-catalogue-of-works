\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 3/4 \tempoMarkup "Allegretto"
    e'2 r4
    f2 r4
    f2 r4
    e2 r4
    e2 r4
    d2 r4
    d2 r4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 3/4 \tempoMarkup "Allegretto"
    r8 c' c c a c
    r c c c f, c'
    r h h h g h
    r h h h e, h'
    r a a a f a
    r a a a d, a'
    r gis gis gis e \hA gis
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \minor \time 3/4 \tempoMarkup "Allegretto"
    a2 r4
    d2 r4
    g,2 r4
    c,2 r4
    f2 r4
    h2 r4
    e,2 r4
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
