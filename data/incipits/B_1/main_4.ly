\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  as'4^\partSc as8 as b4 b8 b
  b4. b8 b4 as
  r2 r4 r8 as
  as4. as8 as2
}

text = \lyricmode {
  Do -- mi -- ne, Do -- mi -- ne
  Je -- su Chri -- ste,
  Rex
  glo -- ri -- ae,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
