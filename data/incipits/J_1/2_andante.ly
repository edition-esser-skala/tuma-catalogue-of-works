\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key e \minor \time 2/4 \tempoMarkup "Andante"
    e'8\p h4 c8
    h e,4 g8
    fis a4 dis,8
    e4 r
    g'8 d!4 e8
    d g,4 h8
    a c4 fis,8
    g4 r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key e \minor \time 2/4 \tempoMarkup "Andante"
    g'4\p r8 a
    g4 r
    \appoggiatura g fis2\trill
    e4 r
    h' r8 c
    h4 r
    \appoggiatura h a2\trill
    g4 r
  }
}

Viola = {
  \relative c' {
    \clef alto
    \twofourtime \key e \minor \time 2/4 \tempoMarkup "Andante"
    e,4\p r
    e g
    a h
    e, r
    g r
    g e'
    c d
    g, r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key e \minor \time 2/4 \tempoMarkup "Andante"
    R2*3
    r8 e'\p e,16( dis) e8
    R2*3
    r8 g g,16( fis) g8
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
