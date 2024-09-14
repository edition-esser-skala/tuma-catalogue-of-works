\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 4/4 \tempoMarkup "Allegro"
  d8 d'4 cis8 d g4 fis8
  e a16 d, a' c h8 cis32 h a16 d8 d,, g'~
  g16 e fis d e4\trill d4*1/2 \clef soprano \autoBeamOff d4^\partSs cis8
  d h cis[ d] cis d d[ cis]
}

text = \lyricmode {
  \skips 23
  Ky -- ri --
  e e -- lei -- son, e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
