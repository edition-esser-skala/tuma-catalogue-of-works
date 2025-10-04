\version "2.24.2"
\include "header.ly"

OrganoR = \relative c' {
  \clef treble
  \key e \minor \time 2/4 \tempoMarkup "Andante con moto"
  \partial 4 h4 e4. fis8
  g4. a8
  h c16 h a4~
  a16 c h a g4~
  g8 a16 g fis8 a
  d4~ d16 f e d
}

OrganoL = \relative c' {
  \clef treble
  \key e \minor \time 2/4 \tempoMarkup "Andante con moto"
  \partial 4 r4 r8 h e4~
  e8 fis g4~
  g~ g8 fis16 e
  dis4~ dis16 fis e \hA dis
  cis4 d
  d8 e16 fis gis4
}

Pedale = \relative c {
  \clef bass
  \key e \minor \time 2/4 \tempoMarkup "Andante con moto"
  \partial 4 r4 R2*3
  r4 r8 e
  a4~ a8 g
  fis4 e
}

\score {
  <<
    \new PianoStaff \with { \setGroupDistance #11 #11 } <<
      \set PianoStaff.instrumentName = "Man."
      \new Staff { \OrganoR }
      \new Staff { \OrganoL }
    >>
    \new Staff {
      \set Staff.instrumentName = "Ped."
      \Pedale
    }
  >>
}
