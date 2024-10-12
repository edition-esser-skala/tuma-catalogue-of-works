\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key e \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
  e4^\partAc e fis g8[ a]
  \clef soprano h4^\partSc h cis d8[ e]
  d h e2 d4~
  d c2 h8[ a]
}

text = \lyricmode {
  Ky -- ri -- e "e -"
  Ky -- ri -- e e --
  lei -- son, e -- lei --
  _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
