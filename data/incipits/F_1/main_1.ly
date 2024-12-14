\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
  d4.^\partSc d8 a'4 a
  b a8[ g] a4 d,8 d'~
  d4 cis d c8[ b]
}

text = \lyricmode {
  Sta -- bat ma -- ter
  do -- lo -- ro -- sa, do --
  lo -- ro -- \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
