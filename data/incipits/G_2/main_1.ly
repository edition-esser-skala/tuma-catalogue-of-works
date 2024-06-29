\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  d'2~^\partSc d4 b
  g g r es'~
  es d2 c4~
  c h c c~
  c b8[ a] b2
}

text = \lyricmode {
  Sta -- bat
  ma -- ter do --
  lo -- ro --
  _ sa, do --
  lo -- "ro -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
