\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 4/4 \tempoMarkup "Larghetto"
  r2^\partVi g'4. g8
  a2 h4 c~
  c b2 as4 \gotoBar "8"
  \clef bass d,,4.^\partBs d8 \clef tenor g4.^\partTs g8
  a4. a8 h4 c
}

text = \lyricmode {
  \skips 7
  Sta -- bat Sta -- bat
  ma -- ter do -- "lo -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
