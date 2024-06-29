\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  d'4^\partSc d8 d d d d[ cis]
  d d e e f f,16 f f8[ e]
  f4 a8 a a4 a8 a
}

text = \lyricmode {
  Pa -- trem o -- mni -- po -- ten --
  tem, fa -- cto -- rem coe -- li et ter --
  rae, vi -- si -- bi -- li -- um
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
