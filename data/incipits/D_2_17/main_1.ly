\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 4/4 \autoBeamOff
  d2^\partSc a'4 a
  b a8 g a4 d,8 d'
  d d cis cis d4 c8 b
}

text = \lyricmode {
  Me -- men -- to,
  Do -- mi -- ne, Da -- vid et
  o -- mnis man -- sue -- tu -- di -- nis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
