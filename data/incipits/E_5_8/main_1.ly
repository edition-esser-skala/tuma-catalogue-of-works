\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
  c'4 d c8 c c c
  c h a8. a16 gis4 r
  r8 e' e16[ d] c[ h] c8 a c8. c16
  h4
}

text = \lyricmode {
  Sub tu -- um prae -- si -- di --
  um con -- fu -- gi -- mus,
  San -- _ cta De -- i Ge -- ni --
  trix.
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
