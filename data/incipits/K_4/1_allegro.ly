\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Allegro ma non presto"
    r8 d' g4 r8 e g4
    r8 d g4~ g8 a16 e \appoggiatura g8 fis4
    g8 h d4 r8 h d4
    d4. cis8 d16 d, fis a d a g fis
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Allegro ma non presto"
    r4 r8 d' e e, r e'
    d d, r d' e c4 h16 a
    h4 r16 a' h c h( a h8) r16 a h c
    h d, a'8 g16 fis g a fis4 r8 d
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Allegro ma non presto"
    g'4 r16 g, a h c h c8 r16 c d e
    h a h8 r16 h a g c4 d8 d,
    g g' fis4 g fis
    g8 fis e4 d fis
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
