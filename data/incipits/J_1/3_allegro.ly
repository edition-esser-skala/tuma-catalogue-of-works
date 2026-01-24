\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 3/8 \tempoMarkup "Allegro"
    d'8 g,4
    c8 fis,4
    e8 a g
    fis d r
    d-! g( fis)
    d-! h'( a)
    d,-! c'( h)
    \appoggiatura h a4 r8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 3/8 \tempoMarkup "Allegro"
    d'8 g,4
    c8 fis,4
    e8 a g
    fis d r
    d-! g( fis)
    d-! h'( a)
    d,-! c'( h)
    \appoggiatura h a4 r8
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key g \major \time 3/8 \tempoMarkup "Allegro"
    r8 d d
    e a, a
    c4 e8
    a,4 r8
    r d( c)
    r d d
    r fis g
    fis4 r8
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key g \major \time 3/8 \tempoMarkup "Allegro"
    r8 g' h
    a d16 c d8
    r c c,
    d fis16 a d8
    r h( a)
    r g fis
    r a g
    d fis a
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
