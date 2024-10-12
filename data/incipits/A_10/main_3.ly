\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  h'4^\partSc e,8 e' c h h[ a]
  h h h h h a16 g \grace g8 fis4
  g r r d'
}

text = \lyricmode {
  Pa -- trem o -- mni -- po -- ten --
  tem, fa -- cto -- rem coe -- li et ter --
  rae, "De -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
