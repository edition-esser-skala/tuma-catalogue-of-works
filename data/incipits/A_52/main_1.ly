\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  a'4.^\partSc a8 a2
  r8 ais ais h16[ cis] d2
  r8 dis dis dis e4
}

text = \lyricmode {
  Ky -- ri -- e
  e -- le -- i -- son,
  e -- le -- i -- son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
