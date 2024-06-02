\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  r4^\partAs h' g8 g r a16 h
  h8 e, r4 r8 e16 e g8 fis16 e
  ais4 ais8 h16 cis cis8 fis, r fis
}

text = \lyricmode {
  Vi -- le -- scit mi -- hi
  mun -- dus, be -- a -- tis -- si -- ma
  lux coe -- lo re -- ful -- gens cor
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
