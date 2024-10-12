\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key d \minor \time 4/4 \autoBeamOff
  d4^\partTs cis d8 a b a16[ g]
  a8. d,16 d8 d g16[ a] b8 b a16[ g]
  f[ e] d8 r4 r2
}

text = \lyricmode {
  Con -- fi -- te -- bor ti -- bi
  Do -- mi -- ne in to -- to cor -- de
  me -- o
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
