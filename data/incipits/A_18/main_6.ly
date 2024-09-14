\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  r4^\partTs c8 f d c r f
  d c16 d b8 a a g c b
  b a d c h c16[ d] d4
  c
}

text = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta mun -- di: Mi -- se --
  re -- re, mi -- se -- re -- re no --
  bis.
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
