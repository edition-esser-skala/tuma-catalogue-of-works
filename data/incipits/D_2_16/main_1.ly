\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  r8^\partTs a e'4~ e16[ f d e] c4~
  c16[ d h c] a4 a8 h16 c h8. a16
  gis8 h e4~ e16[ f d e] cis4
}

text = \lyricmode {
  Lau -- da -- _
  te pu -- e -- ri Do -- mi --
  num, lau -- da -- \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
