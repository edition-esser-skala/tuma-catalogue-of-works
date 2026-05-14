\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 3/4 \tempoMarkup "Menuet · Allegro assai"
    e'4 c a
    a'2 h8.\trill a32 h
    c4 d8( c) h( a)
    gis4 e r
    f-! g8( f e d)
    e4-! d8( c h a)
    h4 fis gis
    a2 r4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 3/4 \tempoMarkup "Menuet · Allegro assai"
    e'4 c a
    a'2 h8.\trill a32 h
    c4 d8( c) h( a)
    gis4 e r
    f-! g8( f e d)
    e4-! d8( c h a)
    h4 fis gis
    a2 r4
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key a \minor \time 3/4 \tempoMarkup "Menuet · Allegro assai"
    a2 r4
    a' c gis
    a f2
    e4 d c
    d2 r4
    c2 r4
    d2 e4
    a, e' a
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
