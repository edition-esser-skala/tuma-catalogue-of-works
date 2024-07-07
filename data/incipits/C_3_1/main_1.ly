\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
  r2^\partSc r8 e g c
  e4 e r2
  r8 c c c c4 h
}

text = \lyricmode {
  O al -- ti --
  tu -- do
  di -- vi -- ti -- a -- rum
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
