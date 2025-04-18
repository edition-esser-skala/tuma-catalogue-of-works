\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  r2^\partSc a'
  b4. b8 a4 a8 a
  d4 d8 d cis4 e~
}

text = \lyricmode {
  Lau --
  da -- mus te, be -- ne --
  di -- ci -- mus te, "ad -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
