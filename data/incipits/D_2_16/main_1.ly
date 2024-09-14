\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  r4 e' c a
  d c8 c h2
  c4 r8 c h h h h
  h4 c8 c h2
  a4
}

text = \lyricmode {
  Me -- men -- to
  Do -- mi -- ne Da --
  vid
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
