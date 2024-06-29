\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
  r8^\partSs a' f' d d8. cis16 cis8 e
  d16. d32 d8 r a d4 d
  es8. es16 d8 a b b b d
}

text = \lyricmode {
  O ad -- mi -- ra -- bi -- le com --
  mer -- ci -- um! Cre -- a -- tor
  ge -- ne -- ris hu -- ma -- ni a -- "ni -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
